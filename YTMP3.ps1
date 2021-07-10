#Created by Segilmez06

if(Test-Path .\music.txt)
{
    Write-Host "Music list found."
    Write-Host "Reading file."
    if(Get-Content .\music.txt)
    {
        foreach($line in Get-Content .\musics.txt) 
        {
            if($line -match $regex)
            {
                ./youtube-dl --extract-audio --audio-format mp3 $line
            }
        }
    }
    else
    {
        Write-Host "No URL's found in file. Please add URL's to music.txt file."
        & '.\music.txt'
    }
}
else
{
    Write-Host "Music list not found."
    New-Item .\music.txt > ""
    Write-Host "Created file. Add URL's to file and retry."
    & '.\music.txt'
}

Write-Host "Operation completed."