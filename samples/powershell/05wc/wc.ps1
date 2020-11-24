param (
    $file
)

$lines = 0;


$reader = [System.IO.File]::OpenText($file);
for() {
    $line = $reader.ReadLine();
    if ($line -eq $null) {
        break;
    }
    $lines++;
}

Write-Host $lines;
