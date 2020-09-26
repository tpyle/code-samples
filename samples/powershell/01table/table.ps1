Set-Variable LIMIT -option Constant -value 5


for ($a=0; $a -le $LIMIT; $a++) {
    if ($a -eq 0) {
        Write-Host -NoNewline ("{0, -3}" -f "")
    } else {
        Write-Host -NoNewline ("{0,-3}" -f $a)
    }
    for ($b=1; $b -le $LIMIT; $b++) {
        if ($a -eq 0) {
            Write-Host -NoNewline ("{0, -3}" -f $b)
        } else {
            Write-Host -NoNewline ("{0,-3}" -f ($a*$b))
        } 
    }
    Write-Host
}
