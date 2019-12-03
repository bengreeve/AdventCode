	
foreach($mass in Get-Content .\day1.txt) {

$devidedMass = $mass /3
$roundedMass = [math]::Floor($devidedMass)

$fullCost = $roundedMass - 2
$totalFullCost = $totalFullCost + $fullCost
}
Write-Host $totalFullCost