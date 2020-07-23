; ; -----------------------------------------------------
; ; global needs to be the first line
; ; global hati := {1: "first", 2: "second", 3: "third"}
; global hati := Object()

; #f::
; InputBox, given_number, Give a number,
; hati[(given_number)] := "fourth"given_number
; return

; #+f::
; ; InputBox, given_number, Give a number,
; ; val := hati[(given_number)]
; len := hati.MaxIndex()
; MsgBox, %len%
; ; MsgBox, %val%
; return

; ; ----------------------------------------------------------

; Run Firefox
#+z::
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox
return

; Sleep
#+e::
    Shutdown, cmd.exe rundll32.exe powrprof.dll,SetSuspendState
return

; Shutdown
#^+e::
    Shutdown, 1
return


; Close Focused Window
#+q::
    WinGet, active_id, ID, A
    WinClose, ahk_id %active_id%
return

; Maximizes Focused Window
; #f::
; WinGet, maximize_status, MinMax, A
; if (maximize_status == 1) {
; WinRestore, A
; } else {
; WinMaximize, A
; }
; return

; Create Video Project
#+c::
    InputBox, project_name, Create New Project, Enter new project name.
    if (project_name != "") {
        ; create variables
        project_path = D:\work\video_projects\projects\%project_name%
	script_path = D:\work\video_projects\projects\scripts
        audio = %project_path%\%project_name%_audio
        image = %project_path%\%project_name%_image
        video = %project_path%\%project_name%_video
        file_name = %script_path%\%project_name%.txt
        
        ; create dir & file
        FileCreateDir, %audio%
        FileCreateDir, %image%
        FileCreateDir, %video%
        FileAppend, , %file_name%
        MsgBox, %project_name% created successfully!!!
    } else {
        MsgBox, Project name can't be empty!
    }
return

