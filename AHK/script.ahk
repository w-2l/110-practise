;; 快捷启动应用
!1::
{
    win := 'Tril'
    switch 
    {
        case WinActive(win):
            WinMinimize
        case WinExist(win):
            WinActivate
        default:
            ; Run "D:\Program Files\Microsoft VS Code\bin\code.cmd"
            MsgBox('Trillium 未打开')
    }
    win := ''  
}
!2::
{
    win := 'Code'
    switch 
    {
        case WinActive(win):
            WinMinimize
        case WinExist(win):
            WinActivate
        default:
            Run "D:\Program Files\Microsoft VS Code\bin\code.cmd"
    }
    win := ''       
}   
!3::
{
    win := 'ahk_exe MindMaster.exe'
    switch 
    {
        case WinActive(win):
            WinMinimize
        case WinExist(win):
            WinActivate
        default:
            Run "D:\Program Files\MindMaster\Edrawsoft\MindMaster（简体中文）\MindMaster.exe"
    }
    win := ''
}
!4::
{
    win := 'ahk_exe WeChat.exe'
    switch 
    {
        case WinActive(win):
            WinMinimize
        case WinExist(win):
            WinActivate
            ; Send
        default:
            ; Run "D:\Program Files\MindMaster\Edrawsoft\MindMaster（简体中文）\MindMaster.exe"
            Run "D:\Program Files\WeChat\WeChat.exe"
    }
    win := ''
}
!`::
{
    win := 'ahk_exe v2rayN.exe'
    switch 
    {
        case WinActive(win):
            WinMinimize
        case WinExist(win):
            {
                WinActivate
                Send "{Click 495, 164}^a"
                Send "^e"
            }
        default:
            ; Run "D:\Program Files\MindMaster\Edrawsoft\MindMaster（简体中文）\MindMaster.exe"
            Run "D:\Program Files\v2rayN-With-Core\v2rayN.exe"
    }
    win := ''
}
!^`::
{
    if WinExist('ahk_exe v2rayN.exe')
        ProcessClose 'v2rayN.exe'
    else
        MsgBox('v2ray已关闭')
}

; 快捷启动网页
^1::Run "https://www.phind.com/search?home=true"

; 执行python脚本
^`::Run "D:\Workspace\100-ProjectCurrent\140-python_tool\python_tool\venv\Scripts\python.exe D:\Workspace\100-ProjectCurrent\140-python_tool\python_tool\main.py"