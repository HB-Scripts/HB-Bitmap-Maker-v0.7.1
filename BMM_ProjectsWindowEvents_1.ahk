;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class ProjectsInnerWindowEvents extends ProjectsShellWindowEvents	{
	
	Set_Position_ProjectsInnerWindow_Height(){
		local cc := This.ProjectsInnerWindow
		local dd := This.ScriptTab
		local ym := cc.MarginY
		cc.H := dd.Y + dd.H + ym
		cc.Show()
	}
	Set_Focus_To_ProjectPanel_Tab( tabname ){
		local cc := This.ProjectsInnerWindow
		local dd := This[ tabname ]
		cc.Y := dd.Y * -1
		cc.Show()
	}
}
;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class ProjectsShellWindowEvents extends ProjectsMainWindowEvents	{
	
}
;|<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>||<<<___>>>|
class ProjectsMainWindowEvents extends MainInnerWindowEvents	{
	
	Set_Range_ProjectsMainWindow_VertSlider(){
		local cc , range 
		cc := This.ProjectsMainWindow.Controls.VertSlider
		range := 0 "-" This.ProjectsInnerWindow.H - This.ProjectsShellWindow.H 
		This.ProjectsMainWindow.SetRange( cc , range )
	}
	Set_Range_ProjectsMainWindow_HorzSlider(){
		local cc , range 
		cc := This.ProjectsMainWindow.Controls.HorzSlider
		range := 0 "-" This.ProjectsInnerWindow.W - This.ProjectsShellWindow.W 
		This.ProjectsMainWindow.SetRange( cc , range )
	}
	Set_ProjectsMainWindow_Sliders(){
		This.Set_Range_ProjectsMainWindow_VertSlider()
		This.Set_Range_ProjectsMainWindow_HorzSlider()
	}
	Toggle_All_ProjectsPanel_Tabs(){
		This.Set_All_TabPositions_ProjectsPanel()
	}
	
}
