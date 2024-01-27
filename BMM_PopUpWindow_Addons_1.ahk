;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&;
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&;
;*****		       PopUpWindow_Addons
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&;
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&;
class PopUpWindow_Addons extends PopUpWindow_V3	{

	PostMoveWindow( win ){
		local currentWorkArea := MonitorClass.GetMonitorWorkArea( MonitorClass.MonitorPrimary )
		PostMessage, 0xA1 , 2
		While( GetKeyState( "LButton" , "P" ) )
			sleep, 30
		This[ win ].GetPosition()
		if( win = "MainWindow" ){
			if( This.MainWindow.Y <= currentWorkArea.Y && This.MainWindow.W != This.MainWindow.MaxWidth ){
				This.MainWindow.X := currentWorkArea.X
				This.MainWindow.Y := currentWorkArea.Y
				This.MainWindow.W := This.MainWindow.MaxWidth := currentWorkArea.W
				This.MainWindow.H := This.MainWindow.MaxHeight := currentWorkArea.H
				This.Set_WindowPosition_MainWindow()
			}else if( This.W = This.MaxWidth && This.H = This.MaxHeight ){
				This.PostMinSizeWindow( win )
			}
		}
	}
	PostMinSizeWindow( win ){
		if( This[ win ].ToggleWidth )
			This[ win ].W := This[ win ].ToggleWidth
		else
			This[ win ].W := This[ win ].MinWidth
		if( This[ win ].ToggleHeight )
			This[ win ].H := This[ win ].ToggleHeight
		else
			This[ win ].H := This[ win ].MinHeight
		This[ "Set_WindowPosition_" win ]()
	}
	PostMaxSizeWindow( win ){
		local currentWorkArea := MonitorClass.GetMonitorWorkArea( MonitorClass.MonitorPrimary )
		if( win = "MainWindow" ){
			This[win].X := currentWorkArea.X
			This[win].Y := currentWorkArea.Y
			This[win].W := currentWorkArea.W
			This[win].H := currentWorkArea.H
			This[ "Set_WindowPosition_" win ]()
		}else{
			This[win].W := This[win].MaxWidth
			This[win].H := This[win].MaxHeight
			This[ "Set_WindowPosition_" win ]()
		}
	}
	PostMinimizeWindow( win ){
		if( win = "MainWindow" ){
			This.MainWindow.Minimize()
		}
	}
	PostCloseWindow( win ){
		if( win = "MainWindow" )
			ExitApp
		else if( win = "ProjectsMainWindow" ){
			This.ProjectsWindowToggle := 0
			This[ win ].Hide()
		}else if( win = "ElementsMainWindow" ){
			This.ElementsWindowToggle := 0
			This[ win ].Hide()
		}else if( win = "NewProjectWindow" ){
			This.NewProjectWindow := ""
		}else if( win = "LoadProjectWindow" ){
			This.LoadProjectWindow := ""
		}else if( win = "NewWindowWindow" ){
			This.NewWindowWindow := ""
		}else if( win = "NewFunctionWindow" ){
			This.NewFunctionWindow := ""
		}else if( win = "NewCodeInsertWindow" ){
			This.NewCodeInsertWindow := ""
		}
	}
	PostResizeWindow( win ){
		local x , y , w , lw , lh , lx , ly 
		This[win].GetPosition()
		CoordMode, Mouse, Screen 
		While( GetKeyState( "LButton" , "P" ) ){
			MouseGetPos, x , y 
			if( x != lx || y != ly ){
				lx := x , ly := y 
				( ( This[win].W := x - This[win].X ) <= This[win].MinWidth ) ? ( This[win].W := This[win].MinWidth )
				( ( This[win].H := y - This[win].Y ) <= This[win].MinHeight ) ? ( This[win].H := This[win].MinHeight )
				( This[win].W > This[win].MaxWidth ) ? ( This[win].W := This[win].MaxWidth )
				( This[win].H > This[win].MaxHeight ) ? ( This[win].H := This[win].MaxHeight )
				This[win].SetPosition()
				if( lw != This[win].W || lh != This[win].H ){
					lw := This[win].W
					lh := This[win].H
					if( win = "MainWindow" && This[win].W != This[win].MaxWidth && This[win].H != This[win].MaxHeight ){
						This[ win ].ToggleWidth := This[ win ].W 
						This[ win ].ToggleHeight := This[ win ].H
					}
					
					This[ "Set_WindowPosition_" win ]()
				}
			}
		}
		This[ "Set_WindowPosition_" win ]()
	}
	PostAdjustSlider( win , control ){
		if( win = "MainWindow" )
			This.Set_WindowPosition_MainInnerWindow()
		else if( win = "ProjectsMainWindow" )
			This.Set_WindowPosition_ProjectsInnerWindow()
		else if( win = "ElementsMainWindow" )
			This.Set_WindowPosition_ElementsInnerWindow()
	}
	PostToggleTab( wintype , tab ){
		This[ tab ].ToggleState := !This[ tab ].ToggleState
		This[ "Toggle_All_" wintype "Panel_Tabs" ]()
		This[ "Set_Position_" wintype "InnerWindow_Height" ]()
		This[ "Set_" wintype "MainWindow_Sliders" ]()
		;~ ToolTip, % "Tip:`n" tab wintype
	}

}
