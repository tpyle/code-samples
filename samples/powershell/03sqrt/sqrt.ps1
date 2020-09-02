param (
    [Parameter(Mandatory=$true)]
    [double] $number
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

findSqrt $number | Write-Host
