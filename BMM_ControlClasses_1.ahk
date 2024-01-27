;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class ControlsSetupClass extends ControlPositionsClass	{
	
	static MainWindowControls  := [ "MoveButton" , "MinimizeButton" , "MinSizeButton" , "MaxSizeButton" , "CloseButton" , "ControlArea" , "CycleUpButton" , "ProjectDisplayArea" , "CycleDownButton" , "VertSlider" , "HorzSlider" , "ResizeButton" ]
	
	CreateControls_MainWindow(){
		
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "HB Bitmap Maker v7" , "MoveButton" , This.PostMoveWindow.Bind( This , "MainWindow" ) )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "_" , "MinimizeButton" , This.PostMinimizeWindow.Bind( This , "MainWindow" ) )
		This.MainWindow.SetFont( "WebDings" )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "2" , "MinSizeButton" , This.PostMinSizeWindow.Bind( This , "MainWindow" ) )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "1" , "MaxSizeButton" , This.PostMaxSizeWindow.Bind( This , "MainWindow" ) )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "r" , "CloseButton" , This.PostCloseWindow.Bind( This , "MainWindow" ) )
		This.MainWindow.SetFont( "Segoe UI" )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "" , "ControlArea" )
		;**************************
		
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "Project Panel" , "ToggleProjectsPanelButton" , This.Toggle_Projects_Panel.Bind( This ) )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "Element Panel" , "ToggleElementsPanelButton" , This.Toggle_Elements_Panel.Bind( This ) )
		
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "Run Test Window" , "RunTestWindowButton" , This.RunTestWindow.Bind( This ) )
		
		
		
		
		;**************************
		
		
		
		
		
		This.MainWindow.SetFont( "WebDings" )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "5" , "CycleUpButton" )
		This.MainWindow.SetFont( "Segoe UI" )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "Projects Display Area" , "ProjectDisplayArea" )
		This.MainWindow.SetFont( "WebDings" )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "6" , "CycleDownButton" )
		This.MainWindow.SetFont( "Segoe UI" )
		;~ This.MainWindow.Add( "Slider" , "+Tooltip Left AltSubmit Vertical Range0-0" , 0 , "VertSlider" , This.PostAdjustSlider.Bind( This , "MainWindow" , "VertSlider" ) )
		This.MainWindow.Add( "Slider" , "+Tooltip Left AltSubmit Vertical Range0-0 +Thick -Theme" , 0 , "VertSlider" , This.PostAdjustSlider.Bind( This , "MainWindow" , "VertSlider" ) )
		This.MainWindow.Add( "Slider" , "+Tooltip Left AltSubmit Range0-0 +Thick -Theme" , 0 , "HorzSlider" , This.PostAdjustSlider.Bind( This , "MainWindow" , "HorzSlider" ) )
		This.MainWindow.SetFont( "WingDings" )
		This.MainWindow.Add( "Text" , "Center 0x200 Border" , "v" , "ResizeButton" , This.PostResizeWindow.Bind( This , "MainWindow" ) )
		This.MainWindow.SetFont( "Segoe UI" )
		;~ This.MainWindow.Add( "Text" , "Center 0x200 Border" , "Projects Panel" , "ProjectsPanelButton" , HB_BitmapMaker_V6.Toggle_ProjectsPanel.Bind( HB_BitmapMaker_V6 ) )
		
		
	}
	CreateControls_MainShellWindow(){
		; Your code for creating controls for the MainShellWindow goes here
	}
	CreateControls_MainInnerWindow(){
		; Your code for creating controls for the MainInnerWindow goes here
	}
	CreateControls_ProjectsMainWindow(){
		This.ProjectsMainWindow.Add( "Text" , "Center 0x200 Border" , "Projects Panel" , "MoveButton" , This.PostMoveWindow.Bind( This , "ProjectsMainWindow" ) )
		This.ProjectsMainWindow.SetFont( "WebDings" )
		This.ProjectsMainWindow.Add( "Text" , "Center 0x200 Border" , "2" , "MinSizeButton" , This.PostMinSizeWindow.Bind( This , "ProjectsMainWindow" ) )
		This.ProjectsMainWindow.Add( "Text" , "Center 0x200 Border" , "1" , "MaxSizeButton" , This.PostMaxSizeWindow.Bind( This , "ProjectsMainWindow" ) )
		This.ProjectsMainWindow.Add( "Text" , "Center 0x200 Border" , "r" , "CloseButton" , This.PostCloseWindow.Bind( This , "ProjectsMainWindow" ) )
		This.ProjectsMainWindow.SetFont( "Segoe UI" )
		This.ProjectsMainWindow.Add( "Slider" , "+Tooltip Left AltSubmit Vertical Range0-0 +Thick" , 0 , "VertSlider" , This.PostAdjustSlider.Bind( This , "ProjectsMainWindow" , "VertSlider" ) )
		This.ProjectsMainWindow.Add( "Slider" , "+Tooltip Left AltSubmit Range0-0 +Thick" , 0 , "HorzSlider" , This.PostAdjustSlider.Bind( This , "ProjectsMainWindow" , "HorzSlider" ) )
		This.ProjectsMainWindow.SetFont( "WingDings" )
		This.ProjectsMainWindow.Add( "Text" , "Center 0x200 Border" , "v" , "ResizeButton" , This.PostResizeWindow.Bind( This , "ProjectsMainWindow" ) )
		This.ProjectsMainWindow.SetFont( "Segoe UI" )
		;~ This.Set_AllControls_Positions()
	}
	CreateControls_ProjectsShellWindow(){
		; Your code for creating controls for the ProjectsShellWindow goes here
	}
	CreateControls_ProjectsInnerWindow(){
		; Your code for creating controls for the ProjectsInnerWindow goes here
	}
	CreateControls_ElementsMainWindow(){
		This.ElementsMainWindow.Add( "Text" , "Center 0x200 Border" , "Elements Panel" , "MoveButton" , This.PostMoveWindow.Bind( This , "ElementsMainWindow" ) )
		This.ElementsMainWindow.SetFont( "WebDings" )
		This.ElementsMainWindow.Add( "Text" , "Center 0x200 Border" , "2" , "MinSizeButton" , This.PostMinSizeWindow.Bind( This , "ElementsMainWindow" ) )
		This.ElementsMainWindow.Add( "Text" , "Center 0x200 Border" , "1" , "MaxSizeButton" , This.PostMaxSizeWindow.Bind( This , "ElementsMainWindow" ) )
		This.ElementsMainWindow.Add( "Text" , "Center 0x200 Border" , "r" , "CloseButton" , This.PostCloseWindow.Bind( This , "ElementsMainWindow" ) )
		This.ElementsMainWindow.SetFont( "Segoe UI" )
		This.ElementsMainWindow.Add( "Slider" , "+Tooltip Left AltSubmit Vertical Range0-0 +Thick" , 0 , "VertSlider" , This.PostAdjustSlider.Bind( This , "ElementsMainWindow" , "VertSlider" ) )
		This.ElementsMainWindow.Add( "Slider" , "+Tooltip Left AltSubmit Range0-0 +Thick" , 0 , "HorzSlider" , This.PostAdjustSlider.Bind( This , "ElementsMainWindow" , "HorzSlider" ) )
		This.ElementsMainWindow.SetFont( "WingDings" )
		This.ElementsMainWindow.Add( "Text" , "Center 0x200 Border" , "v" , "ResizeButton" , This.PostResizeWindow.Bind( This , "ElementsMainWindow" ) )
		This.ElementsMainWindow.SetFont( "Segoe UI" )
		;~ This.ElementsMainWindow.Set_AllControls_Positions()
	}
	CreateControls_ElementsShellWindow(){
		; Your code for creating controls for the ElementsShellWindow goes here
	}
	CreateControls_ElementsInnerWindow(){
		; Your code for creating controls for the ElementsInnerWindow goes here
	}
	CreateControls_ProjectTab(){
		This.ProjectTab.Add( "Text" 	, "Center 0x200 Border" , "Project Tab  [ Alt + 1 ]" 		, "TabToggleButton" 				, This.PostToggleTab.Bind( This , "Projects" , "ProjectTab" ) )
		This.ProjectTab.Add( "ListBox" 	, "Choose1" 			,									, "ProjectsListBox" 				, This.Set_SelectedProject.Bind( This ) )
		This.ProjectTab.Add( "Text" 	, "Center 0x200 Border" , "New Project" 					, "NewProjectButton" 				, This.Add_NewProject_DisplayWindow.Bind( This ) )
		This.ProjectTab.Add( "Text" 	, "Center 0x200 Border" , "Load Project" 					, "LoadProjectButton" 				, This.Load_Project_DisplayWindow.Bind( This ) )
		This.ProjectTab.Add( "Text" 	, "Center 0x200 Border" , "Close Project" 					, "CloseProjectButton" 				, This.CloseProject.Bind( This ) )
		This.ProjectTab.Add( "Text" 	, "Center 0x200 Border" , "Copy Project" 					, "CopyProjectButton" 				, This.CopyProject.Bind( This ) )
		This.ProjectTab.Add( "Text" 	, "Center 0x200 Border" , "Delete Project" 					, "DeleteProjectButton" 			, This.DeleteProject.Bind( This ) )
		This.ProjectTab.Add( "Text" 	, "Center 0x200 Border" , "Open Main Folder" 				, "OpenMainProjectFolderButton" 	, This.OpenMainProjectFolder.Bind( This ) )
		This.ProjectTab.Add( "Text" 	, "Center 0x200 Border" , "Open Selected Project Folder"	, "OpenSelectedProjectFolderButton"	, This.OpenSelectedProjectFolder.Bind( This ) )
	}
	CreateControls_WindowTab(){
		;~ This.Add( "Text" , "Center 0x200 Border" , "Window Tab" , "TabToggleButton" , This.ParentObject.ToggleTabSize.Bind( This.ParentObject , "WindowTab" ) )
		This.WindowTab.Add( "Text" 		, "Center 0x200 Border" , "Window Tab  [ Alt + 2 ]" 	, "TabToggleButton" 			, This.PostToggleTab.Bind( This , "Projects" , "WindowTab" ) )
		This.WindowTab.Add( "ListBox" 	, "" 					, "" 							, "WindowsListBox" 				, This.Set_SelectedWindow.Bind( This ) )
		This.WindowTab.Add( "Text" 		, "Center 0x200 Border" , "New Window" 					, "NewWindowButton" 			, This.Add_NewWindow_DisplayWindow.Bind( This ) )
		This.WindowTab.Add( "Text" 		, "Center 0x200 Border" , "Copy Window" 				, "CopyWindowButton" 			, This.CopySelectedWindow.Bind( This ) )
		This.WindowTab.Add( "Text" 		, "Center 0x200 Border" , "Delete Window" 				, "DeleteWindowButton" 			, This.DeleteWindow.Bind( This ) )
		This.WindowTab.Add( "Text" 		, "Center 0x200 Border" , "Open Project Folder" 		, "OpenProjectFolderButton" 	)
		This.WindowTab.Add( "Text" 		, "Center 0x200 Border" , "Open Windows Folder" 		, "OpenWindowsFolderButton" 	)
		This.WindowTab.SetFont( ,, "00FFFF" )
		This.WindowTab.Add( "Text" 		, " 0x200 " 			, "Window Type:" 				, "WindowTypeText" )
		This.WindowTab.Add( "DDL" 		, " 0x200 " 			, "NormalWindow||LayeredWindow" , "WindowTypeDDL" )
		This.WindowTab.SetFont( ,, "00FF00" )
		This.WindowTab.Add( "Text" 		, " 0x200 " 			, "Window Name:" 				, "WindowNameText" )
		This.WindowTab.Add( "Edit" 		, "" 					, "+AlwaysOnTop" 				, "WindowNameEdit" )
		This.WindowTab.SetFont( ,, "FFFF00" )
		This.WindowTab.Add( "Text" 		, " 0x200 " 			, "Window Options:" 			, "WindowOptionsText" )
		This.WindowTab.Add( "Edit" 		, "" 					, "+AlwaysOnTop" 				, "WindowOptionsEdit" )
		This.WindowTab.SetFont( ,, "FFFFFF" )
		This.WindowTab.Add( "Text" 		, " 0x200 " 			, "Window Title:" 				, "WindowTitleText" )
		This.WindowTab.Add( "Edit" 		, "" 					, "+AlwaysOnTop" 				, "WindowTitleEdit" )
		This.WindowTab.SetFont( ,, "00FFFF" )
		This.WindowTab.Add( "Text" 		, " 0x200 " 			, "Window Defaults:" 				, "WindowDefaultsText" )
		This.WindowTab.Add( "Edit" 		, "" 					, "{ AutoShow: 1 }" 				, "WindowDefaultsEdit" )
		
		This.WindowTab.SetFont( ,, "00FF00" )
		This.WindowTab.Add( "Text" 		, " 0x200 " 			, "Function Params:" 			, "WindowFunctionParamsText" )
		This.WindowTab.Add( "Edit" 		, "" 					, "obj := """" , var := """""	, "WindowFunctionParamsEdit" )
		
		This.WindowTab.SetFont( ,, "FFFF00" )
		This.WindowTab.Add( "Text" 		, " 0x200 Center Border " 			, "Clip Window Call" 			, "ClipWindowCallButton" )
		This.WindowTab.Add( "Text" 		, " 0x200 Center Border " 			, "" 			, "WindowCallPrototypeText" )
		
		
		This.WindowTab.SetFont( ,, "FFFFFF" )
		This.WindowTab.Add( "Text" 		, "Center 0x200 Border" , "Update Window" 				, "UpdateWindowDefaultsButton" , This.UpdateWindow.Bind( This ) )
		This.WindowTab.Add( "Text" 		, "Center 0x200 Border" , "Run Test" 					, "RunTestWindowButton" , This.RunTestWindow.Bind( This ) )
		This.WindowTab.Add( "CheckBox" 	, "" 					, "Make BitmapMaker Child" 		, "MakeDemoWindowChildCheckBox" )
	}
	CreateControls_BitmapTab(){
		; Your code for creating controls for the BitmapTab goes here
	}
	CreateControls_ClassTab(){
		; Your code for creating controls for the ClassTab goes here
	}
	CreateControls_FunctionTab(){
		This.FunctionTab.Add( "Text" 		, "Center 0x200 Border" , "Function Tab  [ Alt + 5 ]" 					, "TabToggleButton" 			, This.PostToggleTab.Bind( This , "Projects" , "FunctionTab" ) )
		This.FunctionTab.Add( "Listbox" , "" , "" , "FunctionListbox" , This.Set_SelectedFunction.Bind( This ) )
		This.FunctionTab.Add( "Text" , "Center 0x200 Border" , "Add New Function" , "AddNewFunctionButton" , This.Add_NewFunction_DisplayWindow.Bind( This )  )
		This.FunctionTab.Add( "Text" , "Center 0x200 Border" , "Delete Function" , "DeleteFunctionButton"  )
		
		
		This.FunctionTab.Add( "Text" , "Center 0x200 Border" , "Name / Description" , "Param1Text" )
		This.FunctionTab.Add( "Edit" , "" , "Code Insert 1" , "Param1Edit" )
		
		This.FunctionTab.Add( "Text" , "Center 0x200 Border" , "Notes" , "Param2Text" )
		This.FunctionTab.Add( "Edit" , "r3" , "Notes" , "Param2Edit" )
		
		This.FunctionTab.Add( "Text" , "Center 0x200 Border" , "Contents" , "Param3Text" )
		This.FunctionTab.Add( "Edit" , "+WantTab r9 -Wrap +Hscroll" , ";Code Contents" , "Param3Edit" )
		
		This.FunctionTab.Add( "Text" , "Center 0x200 Border" , "Update Function" , "UpdateFunctionButton" , This.Submit_ParamEdit_Function_Values.Bind( This ) )
		
		
		
	}
	CreateControls_LabelTab(){
		This.LabelTab.Add( "Text" 		, "Center 0x200 Border" , "Label Tab  [ Alt + 6 ]" 					, "TabToggleButton" 			, This.PostToggleTab.Bind( This , "Projects" , "LabelTab" ) )
	}
	CreateControls_ScriptTab(){
		This.ScriptTab.Add( "Text" 		, "Center 0x200 Border" , "Script Tab  [ Alt + 7 ]" 					, "TabToggleButton" 			, This.PostToggleTab.Bind( This , "Projects" , "ScriptTab" ) )
		
		This.ScriptTab.Add( "Listbox" , "" , "Window Function Insert|Window Call Insert|Code Insert|Function Insert|Class Insert|Label Insert|Function Call Insert" , "ScriptInsertTypeListbox" , This.Submit_InsertType.Bind( This ) )
		This.ScriptTab.Add( "Listbox" , "" , "" , "AvailableScriptInsertsListbox"  )
		
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Add Selected Element" , "AddScriptElementButton" , This.Add_ScriptElement.Bind( This ) )
		
		
		;~ This.ScriptTab.Add( "Listbox" , "" , "" , "OutputListbox"  )
		This.ScriptTab.Add( "ListView" , "Choose1 AltSubmit r11 vScriptElementsListView" , "Position|Name|Type|" , "OutputListview" , This.Set_SelectedScriptElement.Bind( This ) )
		This.ScriptTab.Controls.OutputListview.VarName := "ScriptElementsListView"
		fs := This.ScriptTab.FontSize
		
		This.ScriptTab.SetFont( , 10 , "FF3333" )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Remove Element" , "RemoveScriptElementButton" , This.RemoveScriptElement.Bind( This ) )
		This.ScriptTab.SetFont( , 10 , "000000" )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Move Element Up" , "MoveScriptElementUpButton" , This.Move_ScriptElement.Bind( This , "Up" ) )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Move Element Down" , "MoveScriptElementDownButton" , This.Move_ScriptElement.Bind( This , "Down" ) )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Move Element Top" , "MoveScriptElementTopButton" , This.Move_ScriptElement.Bind( This , "Top" ) )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Move Element Bottom" , "MoveScriptElementBottomButton" , This.Move_ScriptElement.Bind( This , "Bottom" ) )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Insert At" , "InsertScriptElementAtButton" , This.Move_ScriptElement.Bind( This , "InsertAt" ) )
		This.ScriptTab.SetFont( , fs , "FFFFFF" )
		This.ScriptTab.Add( "Edit" , "Center Number r1" , "1" , "InsertScriptElementAtEdit" )
		
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Focus Element" , "FocusScriptElementButton" )
		
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Save Script" , "SaveScriptButton" , This._Save_Script.Bind( This ) )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Run and Save Script" , "RunAndSaveScriptButton" , This._Save_And_Run_Script.Bind( This ) )
		This.ScriptTab.SetFont( , fs , "00FF00" )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Open In Editor" , "OpenScriptInEditorButton" )
		This.ScriptTab.SetFont( , fs , "880000" )
		This.ScriptTab.Add( "Text" , "Center 0x200 Border" , "Save As (save elsewhere)" , "SaveAsButton" )
		
		
		
		
	}
	CreateControls_WindowElementTab(){
		local colors := [ "FFFF00" , "00FF00" , "00FFFF" , "FFFFFF" ] , cIndex := -1 , length := colors.Length()
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "WindowElement Tab" , "TabToggleButton" , This.PostToggleTab.Bind( This , "Elements" , "WindowElementTab" ) )
		This.WindowElementTab.Add( "DDL" , "Choose1 r15" , "" , "ElementDDL" )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Add" , "NewElementButton" , This.Add_New_WindowElement.Bind( This ) )
		This.WindowElementTab.SetControlList( This.WindowElementTab.Controls.ElementDDL , This.WindowElementTypeList , 1 )
		
		;~ This.WindowElementTab.Add( "ListBox" , "Choose1 AltSubmit r13" , "Item|Item|Item|Item|Item|Item|Item|Item|Item|Item|" , "WindowElementsListView"  , This.Set_SelectedElement.Bind( This ) )
		This.WindowElementTab.Add( "ListView" , "Choose1 AltSubmit r11 vWindowElementsListView" , "Position|Element Type|Param 1|Param 2|Param 3|Param 4|Param 5|Param 6|Param 7|Param 8|Param 9|Param 10|Param 11|" , "WindowElementsListView"  , This.Set_SelectedWindowElement.Bind( This ) )
		This.WindowElementTab.Controls.WindowElementsListView.VarName := "WindowElementsListView"
		
		LV_ModifyCol( 1 , "Integer" )
		;~ LV_ModifyCol(  , 140 )
		LV_ModifyCol(1,40)
		LV_ModifyCol(2,80)
		LV_ModifyCol(3,150)
		
		;~ LV_Delete()
		;~ LV_Add( "" , "Add" , "ControlType := ""Button""" , "options := """"" )
		;~ LV_Add( "" , "Add" , "ControlType := ""Edit""" , "options := ""xm ym w200""" )
		;~ LV_ModifyCol()
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Copy Element" , "CopyElementButton" , This.CopyWindowElement.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Move Element Up" , "MoveElementUpButton" , This.Move_WindowElement_Up.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Move Element Down" , "MoveElementDownButton" , This.Move_WindowElement_Down.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Move To Top" , "MoveElementToTopButton" , This.Move_WindowElement_ToTop.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Move To Bottom" , "MoveElementToBottomButton" , This.Move_WindowElement_ToBottom.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Insert At" , "InsertAtButton" , This.Move_WindowElement_InsertAt.Bind( This ) )
		This.WindowElementTab.Add( "Edit" , "Center Number" , "1" , "InsertAtEdit" )
		
		
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Delete Element" , "DeleteElementButton" , This.DeleteWindowElement.Bind( This ) )
		This.WindowElementTab.Add( "CheckBox" , "" , "Clear" , "AutoClearDefaultsCheckbox" , This.ToggelAutoClear.Bind( This ) )
		This.WindowElementTab.Add( "CheckBox" , "border" , "Save" , "AutoSaveCheckbox" )
		
		This.WindowElementTab.Add( "DropDownList" , "" , "1|5||10|15|20|25|30|45|60" , "AutoSaveIntervalDDL" )
		
		This.WindowElementTab.SetFont( ,, "FFFFFF" )
		This.WindowElementTab.Add( "Text" , "Center Border 0x200" , "Clip Output" , "ClipOutputStringText" , This.ClipElementOutputString.Bind( This ) )
		This.WindowElementTab.SetFont( ,, "00FF00" )
		This.WindowElementTab.Add( "Text" , " Border 0x200" , "Output String" , "OutputStringText" )
		
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1 ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param1" , "Param1Text" , This.ClipParam1.Bind( This ) )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param1" , "Param1Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param1Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param2" , "Param2Text" , This.Set_Param2FromClipboard.Bind( This ) )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param2" , "Param2Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param2Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param3" , "Param3Text" )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param3" , "Param3Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param3Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param4" , "Param4Text" , This.ClipControlObjectName.Bind( This ) )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param4" , "Param4Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param4Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param5" , "Param5Text" )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param5" , "Param5Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param5Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param6" , "Param6Text" )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param6" , "Param6Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param6Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param7" , "Param7Text" )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param7" , "Param7Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param7Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param8" , "Param8Text" )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param8" , "Param8Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param8Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param9" , "Param9Text" )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param9" , "Param9Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param9Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param10" , "Param10Text" )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param10" , "Param10Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param10Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.SetFont( ,, colors[ mod( ++cIndex , length ) + 1  ] )
		This.WindowElementTab.Add( "Text" , " 0x200 Border" , " Param11" , "Param11Text" )
		This.WindowElementTab.Add( "Edit" , "r1" , "Param11" , "Param11Edit" , This.Submit_ParamEdit_Value.Bind( This , cIndex + 1 ) )
		This.WindowElementTab.Add( "CheckBox" , "Checked" ,, "Param11Checkbox" , This.SetExpressionMode.Bind( This , cIndex + 1 ) )
		
		*/
		
		This.WindowElementTab.SetFont( ,, "FFFFFF" )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Save And Test Window" , "TestWindowButton" , This.RunTestWindow.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Clear All Parameters" , "ClearAllParamsButton" , This.ClearAllParams.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Save Window" , "SaveWindowButton" , This.SaveWindowElements.Bind( This ) )

		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Open Window In Editor" , "OpenWindowCodeInEditorButton" , This.OpenWindowCodeInEditor.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Clipboard Window" , "ClipboardWindowFunctionButton" , This.ClipWindowFunction.Bind( This ) )
		This.WindowElementTab.Add( "Text" , "Center 0x200 Border" , "Open Window ini File" , "OpenWindowIniFileButton" , This.OpenWindowIniFile.Bind( This ) )
	}
	CreateControls_BitmapElementTab(){
		; Your code for creating controls for the BitmapElementTab goes here
	}
	CreateControls_CodeInsertTab(){
		
		This.CodeInsertTab.Add( "Text" , "Center 0x200 Border" , "Code Insert Tab" , "TabToggleButton" , This.PostToggleTab.Bind( This , "Elements" , "CodeInsertTab" ) )
		This.CodeInsertTab.Add( "ListBox" , "" , "" , "CodeInsertListbox" , This.Set_SelectedCodeInsert.Bind( This ) )
		This.CodeInsertTab.Add( "Text" , "Center 0x200 Border" , "New Code Insert" , "NewCodeInsertButton" , This.Add_New_CodeInsert.Bind( This ) )
		This.CodeInsertTab.Add( "Text" , "Center 0x200 Border" , "Copy Code Insert" , "CopyCodeInsertButton" )
		This.CodeInsertTab.Add( "Text" , "Center 0x200 Border" , "Name / Description" , "Param1Text" )
		This.CodeInsertTab.Add( "Edit" , "" , "Code Insert 1" , "Param1Edit" )
		
		This.CodeInsertTab.Add( "Text" , "Center 0x200 Border" , "Notes" , "Param2Text" )
		This.CodeInsertTab.Add( "Edit" , "r3" , "Notes" , "Param2Edit" )
		
		This.CodeInsertTab.Add( "Text" , "Center 0x200 Border" , "Contents" , "Param3Text" )
		This.CodeInsertTab.Add( "Edit" , "r9 -Wrap +Hscroll +WantTab" , ";Code Contents" , "Param3Edit" )
		
		This.CodeInsertTab.Add( "Text" , "Center 0x200 Border" , "Update Code Insert" , "UpdateCodeInsertButton" , This.Submit_ParamEdit_Values.Bind( This ) )
	}
	CreateControls_ClassElementTab(){
		; Your code for creating controls for the ClassElementTab goes here
	}
	CreateControls_FunctionElementTab(){
		; Your code for creating controls for the FunctionElementTab goes here
	}
	CreateControls_LabelElementTab(){
		; Your code for creating controls for the LabelElementTab goes here
	}
	CreateControls_VarableTab(){
		; Your code for creating controls for the VarableTab goes here
	}
	
}
;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class ControlPositionsClass extends PopUpWindow_Addons	{
	
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;MainWindow controls
	Set_AllControl_Positions_MainWindow(){
		This.Set_ControlPosition_MainWindow_MoveButton()
		This.Set_ControlPosition_MainWindow_MinimizeButton()
		This.Set_ControlPosition_MainWindow_MinSizeButton()
		This.Set_ControlPosition_MainWindow_MaxSizeButton()
		This.Set_ControlPosition_MainWindow_CloseButton()
		This.Set_ControlPosition_MainWindow_ControlArea()
		This.Set_ControlPosition_MainWindow_ToggleProjectsPanelButton()
		This.Set_ControlPosition_MainWindow_ToggleElementsPanelButton()
		This.Set_ControlPosition_MainWindow_RunTestWindowButton()
		This.Set_ControlPosition_MainWindow_CycleUpButton()
		This.Set_ControlPosition_MainWindow_ProjectDisplayArea()
		This.Set_ControlPosition_MainWindow_CycleDownButton()
		This.Set_ControlPosition_MainWindow_VertSlider()
		This.Set_ControlPosition_MainWindow_HorzSlider()
		This.Set_ControlPosition_MainWindow_ResizeButton()
	}
	Set_ControlPosition_MainWindow_MoveButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.MoveButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := ym
		cc.W := 150
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_MainWindow_MinimizeButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.MinimizeButton
		local dd := controls.MoveButton
		local xm := 1
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := dd.H
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_MainWindow_MinSizeButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.MinSizeButton
		local dd := controls.MinimizeButton
		local xm := 1
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := dd.H
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_MainWindow_MaxSizeButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.MaxSizeButton
		local dd := controls.MinSizeButton
		local xm := 1
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := dd.H
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_MainWindow_CloseButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.CloseButton
		local dd := controls.MaxSizeButton
		local xm := 1
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := dd.H
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_MainWindow_ControlArea(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.ControlArea
		local dd := controls.MoveButton
		local ee := controls.CloseButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		cc.W := ee.X + ee.W - dd.X
		cc.H := 200
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_ToggleProjectsPanelButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.ToggleProjectsPanelButton
		local dd := controls.ControlArea
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + xm
		cc.Y := dd.Y + ym
		cc.W := dd.W - 2 * xm
		cc.H := 35
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_ToggleElementsPanelButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.ToggleElementsPanelButton
		local dd := controls.ToggleProjectsPanelButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W 
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_RunTestWindowButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.RunTestWindowButton
		local dd := controls.ToggleElementsPanelButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W 
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_CycleUpButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.CycleUpButton
		local dd := controls.ControlArea
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := 30
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_ProjectDisplayArea(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.ProjectDisplayArea
		local dd := controls.CycleUpButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := window.H - ( cc.Y + ( 2 * ym ) + dd.H )
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_CycleDownButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.CycleDownButton
		local dd := controls.CycleUpButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := window.H - ( ym + dd.H )
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_ResizeButton(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.ResizeButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.W := 15
		cc.H := cc.W
		cc.X := window.W - ( cc.W + xm )
		cc.Y := window.H - ( cc.H + ym )
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_VertSlider(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.VertSlider
		local dd := controls.ResizeButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.W := 20
		cc.H := window.H - ( dd.H + 3 * ym )
		cc.X := window.W - ( cc.W + xm )
		cc.Y := ym
		
		window.MoveControl(cc)
	}
	Set_ControlPosition_MainWindow_HorzSlider(){
		local window := This.MainWindow
		local controls := window.Controls
		local cc := controls.HorzSlider
		local dd := controls.ResizeButton
		local ee := controls.CycleDownButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := ee.X + ee.W + xm
		cc.W := window.W - ( cc.X + dd.W + 2 * xm )
		cc.H := 20
		cc.Y := window.H - ( cc.H + ym )
		window.MoveControl(cc)
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;MainShellWindow controls
	Set_AllControl_Positions_MainShellWindow(){
		; Your code for setting all control positions for the MainShellWindow goes here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;MainInnerWindow controls
	Set_AllControl_Positions_MainInnerWindow(){
		; Your code for setting all control positions for the MainInnerWindow goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ProjectsMainWindow controls
	Set_AllControl_Positions_ProjectsMainWindow(){
		; Your code for setting all control positions for the ProjectsMainWindow goes here
		This.Set_ControlPosition_ProjectsMainWindow_MoveButton()
		This.Set_ControlPosition_ProjectsMainWindow_MinSizeButton()
		This.Set_ControlPosition_ProjectsMainWindow_MaxSizeButton()
		This.Set_ControlPosition_ProjectsMainWindow_CloseButton()
		This.Set_ControlPosition_ProjectsMainWindow_VertSlider()
		This.Set_ControlPosition_ProjectsMainWindow_HorzSlider()
		This.Set_ControlPosition_ProjectsMainWindow_ResizeButton()
	}
	Set_ControlPosition_ProjectsMainWindow_MoveButton(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local cc := controls.MoveButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := ym
		cc.W := 100
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_ProjectsMainWindow_MinSizeButton(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local cc := controls.MinSizeButton
		local dd := controls.MoveButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := ym
		cc.W := 25
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_ProjectsMainWindow_MaxSizeButton(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local cc := controls.MaxSizeButton
		local dd := controls.MinSizeButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := ym
		cc.W := 25
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_ProjectsMainWindow_CloseButton(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.CloseButton
		local dd := controls.MaxSizeButton
		cc.X := dd.X + dd.W + xm
		cc.Y := ym
		cc.W := 25
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_ProjectsMainWindow_VertSlider(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.VertSlider
		cc.W := 20
		cc.Y := ym + controls.MoveButton.Y + controls.MoveButton.H
		cc.H := window.H - 2 * ym - 25 - cc.Y
		cc.X := window.W - cc.W - xm
		window.MoveControl( cc )
	}
	Set_ControlPosition_ProjectsMainWindow_HorzSlider(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.HorzSlider
		local dd := controls.MoveButton
		cc.W := window.W - ( xm ) - 25
		cc.H := 20
		cc.X := xm
		cc.Y := window.H - cc.H - ym
		window.MoveControl( cc )
	}
	Set_ControlPosition_ProjectsMainWindow_ResizeButton(){
		local window := This.ProjectsMainWindow
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.ResizeButton
		cc.W := 15
		cc.H := 15
		cc.X := window.W - 20
		cc.Y := window.H - 20
		window.MoveControl( cc )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ProjectsShellWindow controls
	Set_AllControl_Positions_ProjectsShellWindow(){
		; Your code for setting all control positions for the ProjectsShellWindow goes ... ... ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ProjectsInnerWindow controls
	Set_AllControl_Positions_ProjectsInnerWindow(){
		; Your code for setting all control positions for the ProjectsInnerWindow goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ElementsMainWindow controls
	Set_AllControl_Positions_ElementsMainWindow(){
		; Your code for setting all control positions for the ElementsMainWindow goes here
		This.Set_ControlPosition_ElementsMainWindow_MoveButton()
		This.Set_ControlPosition_ElementsMainWindow_MinSizeButton()
		This.Set_ControlPosition_ElementsMainWindow_MaxSizeButton()
		This.Set_ControlPosition_ElementsMainWindow_CloseButton()
		This.Set_ControlPosition_ElementsMainWindow_VertSlider()
		This.Set_ControlPosition_ElementsMainWindow_HorzSlider()
		This.Set_ControlPosition_ElementsMainWindow_ResizeButton()
	}
	Set_ControlPosition_ElementsMainWindow_MoveButton(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local cc := controls.MoveButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := ym
		cc.W := 100
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_ElementsMainWindow_MinSizeButton(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local cc := controls.MinSizeButton
		local dd := controls.MoveButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := ym
		cc.W := 25
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_ElementsMainWindow_MaxSizeButton(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local cc := controls.MaxSizeButton
		local dd := controls.MinSizeButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := ym
		cc.W := 25
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_ElementsMainWindow_CloseButton(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.CloseButton
		local dd := controls.MaxSizeButton
		cc.X := dd.X + dd.W + xm
		cc.Y := ym
		cc.W := 25
		cc.H := 25
		window.MoveControl( cc )
	}
	Set_ControlPosition_ElementsMainWindow_VertSlider(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.VertSlider
		cc.W := 20
		cc.Y := ym + controls.MoveButton.Y + controls.MoveButton.H
		cc.H := window.H - 2 * ym - 25 - cc.Y
		cc.X := window.W - cc.W - xm
		window.MoveControl( cc )
	}
	Set_ControlPosition_ElementsMainWindow_HorzSlider(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.HorzSlider
		local dd := controls.MoveButton
		cc.W := window.W - ( xm ) - 25
		cc.H := 20
		cc.X := xm
		cc.Y := window.H - cc.H - ym
		window.MoveControl( cc )
	}
	Set_ControlPosition_ElementsMainWindow_ResizeButton(){
		local window := This.ElementsMainWindow
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.ResizeButton
		cc.W := 15
		cc.H := 15
		cc.X := window.W - 20
		cc.Y := window.H - 20
		window.MoveControl( cc )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ElementsShellWindow controls
	Set_AllControl_Positions_ElementsShellWindow(){
		; Your code for setting all control positions for the ElementsShellWindow goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ElementsInnerWindow controls
	Set_AllControl_Positions_ElementsInnerWindow(){
		; Your code for setting all control positions for the ElementsInnerWindow goes ... ... ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ProjectTab controls
	Set_AllControl_Positions_ProjectTab(){
		This.Set_ControlPosition_ProjectTab_TabToggleButton()
		This.Set_ControlPosition_ProjectTab_ProjectsListBox()
		This.Set_NewProjectButton_Position()
		This.Set_LoadProjectButton_Position()
		This.Set_CloseProjectButton_Position()
		This.Set_CopyProjectButton_Position()
		This.Set_DeleteProjectButton_Position()
		This.Set_OpenMainProjectFolderButton_Position()
		This.Set_OpenSelectedProjectFolderButton_Position()
	}
	Set_ControlPosition_ProjectTab_TabToggleButton(){
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.TabToggleButton
		cc.X := xm
		cc.Y := ym
		cc.W := window.W - 2 * xm
		cc.H := 20
		window.MoveControl( cc )
	}
	Set_ControlPosition_ProjectTab_ProjectsListBox(){
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.ProjectsListBox
		local dd := controls.TabToggleButton
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		cc.W := 440
		cc.H := 180
		window.MoveControl( cc )
	}
	Set_NewProjectButton_Position(){
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.NewProjectButton
		local dd := controls.ProjectsListBox
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := 140
		cc.H := 30
		window.MoveControl( cc )
	}
	Set_LoadProjectButton_Position(){
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.LoadProjectButton
		local dd := controls.NewProjectButton
		cc.X := dd.X 
		cc.Y := dd.Y + dd.H + ym
		cc.W := 140
		cc.H := 30
		window.MoveControl( cc )
	}
	Set_CloseProjectButton_Position(){
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.CloseProjectButton
		local dd := controls.LoadProjectButton
		cc.X := dd.X 
		cc.Y := dd.Y + dd.H + ym
		cc.W := 140
		cc.H := 30
		window.MoveControl( cc )
	}
	Set_CopyProjectButton_Position(){
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.CopyProjectButton
		local dd := controls.CloseProjectButton
		cc.X := dd.X 
		cc.Y := dd.Y + dd.H + ym
		cc.W := 140
		cc.H := 30
		window.MoveControl( cc )
	}
	Set_DeleteProjectButton_Position(){
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.DeleteProjectButton
		local dd := controls.CopyProjectButton
		cc.X := dd.X 
		cc.Y := dd.Y + dd.H + ym
		cc.W := 140
		cc.H := 30
		window.MoveControl( cc )
	}
	Set_OpenMainProjectFolderButton_Position(){
		
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.OpenMainProjectFolderButton
		local dd := controls.ProjectsListBox
		cc.X := xm
		cc.Y := dd.Y + dd.H 
		cc.W := dd.W / 2 + 70
		cc.H := 30
		window.MoveControl( cc )
	}
	Set_OpenSelectedProjectFolderButton_Position(){
		local window := This.ProjectTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.OpenSelectedProjectFolderButton
		local dd := controls.OpenMainProjectFolderButton
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y 
		cc.W := dd.W 
		cc.H := dd.H
		window.MoveControl( cc )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;WindowTab controls
	Set_AllControl_Positions_WindowTab(){
		This.Set_ControlPosition_WindowTab_TabToggleButton()
		This.Set_ControlPosition_WindowTab_WindowsListBox()
		This.Set_ControlPosition_WindowTab_NewWindowButton()
		This.Set_ControlPosition_WindowTab_CopyWindowButton()
		This.Set_ControlPosition_WindowTab_DeleteWindowButton()
		This.Set_ControlPosition_WindowTab_OpenProjectFolderButton()
		This.Set_ControlPosition_WindowTab_OpenWindowsFolderButton()
		
		This.Set_ControlPosition_WindowTab_WindowTypeText()
		This.Set_ControlPosition_WindowTab_WindowTypeDDL()
		This.Set_ControlPosition_WindowTab_WindowNameText()
		This.Set_ControlPosition_WindowTab_WindowNameEdit()
		
		This.Set_ControlPosition_WindowTab_WindowOptionsText()
		This.Set_ControlPosition_WindowTab_WindowOptionsEdit()
		This.Set_ControlPosition_WindowTab_WindowTitleText()
		This.Set_ControlPosition_WindowTab_WindowTitleEdit()
		
		This.Set_ControlPosition_WindowTab_WindowDefaultsText()
		This.Set_ControlPosition_WindowTab_WindowDefaultsEdit()
		
		This.Set_ControlPosition_WindowTab_WindowFunctionParamsText()
		This.Set_ControlPosition_WindowTab_WindowFunctionParamsEdit()
		
		This.Set_ControlPosition_WindowTab_ClipWindowCallButton()
		This.Set_ControlPosition_WindowTab_WindowCallPrototypeText()
		
		
		This.Set_ControlPosition_WindowTab_UpdateWindowDefaultsButton()
		This.Set_ControlPosition_WindowTab_RunTestWindowButton()
		This.Set_ControlPosition_WindowTab_MakeDemoWindowChildCheckBox()
	}
	Set_ControlPosition_WindowTab_TabToggleButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.TabToggleButton
		cc.X := xm
		cc.Y := ym
		cc.W := window.W - 2 * xm
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowsListBox(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowsListBox
		local dd := controls.TabToggleButton
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 440
		cc.H := 180
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_NewWindowButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.NewWindowButton
		local dd := controls.WindowsListBox
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 140
		cc.H := 30
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_CopyWindowButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.CopyWindowButton
		local dd := controls.NewWindowButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_DeleteWindowButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.DeleteWindowButton
		local dd := controls.CopyWindowButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_OpenProjectFolderButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.OpenProjectFolderButton
		local dd := controls.DeleteWindowButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X
		cc.Y := dd.Y + dd.H +ym
		cc.W := dd.W 
		cc.H := dd.H
		window.MoveControl(cc)
		;~ local window := This.WindowTab
		;~ local controls := window.Controls
		;~ local cc := controls.OpenProjectFolderButton
		;~ local dd := controls.WindowsListBox
		;~ cc.X := window.MarginX
		;~ cc.Y := dd.Y + dd.H ;+ window.MarginY
		;~ cc.W := dd.W / 2 + 70
		;~ cc.H := 30
		;~ window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_OpenWindowsFolderButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.OpenWindowsFolderButton
		local dd := controls.OpenProjectFolderButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
		;~ local window := This.WindowTab
		;~ local controls := window.Controls
		;~ local cc := controls.OpenWindowsFolderButton
		;~ local dd := controls.OpenProjectFolderButton
		;~ cc.X := dd.X + dd.W + window.MarginX
		;~ cc.Y := dd.Y
		;~ cc.W := dd.W
		;~ cc.H := dd.H
		;~ window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowTypeText(){
		local window := This.WindowTab
		local cc := window.Controls.WindowTypeText
		local dd := window.Controls.WindowsListBox
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 120
		cc.H := 22
		window.MoveControl(cc)
		;~ local window := This.WindowTab
		;~ local cc := window.Controls.WindowTypeText
		;~ local dd := window.Controls.OpenProjectFolderButton
		;~ cc.X := window.MarginX
		;~ cc.Y := dd.Y + dd.H + window.MarginY
		;~ cc.W := 120
		;~ cc.H := 22
		;~ window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowTypeDDL(){
		local window := This.WindowTab
		local cc := window.Controls.WindowTypeDDL
		local dd := window.Controls.WindowTypeText
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := window.W - (cc.X + 2 * window.MarginX)
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowNameText(){
		local window := This.WindowTab
		local cc := window.Controls.WindowNameText
		local dd := window.Controls.WindowTypeDDL
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 120
		;~ cc.H := 22
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowNameEdit(){
		local window := This.WindowTab
		local cc := window.Controls.WindowNameEdit
		local dd := window.Controls.WindowNameText
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := window.W - (cc.X + 2 * window.MarginX)
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowOptionsText(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowOptionsText
		local dd := controls.WindowNameEdit
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 120
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowOptionsEdit(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowOptionsEdit
		local dd := controls.WindowOptionsText
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := window.W - (cc.X + 2 * window.MarginX)
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowTitleText(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowTitleText
		local dd := controls.WindowOptionsEdit
		cc.X := window.MarginX 
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 120
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowTitleEdit(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowTitleEdit
		local dd := controls.WindowTitleText
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y 
		cc.W := window.W - (cc.X + 2 * window.MarginX)
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowDefaultsText(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowDefaultsText
		local dd := controls.WindowTitleEdit
		cc.X := window.MarginX 
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 120
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowDefaultsEdit(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowDefaultsEdit
		local dd := controls.WindowDefaultsText
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y 
		cc.W := window.W - (cc.X + 2 * window.MarginX)
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowFunctionParamsText(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowFunctionParamsText
		local dd := controls.WindowDefaultsEdit
		cc.X := window.MarginX 
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 120
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_WindowFunctionParamsEdit(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowFunctionParamsEdit
		local dd := controls.WindowFunctionParamsText
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y 
		cc.W := window.W - (cc.X + 2 * window.MarginX)
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	
	
	Set_ControlPosition_WindowTab_ClipWindowCallButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.ClipWindowCallButton
		local dd := controls.WindowFunctionParamsText
		local ee := controls.WindowFunctionParamsEdit
		cc.X := dd.X
		cc.Y := ee.Y + ee.H + window.MarginY
		cc.W := 150
		cc.H := ee.H
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	
	Set_ControlPosition_WindowTab_WindowCallPrototypeText(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.WindowCallPrototypeText
		local dd := controls.ClipWindowCallButton
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := Window.W - ( dd.W + 3 * window.MarginX )
		cc.H := dd.H
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	
	
	Set_ControlPosition_WindowTab_UpdateWindowDefaultsButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.UpdateWindowDefaultsButton
		local dd := controls.ClipWindowCallButton
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY * 2
		cc.W := 150
		cc.H := 30
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_RunTestWindowButton(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.RunTestWindowButton
		local dd := controls.UpdateWindowDefaultsButton
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y 
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowTab_MakeDemoWindowChildCheckBox(){
		local window := This.WindowTab
		local controls := window.Controls
		local cc := controls.MakeDemoWindowChildCheckBox
		local dd := controls.UpdateWindowDefaultsButton
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY / 2
		;~ cc.W := 150
		cc.H := 30
		window.MoveControl(cc)
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;BitmapTab controls
	Set_AllControl_Positions_BitmapTab(){
		; Your code for setting all control positions for the BitmapTab goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ClassTab controls
	Set_AllControl_Positions_ClassTab(){
		; Your code for setting all control positions for the ClassTab goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;FunctionTab controls
	Set_AllControl_Positions_FunctionTab(){
		This.Set_ControlPosition_FunctionTab_TabToggleButton()
		This.Set_ControlPosition_FunctionTab_FunctionListbox()
		This.Set_ControlPosition_FunctionTab_AddNewFunctionButton()
		This.Set_ControlPosition_FunctionTab_DeleteFunctionButton()
		This.Set_ControlPosition_FunctionTab_Param1Text()
		This.Set_ControlPosition_FunctionTab_Param1Edit()
		This.Set_ControlPosition_FunctionTab_Param2Text()
		This.Set_ControlPosition_FunctionTab_Param2Edit()
		This.Set_ControlPosition_FunctionTab_Param3Text()
		This.Set_ControlPosition_FunctionTab_Param3Edit()
		This.Set_ControlPosition_FunctionTab_UpdateFunctionButton()
		
	}
	Set_ControlPosition_FunctionTab_TabToggleButton(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.TabToggleButton
		cc.X := window.MarginX
		cc.Y := window.MarginY
		cc.W := window.W - 2 * window.MarginX
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_FunctionTab_FunctionListbox(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.FunctionListbox
		local dd := controls.TabToggleButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		cc.W := 440
		cc.H := 210
		window.MoveControl(cc)
	}
	Set_ControlPosition_FunctionTab_AddNewFunctionButton(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.AddNewFunctionButton
		local dd := controls.FunctionListbox
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y 
		cc.W := 140
		cc.H := 30
		window.MoveControl(cc)
	}
	Set_ControlPosition_FunctionTab_DeleteFunctionButton(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.DeleteFunctionButton
		local dd := controls.AddNewFunctionButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_FunctionTab_Param1Text(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.Param1Text
		local dd := controls.FunctionListbox
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_FunctionTab_Param1Edit(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.Param1Edit
		local textControl := controls.Param1Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := textControl.X + textControl.W + window.MarginX
		cc.Y := textControl.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl( cc )
	}
	Set_ControlPosition_FunctionTab_Param2Text(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.Param2Text
		local dd := controls.Param1Text
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 130
		cc.H := 60
		window.MoveControl(cc)
	}
	Set_ControlPosition_FunctionTab_Param2Edit(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.Param2Edit
		local textControl := controls.Param2Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := textControl.X + textControl.W + window.MarginX
		cc.Y := textControl.Y
		cc.W := totalWidth
		cc.H := 60
		window.MoveControl( cc )
	}
	Set_ControlPosition_FunctionTab_Param3Text(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.Param3Text
		local dd := controls.Param2Text
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 130
		cc.H := 190
		window.MoveControl(cc)
	}
	Set_ControlPosition_FunctionTab_Param3Edit(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.Param3Edit
		local textControl := controls.Param3Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := textControl.X + textControl.W + window.MarginX
		cc.Y := textControl.Y
		cc.W := totalWidth
		cc.H := 190
		window.MoveControl( cc )
	}
	Set_ControlPosition_FunctionTab_UpdateFunctionButton(){
		local window := This.FunctionTab
		local controls := window.Controls
		local cc := controls.UpdateFunctionButton
		local textControl := controls.Param3Text
		
		cc.X := window.MarginX
		cc.Y := textControl.Y + textControl.H + window.MarginY
		cc.W := 200
		cc.H := 30
		window.MoveControl( cc )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;LabelTab controls
	Set_AllControl_Positions_LabelTab(){
		This.Set_ControlPosition_LabelTab_TabToggleButton()
	}
	Set_ControlPosition_LabelTab_TabToggleButton(){
		local window := This.LabelTab
		local controls := window.Controls
		local cc := controls.TabToggleButton
		cc.X := window.MarginX
		cc.Y := window.MarginY
		cc.W := window.W - 2 * window.MarginX
		cc.H := 20
		window.MoveControl(cc)
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ScriptTab controls
	Set_AllControl_Positions_ScriptTab(){
		This.Set_ControlPosition_ScriptTab_TabToggleButton()
		This.Set_ControlPosition_ScriptTab_ScriptInsertTypeListbox()
		This.Set_ControlPosition_ScriptTab_AvailableScriptInsertsListbox()
		This.Set_ControlPosition_ScriptTab_AddScriptElementButton()
		This.Set_ControlPosition_ScriptTab_OutputListview()
		This.Set_ControlPosition_ScriptTab_RemoveScriptElementButton()
		This.Set_ControlPosition_ScriptTab_MoveScriptElementUpButton()
		This.Set_ControlPosition_ScriptTab_MoveScriptElementDownButton()
		This.Set_ControlPosition_ScriptTab_MoveScriptElementTopButton()
		This.Set_ControlPosition_ScriptTab_MoveScriptElementBottomButton()
		This.Set_ControlPosition_ScriptTab_InsertScriptElementAtButton()
		This.Set_ControlPosition_ScriptTab_InsertScriptElementAtEdit()
		This.Set_ControlPosition_ScriptTab_FocusScriptElementButton()
		This.Set_ControlPosition_ScriptTab_SaveScriptButton()
		This.Set_ControlPosition_ScriptTab_RunAndSaveScriptButton()
		This.Set_ControlPosition_ScriptTab_OpenScriptInEditorButton()
		This.Set_ControlPosition_ScriptTab_SaveAsButton()
	}
	Set_ControlPosition_ScriptTab_TabToggleButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.TabToggleButton
		cc.X := window.MarginX
		cc.Y := window.MarginY
		cc.W := window.W - 2 * window.MarginX
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_ScriptInsertTypeListbox(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.ScriptInsertTypeListbox
		local dd := controls.TabToggleButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		cc.W := 220
		cc.H := 200
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_AvailableScriptInsertsListbox(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.AvailableScriptInsertsListbox
		local dd := controls.ScriptInsertTypeListbox
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y 
		cc.W := dd.W
		cc.H := 200
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_AddScriptElementButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.AddScriptElementButton
		local dd := controls.AvailableScriptInsertsListbox
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y 
		cc.W := 140
		cc.H := 30
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_OutputListview(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.OutputListview
		local dd := controls.ScriptInsertTypeListbox
		local ee := controls.AvailableScriptInsertsListbox
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W + xm + ee.W
		cc.H := 400
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_RemoveScriptElementButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.RemoveScriptElementButton
		local dd := controls.OutputListview
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x + dd.W + xm
		cc.Y := dd.Y 
		cc.W := 140
		;~ cc.H := 30
		cc.H := 24
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_MoveScriptElementUpButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.MoveScriptElementUpButton
		local dd := controls.RemoveScriptElementButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_MoveScriptElementDownButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.MoveScriptElementDownButton
		local dd := controls.MoveScriptElementUpButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_MoveScriptElementTopButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.MoveScriptElementTopButton
		local dd := controls.MoveScriptElementDownButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_MoveScriptElementBottomButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.MoveScriptElementBottomButton
		local dd := controls.MoveScriptElementTopButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_InsertScriptElementAtButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.InsertScriptElementAtButton
		local dd := controls.MoveScriptElementBottomButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W - 50
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_InsertScriptElementAtEdit(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.InsertScriptElementAtEdit
		local dd := controls.InsertScriptElementAtButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x + dd.W + xm
		cc.Y := dd.Y 
		cc.W := 50 - xm
		;~ cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_FocusScriptElementButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.FocusScriptElementButton
		local dd := controls.InsertScriptElementAtButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W + 50
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_SaveScriptButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.SaveScriptButton
		local dd := controls.FocusScriptElementButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_RunAndSaveScriptButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.RunAndSaveScriptButton
		local dd := controls.SaveScriptButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_OpenScriptInEditorButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.OpenScriptInEditorButton
		local dd := controls.RunAndSaveScriptButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_ScriptTab_SaveAsButton(){
		local window := This.ScriptTab
		local controls := window.Controls
		local cc := controls.SaveAsButton
		local dd := controls.OpenScriptInEditorButton
		
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.x 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;WindowElementTab controls
	Set_AllControl_Positions_WindowElementTab(){
		This.Set_ControlPosition_WindowElementTab_TabToggleButton()
		This.Set_ControlPosition_WindowElementTab_ElementDDL()
		This.Set_ControlPosition_WindowElementTab_WindowElementsListView()
		This.Set_ControlPosition_WindowElementTab_NewElementButton()
		This.Set_ControlPosition_WindowElementTab_CopyElementButton()
		This.Set_ControlPosition_WindowElementTab_MoveElementUpButton()
		This.Set_ControlPosition_WindowElementTab_MoveElementDownButton()
		This.Set_ControlPosition_WindowElementTab_MoveElementToTopButton()
		This.Set_ControlPosition_WindowElementTab_MoveElementToBottomButton()
		This.Set_ControlPosition_WindowElementTab_InsertAtButton()
		This.Set_ControlPosition_WindowElementTab_InsertAtEdit()
		
		This.Set_ControlPosition_WindowElementTab_DeleteElementButton()
		This.Set_ControlPosition_WindowElementTab_AutoClearDefaultsCheckbox()
		This.Set_ControlPosition_WindowElementTab_AutoSaveCheckbox()
		This.Set_ControlPosition_WindowElementTab_AutoSaveIntervalDDL()
		
		
		This.Set_ControlPosition_WindowElementTab_ClipOutputStringText()
		This.Set_ControlPosition_WindowElementTab_OutputStringText()
		
		This.Set_ControlPosition_WindowElementTab_Param1Text()
		This.Set_ControlPosition_WindowElementTab_Param1Edit()
		This.Set_ControlPosition_WindowElementTab_Param1Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param2Text()
		This.Set_ControlPosition_WindowElementTab_Param2Edit()
		This.Set_ControlPosition_WindowElementTab_Param2Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param3Text()
		This.Set_ControlPosition_WindowElementTab_Param3Edit()
		This.Set_ControlPosition_WindowElementTab_Param3Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param4Text()
		This.Set_ControlPosition_WindowElementTab_Param4Edit()
		This.Set_ControlPosition_WindowElementTab_Param4Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param5Text()
		This.Set_ControlPosition_WindowElementTab_Param5Edit()
		This.Set_ControlPosition_WindowElementTab_Param5Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param6Text()
		This.Set_ControlPosition_WindowElementTab_Param6Edit()
		This.Set_ControlPosition_WindowElementTab_Param6Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param7Text()
		This.Set_ControlPosition_WindowElementTab_Param7Edit()
		This.Set_ControlPosition_WindowElementTab_Param7Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param8Text()
		This.Set_ControlPosition_WindowElementTab_Param8Edit()
		This.Set_ControlPosition_WindowElementTab_Param8Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param9Text()
		This.Set_ControlPosition_WindowElementTab_Param9Edit()
		This.Set_ControlPosition_WindowElementTab_Param9Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param10Text()
		This.Set_ControlPosition_WindowElementTab_Param10Edit()
		This.Set_ControlPosition_WindowElementTab_Param10Checkbox()

		This.Set_ControlPosition_WindowElementTab_Param11Text()
		This.Set_ControlPosition_WindowElementTab_Param11Edit()
		This.Set_ControlPosition_WindowElementTab_Param11Checkbox()
		
		This.Set_ControlPosition_WindowElementTab_TestWindowButton()
		This.Set_ControlPosition_WindowElementTab_ClearAllParamsButton()
		This.Set_ControlPosition_WindowElementTab_SaveWindowButton()
		This.Set_ControlPosition_WindowElementTab_OpenWindowCodeInEditorButton()
		This.Set_ControlPosition_WindowElementTab_ClipboardWindowFunctionButton()
		This.Set_ControlPosition_WindowElementTab_OpenWindowIniFileButton()

	}
	Set_ControlPosition_WindowElementTab_TabToggleButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.TabToggleButton
		cc.X := window.MarginX
		cc.Y := window.MarginY
		cc.W := window.W - 2 * window.MarginX
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_ElementDDL(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.ElementDDL
		local dd := controls.TabToggleButton
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		;~ cc.W := 500
		cc.W := 560
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_WindowElementsListView(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.WindowElementsListView
		local dd := controls.ElementDDL
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		;~ cc.W := 500
		cc.W := 560
		;~ cc.H := 500
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_NewElementButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.NewElementButton
		local dd := controls.ElementDDL
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y 
		cc.W := 120
		cc.H := 20
		window.MoveControl( cc )
	}
	Set_ControlPosition_WindowElementTab_CopyElementButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.CopyElementButton
		local dd := controls.NewElementButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_MoveElementUpButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.MoveElementUpButton
		local dd := controls.CopyElementButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_MoveElementDownButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.MoveElementDownButton
		local dd := controls.MoveElementUpButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_WindowElementTab_MoveElementToTopButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.MoveElementToTopButton
		local dd := controls.MoveElementDownButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_WindowElementTab_MoveElementToBottomButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.MoveElementToBottomButton
		local dd := controls.MoveElementToTopButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_WindowElementTab_InsertAtButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.InsertAtButton
		local dd := controls.MoveElementToBottomButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W - 40
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_WindowElementTab_InsertAtEdit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.InsertAtEdit
		local dd := controls.InsertAtButton
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y 
		cc.W := 40 - window.MarginX
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_WindowElementTab_DeleteElementButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.DeleteElementButton
		local dd := controls.InsertAtButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 120
		cc.H := dd.H
		window.MoveControl( cc )
	}
	Set_ControlPosition_WindowElementTab_AutoClearDefaultsCheckbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.AutoClearDefaultsCheckbox
		local dd := controls.DeleteElementButton
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_AutoSaveCheckbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.AutoSaveCheckbox
		local dd := controls.AutoClearDefaultsCheckbox
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 50
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_AutoSaveIntervalDDL(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.AutoSaveIntervalDDL
		local dd := controls.AutoSaveCheckbox
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 65
		cc.H := 20
		window.MoveControl(cc)
		;~ MsgBox, % cc.X "`n" dd.X "`n" dd.W
	}
	Set_ControlPosition_WindowElementTab_ClipOutputStringText(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.ClipOutputStringText
		local dd := controls.WindowElementsListView
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 90
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_OutputStringText(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.OutputStringText
		local dd := controls.ClipOutputStringText
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y 
		cc.W := window.W - ( 3 * window.MarginX + dd.X + dd.W )
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param1Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param1Text
		local dd := controls.OutputStringText
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param1Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param1Edit
		local textControl := controls.Param1Text
		local checkboxControl := controls.Param1Checkbox
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := textControl.X + textControl.W + window.MarginX
		cc.Y := textControl.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl( cc )
	}
	Set_ControlPosition_WindowElementTab_Param1Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param1Checkbox
		local editControl := controls.Param1Edit
		cc.X := editControl.X + editControl.W + window.MarginX
		cc.Y := editControl.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param2Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param2Text
		cc.X := window.MarginX
		cc.Y := controls.Param1Text.Y + controls.Param1Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param2Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param2Edit
		local dd := controls.Param2Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y 
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param2Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param2Checkbox
		local dd := controls.Param2Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param3Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param3Text
		cc.X := window.MarginX
		cc.Y := controls.Param2Text.Y + controls.Param2Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param3Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param3Edit
		local dd := controls.Param3Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param3Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param3Checkbox
		local dd := controls.Param3Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param4Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param4Text
		cc.X := window.MarginX
		cc.Y := controls.Param3Text.Y + controls.Param3Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param4Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param4Edit
		local dd := controls.Param4Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param4Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param4Checkbox
		local dd := controls.Param4Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param5Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param5Text
		cc.X := window.MarginX
		cc.Y := controls.Param4Text.Y + controls.Param4Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param5Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param5Edit
		local dd := controls.Param5Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param5Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param5Checkbox
		local dd := controls.Param5Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param6Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param6Text
		cc.X := window.MarginX
		cc.Y := controls.Param5Text.Y + controls.Param5Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param6Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param6Edit
		local dd := controls.Param6Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param6Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param6Checkbox
		local dd := controls.Param6Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param7Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param7Text
		cc.X := window.MarginX
		cc.Y := controls.Param6Text.Y + controls.Param6Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param7Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param7Edit
		local dd := controls.Param7Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param7Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param7Checkbox
		local dd := controls.Param7Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param8Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param8Text
		cc.X := window.MarginX
		cc.Y := controls.Param7Text.Y + controls.Param7Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param8Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param8Edit
		local dd := controls.Param8Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param8Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param8Checkbox
		local dd := controls.Param8Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param9Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param9Text
		cc.X := window.MarginX
		cc.Y := controls.Param8Text.Y + controls.Param8Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param9Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param9Edit
		local dd := controls.Param9Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param9Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param9Checkbox
		local dd := controls.Param9Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param10Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param10Text
		cc.X := window.MarginX
		cc.Y := controls.Param9Text.Y + controls.Param9Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param10Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param10Edit
		local dd := controls.Param10Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param10Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param10Checkbox
		local dd := controls.Param10Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param11Text(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param11Text
		cc.X := window.MarginX
		cc.Y := controls.Param10Text.Y + controls.Param10Text.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param11Edit(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param11Edit
		local dd := controls.Param11Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_Param11Checkbox(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.Param11Checkbox
		local dd := controls.Param11Edit
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 15
		cc.H := 15
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_TestWindowButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.TestWindowButton
		local dd := controls.Param11Text
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X
		cc.Y := dd.Y + dd.H + ym
		cc.W := 150
		cc.H := 30
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_ClearAllParamsButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.ClearAllParamsButton
		local dd := controls.TestWindowButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_SaveWindowButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.SaveWindowButton
		local dd := controls.ClearAllParamsButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_OpenWindowCodeInEditorButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.OpenWindowCodeInEditorButton
		local dd := controls.TestWindowButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X 
		cc.Y := dd.Y + dd.H + ym
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_ClipboardWindowFunctionButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.ClipboardWindowFunctionButton
		local dd := controls.OpenWindowCodeInEditorButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	Set_ControlPosition_WindowElementTab_OpenWindowIniFileButton(){
		local window := This.WindowElementTab
		local controls := window.Controls
		local cc := controls.OpenWindowIniFileButton
		local dd := controls.ClipboardWindowFunctionButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X + dd.W + xm
		cc.Y := dd.Y
		cc.W := dd.W
		cc.H := dd.H
		window.MoveControl(cc)
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;BitmapElementTab controls
	Set_AllControl_Positions_BitmapElementTab(){
		; Your code for setting all control positions for the BitmapElementTab goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;CodeInsertTab controls
	Set_AllControl_Positions_CodeInsertTab(){
		This.Set_ControlPosition_CodeInsertTab_TabToggleButton()
		This.Set_ControlPosition_CodeInsertTab_CodeInsertListbox()
		This.Set_ControlPosition_CodeInsertTab_NewCodeInsertButton()
		This.Set_ControlPosition_CodeInsertTab_CopyCodeInsertButton()
		This.Set_ControlPosition_CodeInsertTab_Param1Text()
		This.Set_ControlPosition_CodeInsertTab_Param1Edit()
		This.Set_ControlPosition_CodeInsertTab_Param2Text()
		This.Set_ControlPosition_CodeInsertTab_Param2Edit()
		This.Set_ControlPosition_CodeInsertTab_Param3Text()
		This.Set_ControlPosition_CodeInsertTab_Param3Edit()
		This.Set_ControlPosition_CodeInsertTab_UpdateCodeInsertButton()
	}
	Set_ControlPosition_CodeInsertTab_TabToggleButton(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.TabToggleButton
		cc.X := xm
		cc.Y := ym
		cc.W := window.W - 2 * xm
		cc.H := 20
		window.MoveControl( cc )
	}
	Set_ControlPosition_CodeInsertTab_CodeInsertListbox(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local xm := window.MarginX
		local ym := window.MarginY
		local cc := controls.CodeInsertListbox
		local dd := controls.TabToggleButton
		cc.X := xm
		cc.Y := dd.Y + dd.H + ym
		cc.W := 560
		cc.H := 180
		window.MoveControl( cc )
	}
	Set_ControlPosition_CodeInsertTab_NewCodeInsertButton(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.NewCodeInsertButton
		local dd := controls.CodeInsertListbox
		cc.X := dd.X + dd.W + window.MarginX
		cc.Y := dd.Y
		cc.W := 120
		cc.H := 20
		window.MoveControl( cc )
	}
	Set_ControlPosition_CodeInsertTab_CopyCodeInsertButton(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.CopyCodeInsertButton
		local dd := controls.NewCodeInsertButton
		local xm := window.MarginX
		local ym := window.MarginY
		cc.X := dd.X 
		cc.Y := dd.Y + dd.H + ym
		cc.W := 120
		cc.H := 20
		window.MoveControl( cc )
	}
	Set_ControlPosition_CodeInsertTab_Param1Text(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.Param1Text
		local dd := controls.CodeInsertListbox
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 130
		cc.H := 20
		window.MoveControl(cc)
	}
	Set_ControlPosition_CodeInsertTab_Param1Edit(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.Param1Edit
		local textControl := controls.Param1Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := textControl.X + textControl.W + window.MarginX
		cc.Y := textControl.Y
		cc.W := totalWidth
		cc.H := 20
		window.MoveControl( cc )
	}
	Set_ControlPosition_CodeInsertTab_Param2Text(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.Param2Text
		local dd := controls.Param1Text
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 130
		cc.H := 60
		window.MoveControl(cc)
	}
	Set_ControlPosition_CodeInsertTab_Param2Edit(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.Param2Edit
		local textControl := controls.Param2Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := textControl.X + textControl.W + window.MarginX
		cc.Y := textControl.Y
		cc.W := totalWidth
		cc.H := 60
		window.MoveControl( cc )
	}
	Set_ControlPosition_CodeInsertTab_Param3Text(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.Param3Text
		local dd := controls.Param2Text
		cc.X := window.MarginX
		cc.Y := dd.Y + dd.H + window.MarginY
		cc.W := 130
		cc.H := 190
		window.MoveControl(cc)
	}
	Set_ControlPosition_CodeInsertTab_Param3Edit(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.Param3Edit
		local textControl := controls.Param3Text
		local totalWidth := window.W - 3 * window.MarginX - 130 - 15  ; Total width minus the sum of the fixed widths and the margins
		cc.X := textControl.X + textControl.W + window.MarginX
		cc.Y := textControl.Y
		cc.W := totalWidth
		cc.H := 190
		window.MoveControl( cc )
	}
	Set_ControlPosition_CodeInsertTab_UpdateCodeInsertButton(){
		local window := This.CodeInsertTab
		local controls := window.Controls
		local cc := controls.UpdateCodeInsertButton
		local textControl := controls.Param3Text
		
		cc.X := window.MarginX
		cc.Y := textControl.Y + textControl.H + window.MarginY
		cc.W := 200
		cc.H := 30
		window.MoveControl( cc )
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;ClassElementTab controls
	Set_AllControl_Positions_ClassElementTab(){
		; Your code for setting all control positions for the ClassElementTab goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;FunctionElementTab controls
	Set_AllControl_Positions_FunctionElementTab(){
		; Your code for setting all control positions for the FunctionElementTab goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;LabelElementTab controls
	Set_AllControl_Positions_LabelElementTab(){
		; Your code for setting all control positions for the LabelElementTab goes ... ... here
	}
	;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
	;VarableTab controls
	Set_AllControl_Positions_VarableTab(){
		; Your code for setting all control positions for the VarableTab goes here
	}

}

