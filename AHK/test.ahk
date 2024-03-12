^j::
{
    MyGui := Gui()
    WB := MyGui.Add("ActiveX", "w980 h640", "Shell.Explorer").Value  ; 最后一个参数是 ActiveX 组件的名称.
    WB.Navigate("https://weiw2ll.site//share")  ; 这是特定于网页浏览器控件的.
    MyGui.Show()
}
^k::
{
    global
    MyGui := Gui()
    URL := MyGui.Add("Edit", "w930 r1", "https://www.autohotkey.com/docs/")
    MyGui.Add("Button", "x+6 yp w44 Default", "Go").OnEvent("Click", ButtonGo)
    WB := MyGui.Add("ActiveX", "xm w980 h640", "Shell.Explorer").Value
    ComObjConnect(WB, WB_events)  ; 连接 WB 事件到 WB_events 类对象.
    MyGui.Show()
    ; 继续加载初始页面:
    ButtonGo()


}
ButtonGo(*) {
    WB.Navigate(URL.Value)
}
class WB_events 
{
    NavigateComplete2(wb, &NewURL, *)
     {
        URL.Value := NewURL  ; 更新 URL 编辑控件.
    }
}