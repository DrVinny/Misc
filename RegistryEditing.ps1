# Example registry value to edit:
# HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\SearchboxTaskbarMode
# This value can be set to 0, 1, or 2

# Sample Script to search for registry values:

# Saving the key and property name as variables
$keyVar = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
$nameVar = "SearchboxTaskbarMode"
$valueVar = "0"

# Run a check to see if the value exists and save to $checkResult
$checkResult = (gp $kVar -Name $vVar).$vVar

if ($checkResult -eq $null){
    
    New-Item -Path $keyVar -Force | Out-Null

    New-ItemProperty -Path $keyVar -Name $nameVar -Value $valueVar `

    -PropertyType DWORD -Force | Out-Null

}
else {
    echo "its not null"
}









# Resources: https://devblogs.microsoft.com/scripting/update-or-add-registry-key-value-with-powershell/