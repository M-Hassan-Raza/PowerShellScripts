# Get all JPG files in the current folder
$jpgFiles = Get-ChildItem -Filter *.jpg

# Initialize a counter
$counter = 1

# Loop through each JPG file and rename it
foreach ($file in $jpgFiles) {
    # Construct the new file name with the counter
    $newFileName = "image_$counter.jpg"

    # Rename the file
    Rename-Item -Path $file.FullName -NewName $newFileName -Force

    # Increment the counter for the next file
    $counter++
}

Write-Host "Files have been successfully renamed."