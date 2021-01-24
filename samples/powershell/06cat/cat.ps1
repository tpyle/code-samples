param (
    $file
)


$reader = [System.IO.File]::OpenText($file);
for() {
    $line = $reader.ReadLine();
    if ($line -eq $null) {
        break;
    }
    Write-Host $line;
}
