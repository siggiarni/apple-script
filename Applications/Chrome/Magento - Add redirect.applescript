use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Google Chrome"
	activate
	execute front window's active tab javascript "document.querySelectorAll('label[for=request_path]')[0].click();"
end tell

tell application "System Events"
	
	-- Set the Request Path
	keystroke "request-path"
	delay 0.5
	
	keystroke tab
	delay 0.5
	
	-- Set the Target path
	keystroke "target-path"
	delay 0.5
	
	keystroke tab
	delay 0.5
	
	-- Set the redirect type
	keystroke "p"
	delay 0.5
	
end tell

tell application "Google Chrome"
	-- Save redirect
	execute front window's active tab javascript "document.querySelector('#save').click();"
end tell

-- Remember to enable AppleScript in Google Chrome:
-- View → Developer → Allow JavaScript from Apple Events