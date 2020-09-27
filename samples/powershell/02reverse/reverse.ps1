param (
    [Parameter(Mandatory=$true)]
    $args
)


$started = $false
$args.Split(",") | Sort-Object -Descending {(++$script:i)} | ForEach-Object {
    if ($started) {
        Write-Host -NoNewline " "
    } else {
        $started = $true
    }
    Write-Host -NoNewline $_
}
Write-Host
