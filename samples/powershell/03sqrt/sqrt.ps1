param (
    [Parameter(Mandatory=$true)]
    $numbers
)


function findSqrt {
    param (
        [double] $number
    )
    $x = $number
    $y = 1
    Set-Variable e -option Constant -value 0.000001
    While ($x - $y -gt $e) {
        $x = ($x + $y) / 2
        $y = $number / $x
    }
    return $x
}

$numbers.Split(",") | ForEach-Object { [double]$_ } | ForEach-Object { "$_ => $(findSqrt $_)" } | Write-Host
