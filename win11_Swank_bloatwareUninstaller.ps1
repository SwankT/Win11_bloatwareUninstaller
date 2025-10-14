### Win11_swank_bloatwareUnistaller
### Created By: Tyler Swank - October 2025
###
### If script fails, please report issues to https://github.com/SwankT/Win11_bloatwareUninstaller
##############################################################################################################
# This script is not digitally signed. You must change your systems powershell policy to use.
# This can be done by running 'Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine' within an admin authorized terminal.
#
# You can find more details regarding Windows PowerShell Policies here (recommended):
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.5
#
# Before use, run 'winget list' to see all your installed programs. 
# Then add the names of what you want removed to the '$bloatArray' list.
#
##############################################################################################################

# Search List
$bloatArray = "Microsoft Bing", "Microsoft Clipchamp", "Microsoft News", "Microsoft Teams", "MSN Weather", "Get Help", "Outlook for Windows", "Power Automate", "Microsoft Engagement Framework", "Skype", "Start Experiences App", "Store Experience Host", "Microsoft Store", "Solitaire & Casual Games", "Xbox", "Xbox Identity Provider", "Xbox TCUI", "Xbox Game Bar Plugin", "Game Bar", "Game Speech Window", "Phone Link", "Quick Assist", "Windows Web Experience Pack", "Cross Device Experience Host"

##############################################################################################################

"Swank's Windows 11 Bloatware Uninstaller"
Write-Host "------------------------------------------------------------"
Write-Host ""

# Find each item in list
foreach ($item in $bloatArray) {
	$result = (winget list --exact "$item" | Select-String -Pattern "$item" | Out-String)
	Write-Host "Name: "$item
	
	# count spaces in item name -> acounts for split shifting
	$count = ($item -split " ").Count
	
	# seperare string by spaces -> Obtains ID
	$splitArray =$result.Split(" ")
	
	# Uninstall if ID is found
	if (-not $splitArray[$count] -eq "") {
		Write-Host "ID: " $splitArray[$count]
		winget uninstall --force $splitArray[$count]
	}
	
    # handle ID not found
	else {
		Write-Host $item " - Not found on local system."
		
		# winget search online repo
		$result2 = (winget search --exact --name "$item" | Select-String -Pattern "$item" | Out-String)
		
		# provide more context
		if ($result2 -eq "") {
			Write-Host "Notice: Not found online. Please verify provided name."
		}
		else {
			Write-Host "Found online but not currently installed."
		}
	}
	
	Write-Host "------------------------------------------------------------"
	Write-Host ""
}

Write-Host "Windows 11 Bloatware Uninstall Complete!"
