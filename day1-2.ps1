Set-Location "c:/AdventCode/"
foreach($mass in Get-Content day1.txt) {

$devidedMass = $mass /3
$roundedMass = [math]::Floor($devidedMass)
$fullCost = $roundedMass - 2
$extraFullCost = $fullCost

while ($fullCost -ge 6)
 {
    $fullCost = $fullCost /3
    $roundedMass = [math]::Floor($fullCost)
    $fullCost = $roundedMass -2
    $extraFullcost = $extrafullCost + $fullCost

}

$totalFullCost = $totalFullCost + $extrafullCost
}
Write-Host $totalFullCost