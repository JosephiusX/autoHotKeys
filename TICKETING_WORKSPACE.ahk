; Function to run an application, wait for its window, and then move and resize it
MoveAndResizeWindow(appPath, windowTitle, newX, newY, newWidth, newHeight) {
    Run, % appPath ; Run the application
    WinWait, % windowTitle ; Wait for the window to appear
    if WinExist(windowTitle) { ; Check if the window exists
        WinActivate ; Activate the window
        WinMove, , , newX, newY, newWidth, newHeight ; Resize and move the window
    } else {
        MsgBox, Window not found: %windowTitle%.
    }
}

; Function to run a command in a new terminal window
RunCommandInTerminal(profile, directory, command) {
    terminalPath := "wt -p """ profile """ -d """ directory """"
    MoveAndResizeWindow(terminalPath, "ahk_class CASCADIA_HOSTING_WINDOW_CLASS", 0, A_ScreenHeight - 450, 1950, 400)
    Sleep, 1000
    Send, % command "{Enter}"
}

; Examples of using the functions
RunCommandInTerminal("Shakura", "C:\Users\josep\OneDrive\Desktop\Microservices\ticketing", "code .")
Sleep, 1500
RunCommandInTerminal("Scarlet", "C:\Users\josep\OneDrive\Desktop\Microservices\ticketing\orders", "npm run test")
Sleep, 1500
RunCommandInTerminal("Jakie Brown", "C:\Users\josep\OneDrive\Desktop\Microservices", "git log --oneline")
Sleep, 1500

; Open a Udemy course in Chrome
MoveAndResizeWindow("chrome.exe", "Udemy - Microservices Course", 0, 0, 1920, 1080)
Send, "https://www.udemy.com/course/microservices-with-node-js-and-react/learn/lecture/19493798?start=150#content{Enter}"


