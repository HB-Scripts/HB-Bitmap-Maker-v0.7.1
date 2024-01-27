;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class WindowSetupClass extends WindowPositionsClass {
	
	Setup_MainWindow(){
		local currentWorkArea := MonitorClass.GetMonitorWorkArea( MonitorClass.MonitorPrimary )
		local obj := {}
		obj.X 				:= currentWorkArea.X
		obj.Y 				:= currentWorkArea.Y
		obj.W 				:= currentWorkArea.W
		obj.H 				:= currentWorkArea.H
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		obj.Color 			:= "22262a"
		obj.ControlColor 	:= "32363a"
		obj.MinWidth		:= 560
		obj.MinHeight		:= 275
		obj.MaxWidth		:= obj.W
		obj.MaxHeight		:= obj.H
		obj.ToggleWidth		:= obj.MinWidth
		obj.ToggleHeight	:= obj.MinHeight
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		This.MainWindow := New PopUpWindow_V3( "-DPIScale -Caption" , "HB Bitmap Maker v7" ,, obj )
	}
	Setup_MainShellWindow(){
		local obj := {}
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		obj.Color 			:= "880000"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		This.MainShellWindow := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.MainWindow.Hwnd , "MAINSHELLWINDOW" ,, obj )
	}
	Setup_MainInnerWindow(){
		local obj := {}
		;~ obj.W 				:= 600
		obj.W 				:= 2000
		;~ obj.H				:= 600
		obj.H				:= 2000
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.Color 			:= "88FF00"
		;~ obj.Color 			:= "22262a"
		obj.Color 			:= "12161a"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		This.MainInnerWindow := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.MainShellWindow.Hwnd , "MAININNERWINDOW" ,, obj )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	Setup_ProjectsMainWindow(){
		local obj := {}
		obj.W 				:= 639
		;~ obj.X 				:= A_ScreenWidth - obj.W - 20
		obj.X 				:= 130
		obj.Y 				:= 90
		obj.H 				:= 750
		obj.MarginX 		:= 3
		obj.MarginY 		:= 3
		;~ obj.Color 			:= "12161a"
		obj.Color 			:= "660000"
		obj.ControlColor 	:= "32363a"
		obj.MinWidth		:= 190
		obj.MinHeight		:= 55
		obj.MaxWidth		:= obj.W
		obj.MaxHeight		:= obj.H
		obj.ToggleWidth		:= obj.MinWidth
		obj.ToggleHeight	:= obj.MinHeight
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		;~ obj.ProjectsWindowToggle := 0
		This.ProjectsMainWindow := New PopUpWindow_V3( "-DPIScale -Caption +Owner" This.MainWindow.Hwnd , "ProjectsPanel" ,, obj )
	}
	Setup_ProjectsShellWindow(){
		local obj := {}
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		obj.Color 			:= "880000"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		This.ProjectsShellWindow := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsMainWindow.Hwnd , "PROJECTSSHELLWINDOW" ,, obj )
	}
	Setup_ProjectsInnerWindow(){
		local obj := {}
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		obj.W				:= 610
		;~ obj.H				:= 500
		obj.H				:= 900
		obj.Color 			:= "440000"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		This.ProjectsInnerWindow := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsShellWindow.Hwnd , "PROJECTSINNERWINDOW" ,, obj )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	Setup_ElementsMainWindow(){
		local obj := {}
		obj.W 				:= 750
		obj.X 				:= A_ScreenWidth - obj.W - 20
		obj.Y 				:= 130
		obj.H 				:= 700
		obj.MarginX 		:= 3
		obj.MarginY 		:= 3
		;~ obj.Color 			:= "32363a"
		obj.Color 			:= "003333"
		obj.ControlColor 	:= "32363a"
		obj.MinWidth		:= 190
		obj.MinHeight		:= 55
		obj.MaxWidth		:= obj.W
		obj.MaxHeight		:= obj.H
		obj.ToggleWidth		:= obj.MinWidth
		obj.ToggleHeight	:= obj.MinHeight
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "00FF00"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 0
		;~ obj.ElementsWindowToggle := 0
		This.ElementsMainWindow := New PopUpWindow_V3( "-DPIScale -Caption +Owner" This.MainWindow.Hwnd , "ElementsPanel" ,, obj )
		
	}
	Setup_ElementsShellWindow(){
		local obj := {}
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		obj.Color 			:= "22262a"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		This.ElementsShellWindow := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ElementsMainWindow.Hwnd , "ELEMENTSSHELLWINDOW" ,, obj )
	}
	Setup_ElementsInnerWindow(){
		local obj := {}
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.W				:= 645
		obj.W				:= 720
		;~ obj.H				:= 500
		obj.H				:= 800
		;~ obj.Color 			:= "02060a"
		obj.Color 			:= "002222"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		This.ElementsInnerWindow := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ElementsShellWindow.Hwnd , "ElementsINNERWINDOW" ,, obj )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	Setup_ProjectTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		obj.W 				:= 600
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		obj.Color 			:= "02060a"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 1
		obj.ToggleMaxSize := 245
		obj.ToggleMinSize := 30
		
		This.ProjectTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsInnerWindow.Hwnd , "PROJECTTAB" ,, obj )
	}
	Setup_WindowTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		obj.W 				:= 600
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.Color 			:= "12161a"
		obj.Color 			:= "002f5f"
		;~ obj.Color 			:= "440000"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 1
		obj.ToggleMaxSize := 500
		obj.ToggleMinSize := 30
		
		This.WindowTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsInnerWindow.Hwnd , "WINDOWTAB" ,, obj )
	}
	Setup_BitmapTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		obj.W 				:= 600
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.Color 			:= "02060a"
		obj.Color 			:= "004444"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 0
		obj.ToggleMaxSize := 245
		obj.ToggleMinSize := 30
		
		This.BitmapTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsInnerWindow.Hwnd , "BITMAPTAB" ,, obj )
	}
	Setup_ClassTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		obj.W 				:= 600
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.Color 			:= "02060a"
		obj.Color 			:= "00a200"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 0
		obj.ToggleMaxSize := 245
		obj.ToggleMinSize := 30
		
		This.ClassTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsInnerWindow.Hwnd , "CLASSTAB" ,, obj )
	}
	Setup_FunctionTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		obj.W 				:= 600
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.Color 			:= "02060a"
		obj.Color 			:= "804040"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 0
		obj.ToggleMaxSize := 620
		obj.ToggleMinSize := 30
		
		This.FunctionTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsInnerWindow.Hwnd , "FUNCTIONTAB" ,, obj )
	}
	Setup_LabelTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		obj.W 				:= 600
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.Color 			:= "02060a"
		obj.Color 			:= "A31DE2"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 0
		obj.ToggleMaxSize := 245
		obj.ToggleMinSize := 30
		
		This.LabelTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsInnerWindow.Hwnd , "LABELTAB" ,, obj )
	}
	Setup_ScriptTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		obj.W 				:= 600
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.Color 			:= "02060a"
		obj.Color 			:= "8080FF"
		obj.ControlColor 	:= "32363a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "FFFFFF"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 0
		obj.ToggleMaxSize := 650
		obj.ToggleMinSize := 30
		
		This.ScriptTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ProjectsInnerWindow.Hwnd , "SCRIPTTAB" ,, obj )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	Setup_WindowElementTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		;~ obj.W 				:= 635
		obj.W 				:= 700
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		obj.Color 			:= "12161a"
		;~ obj.Color 			:= "004422"
		obj.ControlColor 	:= "02060a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "ffffff"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 1
		obj.ToggleMaxSize := 720
		obj.ToggleMinSize := 30
		
		This.WindowElementTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ElementsInnerWindow.Hwnd , "WINDOWELEMENTTAB" ,, obj )
	}
	Setup_BitmapElementTab(){
		
	}
	Setup_CodeInsertTab(){
		local obj := {}
		obj.X 				:= 0
		obj.Y 				:= 0
		;~ obj.W 				:= 635
		obj.W 				:= 700
		obj.H 				:= 30
		obj.MarginX 		:= 5
		obj.MarginY 		:= 5
		;~ obj.Color 			:= "ff0000"
		obj.Color 			:= "004422"
		obj.ControlColor 	:= "02060a"
		obj.FontType 		:= "Segoe UI"
		obj.FontSize 		:= 9
		obj.FontColor 		:= "ffffff"
		obj.FontOptions 	:= ""
		obj.AutoShow		:= 1
		
		obj.ToggleState := 1
		obj.ToggleMaxSize := 550
		obj.ToggleMinSize := 30
		
		This.CodeInsertTab := New PopUpWindow_V3( "-DPIScale -Caption +Parent" This.ElementsInnerWindow.Hwnd , "CODEINSERTTAB" ,, obj )
	}
	Setup_ClassElementTab(){
		
	}
	Setup_FunctionElementTab(){
		
	}
	Setup_LabelElementTab(){
		
	}
	Setup_VariableTab(){
		
	}
	
}
;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class WindowPositionsClass extends ControlsSetupClass	{
	
	Set_WindowPosition_MainWindow(){
		This.Set_AllControl_Positions_MainWindow()
		This.Set_WindowPosition_MainShellWindow()
		This.Set_MainWindow_Sliders()
		This.MainWindow.Show()
	}
	Set_WindowPosition_MainShellWindow(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := This.MainShellWindow
		local dd := controls.ControlArea
		local ee := controls.VertSlider
		local ff := controls.HorzSlider
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := ym
		cc.W := window.W - ( cc.X + ee.W + 2 * xm )
		cc.H := window.H - ( cc.Y + ff.H + 2 * ym )
		cc.Show()
	}
	Set_WindowPosition_MainInnerWindow(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := This.MainInnerWindow
		local dd := controls.VertSlider
		local ee := controls.HorzSlider
		cc.X := window.Get( ee ) * -1
		cc.Y := window.Get( dd ) * -1
		cc.SetPosition()
		cc.Show()
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	Set_WindowPosition_ProjectsMainWindow(){
		This.Set_AllControl_Positions_ProjectsMainWindow()
		This.Set_WindowPosition_ProjectsShellWindow()
		This.Set_ProjectsMainWindow_Sliders()
		This.ProjectsMainWindow.Show()
	}
	Set_WindowPosition_ProjectsShellWindow(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local cc := This.ProjectsShellWindow
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := controls.MoveButton.Y + controls.MoveButton.H + ym
		cc.W := window.W - ( controls.VertSlider.W + 3 * xm )
		cc.H := window.H - ( cc.Y + controls.HorzSlider.H + 3 * ym )
		cc.Show()
	}
	Set_WindowPosition_ProjectsInnerWindow(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local cc := This.ProjectsInnerWindow
		local dd := controls.VertSlider
		local ee := controls.HorzSlider
		cc.X := window.Get( ee ) * -1
		cc.Y := window.Get( dd ) * -1
		cc.SetPosition()
		cc.Show()
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	Set_WindowPosition_ElementsMainWindow(){
		This.Set_AllControl_Positions_ElementsMainWindow()
		This.Set_WindowPosition_ElementsShellWindow()
		This.Set_ElementsMainWindow_Sliders()
		This.ElementsMainWindow.Show()
	}
	Set_WindowPosition_ElementsShellWindow(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local cc := This.ElementsShellWindow
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := controls.MoveButton.Y + controls.MoveButton.H + ym
		cc.W := window.W - ( controls.VertSlider.W + 3 * xm )
		cc.H := window.H - ( cc.Y + controls.HorzSlider.H + 3 * ym )
		cc.Show()
	}
	Set_WindowPosition_ElementsInnerWindow(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local cc := This.ElementsInnerWindow
		local dd := controls.VertSlider
		local ee := controls.HorzSlider
		cc.X := window.Get( ee ) * -1
		cc.Y := window.Get( dd ) * -1
		cc.SetPosition()
		cc.Show()
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	Set_All_TabPositions_ProjectsPanel(){
		This.Set_WindowPosition_ProjectTab()
		This.Set_WindowPosition_WindowTab()
		This.Set_WindowPosition_BitmapTab()
		This.Set_WindowPosition_ClassTab()
		This.Set_WindowPosition_FunctionTab()
		This.Set_WindowPosition_LabelTab()
		This.Set_WindowPosition_ScriptTab()
	}
	Set_WindowPosition_ProjectTab(){
		local window := This.ProjectsInnerWindow
		local cc := This.ProjectTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_WindowTab(){
		local window := This.ProjectsInnerWindow
		local cc := This.WindowTab
		local dd := This.ProjectTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_BitmapTab(){
		local window := This.ProjectsInnerWindow
		local cc := This.BitmapTab
		local dd := This.WindowTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_ClassTab(){
		local window := This.ProjectsInnerWindow
		local cc := This.ClassTab
		local dd := This.BitmapTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_FunctionTab(){
		local window := This.ProjectsInnerWindow
		local cc := This.FunctionTab
		local dd := This.ClassTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_LabelTab(){
		local window := This.ProjectsInnerWindow
		local cc := This.LabelTab
		local dd := This.FunctionTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_ScriptTab(){
		local window := This.ProjectsInnerWindow
		local cc := This.ScriptTab
		local dd := This.LabelTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	Set_All_TabPositions_ElementsPanel(){
		This.Set_WindowPosition_WindowElementTab()
		This.Set_WindowPosition_BitmapElementTab()
		This.Set_WindowPosition_CodeInsertTab()
		This.Set_WindowPosition_ClassElementTab()
		This.Set_WindowPosition_FunctionElementTab()
		This.Set_WindowPosition_LabelElementTab()
		This.Set_WindowPosition_VarableTab()
	}
	Set_WindowPosition_WindowElementTab(){
		local window := This.ElementsInnerWindow
		local cc := This.WindowElementTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_BitmapElementTab(){
		local window := This.ElementsInnerWindow
		local cc := This.BitmapElementTab
		local dd := This.WindowElementTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_CodeInsertTab(){
		local window := This.ElementsInnerWindow
		local cc := This.CodeInsertTab
		local dd := This.WindowElementTab
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		if( cc.ToggleState )
			cc.H := cc.ToggleMaxSize
		else 
			cc.H := cc.ToggleMinSize
		cc.Show()
	}
	Set_WindowPosition_ClassElementTab(){
		
	}
	Set_WindowPosition_FunctionElementTab(){
		
	}
	Set_WindowPosition_LabelElementTab(){
		
	}
	Set_WindowPosition_VarableTab(){
		
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	
}
