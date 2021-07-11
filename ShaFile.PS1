function Get-FileSHA1($filePath) {
    $fileContent = Get-Content $filePath
    $fileBytes = [System.Text.Encoding]::UTF8.GetBytes($fileContent)
    
    $sha1 = New-Object System.Security.Cryptography.SHA1Managed

    $hash = $sha1.ComputeHash($fileBytes)

    $prettyHashSB = New-Object System.Text.StringBuilder

    foreach ($byte in $hash) {
        $hexNotation = $byte.ToString("X2")
        $prettyHashSB.Append($hexNotation) > $null
    }

    $prettyHashSB.ToString() 
}


function Get-FileSHA256($filePath) {

    $fileContent = Get-Content $filePath
    $fileBytes = [System.Text.Encoding]::UTF8.GetBytes($fileContent)

    $sha256 = New-Object System.Security.Cryptography.SHA256Managed
    $hash = $sha256.ComputeHash($fileBytes)

    $prettyHashSB = New-Object System.Text.StringBuilder
    
    foreach($byte in $hash) {
        $hexNotation = $byte.ToString("X2")
        $prettyHashSB.Append($hexNotation) > $null
    }
    $prettyHashSB.ToString()
}