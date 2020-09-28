param (
    [Parameter(Mandatory=$true)]
    $numbers
)


function Test-IsPrime {
    param (
        [int] $number
    )
    $limit = [math]::Sqrt($number)
    For ($i=2; $i -le $limit; $i++) {
        if ($number % $i -eq 0) {
            return $false
        }
    }
    return $true
}

$numbers.Split(",") 
#    | ForEach-Object { [int]$_ } 
    | ForEach-Object { "$_ => $(Test-IsPrime $_)" } 
    | Write-Host
