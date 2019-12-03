$sourceCode = 1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,10,19,2,9,19,23,2,23,10,27,1,6,27,31,1,31,6,35,2,35,10,39,1,39,5,43,2,6,43,47,2,47,10,51,1,51,6,55,1,55,6,59,1,9,59,63,1,63,9,67,1,67,6,71,2,71,13,75,1,75,5,79,1,79,9,83,2,6,83,87,1,87,5,91,2,6,91,95,1,95,9,99,2,6,99,103,1,5,103,107,1,6,107,111,1,111,10,115,2,115,13,119,1,119,6,123,1,123,2,127,1,127,5,0,99,2,14,0,0
$totalNumber = $sourceCode.Count
$arrayNumber = 0

$sourceCode[1] = 12
$sourceCode[2] = 2

while ($arrayNumber -le $totalNumber) {
    $firstPosition = $arrayNumber+1
    $firstValue = $sourceCode[$firstPosition]

    $secondPosition = $arrayNumber+2
    $secondValue = $sourceCode[$secondPosition]

    $resultValue = $arrayNumber+3

    if ($sourceCode[$arrayNumber] -eq 1) {
       
        $calculate = $sourceCode[$firstValue] + $sourceCode[$secondValue]
       # Write-Host $calculate
        $resultPosition = $sourceCode[$resultValue]

        $sourceCode[$resultPosition] = $calculate
       # Write-Host $sourceCode
    }

    if ($sourceCode[$arrayNumber] -eq 2) {
       
        $calculate = $sourceCode[$firstValue] * $sourceCode[$secondValue]
      #  Write-Host $calculate
        $resultPosition = $sourceCode[$resultValue]

        $sourceCode[$resultPosition] = $calculate
       #Write-Host $sourceCode
    }

    if ($sourceCode[$arrayNumber] -eq 99) {
        break
    }

  $arrayNumber = $arrayNumber+4
}

Write-Host $sourceCode[0]