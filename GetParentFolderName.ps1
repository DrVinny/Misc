# look in $HOME\Desktop\SomeFolder and all subfolders under it, for a file called "target.txt", and save to $targetfile
$targetile = gci "$HOME\Desktop\SomeFolder" -Recurse -Include "target.txt" 

# get the PSParentPath property and save to $allRepoDir
$allRepoDir = Get-Item $allRepoFind.PSParentPath


# change context to $all
cd $allRepoDir