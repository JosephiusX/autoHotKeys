

                                                                                            ; TICKETING PROJECT TAB - OPEN VS CODE
                                                                                            ; Function to run an application, wait for its window, and then resize and move it

MoveAndResizeWindow(appPath, windowIdentifier, newX, newY, newWidth, newHeight)
{
    Run, % appPath                                                                          ; Run the application
    Sleep, 2000                                                                             ; Adjust the sleep duration as needed ; Wait for the application window to appear
    windowID := WinExist(windowIdentifier)                                                  ; Use WinExist to get the window ID based on the provided identifier
    if (windowID)                                                                           ; Check if the ID was successfully retrieved
    { 
        WinActivate, ahk_id %windowID%    ; Activate the window using its ID
        WinMove, ahk_id %windowID%, , newX, newY, newWidth, newHeight                       ; Resize and move the window
    }
    else
    {
        MsgBox, Window not found for %appPath%.
    }
}
                                                                                            ; INITIAL TAB FUNCTION DECLARATION

MoveAndResizeWindow("wt -p Shakura -d C:\Users\josep\OneDrive\Desktop\Microservices\ticketing", "ahk_class CASCADIA_HOSTING_WINDOW_CLASS", 0, A_ScreenHeight - 450, 1950, 400)      
Sleep, 1000
Send, code .{Enter}

Run, wt -p "Scarlet" -d "C:\Users\josep\OneDrive\Desktop\Microservices\ticketing\orders"    ; TESTING TAB 
Sleep, 1000
Send, npm run test {Enter}

Run, wt -p "Jakie Brown" -d "C:\Users\josep\OneDrive\Desktop\Microservices"                 ; GIT TAB
Sleep,1000
Send, git log --oneline {Enter}
Sleep, 1000
Send, q

; UDEMY

Run, chrome.exe "https://www.udemy.com/course/microservices-with-node-js-and-react/learn/lecture/19493798?start=150#content"
Sleep, 1000



targetPID := 37140  ; Replace 37140 with the actual PID                                      ; Define the PID of the window you want to move
WinGet, targetHwnd, ID, ahk_pid %targetPID%                                                  ; Get the unique ID (HWND) of the window using its PID
if (targetHwnd != "")                                                                        ; Check if the window exists ; Move the window to the desired location
{
    WinMove, ahk_id %targetHwnd%, , 921, 0, 1003, 988                                        ; Example: Move to (500, 100)
}
Sleep, 1000

targetID := 7998718                                                                           ; Replace 19740 with the actual PID ; Define the PID of the window you want to move
WinGet, targetHwnd, ID, ahk_id %targetID%                                                     ; Get the unique ID (HWND) of the window using its PID
if (targetHwnd != "")                                                                         ; Check if the window exists
{
    WinMove, ahk_id %targetHwnd%, , 0, 0, 958, 786
}
