$possible = 0

for ($in = 146810; $in -le 612564; $in++) {

   
    
    $inputA = $in.ToString()
    $inputB = $inputA.ToCharArray() | ForEach-Object{[string]$_}

    $inputC = $inputB | ForEach-Object{[convert]::ToInt32($_)}

    $assending = 1

    for ($a = 1; $a -lt $inputC.Count; $a++) {
       
        if($inputC[$a-1] -gt $inputC[$a]){
            $assending = 0
        }

    }

    if ($assending -eq 1) {
        if ($assending -eq 1) {

            if ($inputC[0] -eq $inputC[1]) {
                $possible = $possible +1
            }
    
            if ($inputC[0] -ne $inputC[1]) {
    
                if ($inputC[1] -eq $inputC[2]) {
                    $possible = $possible +1
                }
    
                if ($inputC[1] -ne $inputC[2]) {
    
                    if ($inputC[2] -eq $inputC[3]) {
                        $possible = $possible +1
                    }
    
                    if ($inputC[2] -ne $inputC[3]) {
                        
                        if ($inputC[3] -eq $inputC[4]) {
                            $possible = $possible +1
                        }
                        
                        if ($inputC[3] -ne $inputC[4]) {
                        
                            if ($inputC[4] -eq $inputC[5]) {
                                $possible = $possible +1
                            }                    
                        }
                    }
                        
                }
            }           
    
        }       
    }  
}

Write-Host $possible