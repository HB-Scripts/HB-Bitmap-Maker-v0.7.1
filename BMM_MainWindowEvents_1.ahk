;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class MainInnerWindowEvents	extends MainShellWindowEvents	{

}
;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class MainShellWindowEvents	extends MainWindowEventsClass	{

}
;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class MainWindowEventsClass	extends WindowSetupClass	{
	
	Set_Range_MainWindow_VertSlider(){
		local cc , range 
		cc := This.MainWindow.Controls.VertSlider
		range := 0 "-" This.MainInnerWindow.H - This.MainShellWindow.H 
		This.MainWindow.SetRange( cc , range )
	}
	Set_Range_MainWindow_HorzSlider(){
		local cc , range 
		cc := This.MainWindow.Controls.HorzSlider
		range := 0 "-" This.MainInnerWindow.W - This.MainShellWindow.W 
		This.MainWindow.SetRange( cc , range )
	}
	Set_MainWindow_Sliders(){
		This.Set_Range_MainWindow_VertSlider()
		This.Set_Range_MainWindow_HorzSlider()
	}
	Toggle_Projects_Panel(){
		if( This.ProjectsWindowToggle := !This.ProjectsWindowToggle )
			This.ProjectsMainWindow.Show()
		else
			This.ProjectsMainWindow.Hide()
		
	}
	Toggle_Elements_Panel(){
		if( This.ElementsWindowToggle := !This.ElementsWindowToggle )
			This.ElementsMainWindow.Show()
		else
			This.ElementsMainWindow.Hide()
		
	}
}
