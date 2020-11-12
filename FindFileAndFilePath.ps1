# Powershell Script


<#
This is a sample of how to use powershell to change the path context of a script
This is useful for locating key directories or files on a computer, such as script repositories or config files, and saving those values to variables
#>


# Find a file called myfile1.txt, ignore errors, save output to variable $file
$file = ls -R myfile1.txt -ErrorAction Ignore

# get the path of myfile1.txt from the object $file, save to variable $filePath
$filePath = gi $file.PSParentPath

# change directory to the same directory as myfile1.txt
cd $filePath


<#
Do some other code here (maybe make a call to R or something else)
#>

# renames myfile1.txt to myfile2.txt which causes the above script to not run
ren myfile1.txt myfile2.txt
