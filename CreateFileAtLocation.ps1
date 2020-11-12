# Note: Path and Value are required

# gal sc = Set-Content

#This creates a blank hello.txt file on the current users' desktop, and appends a timestamp at the beginning of the filename

sc -Path "$HOME\Desktop\$(date -Format "yyyyMMddHHmmss")hello.txt" -Value ''