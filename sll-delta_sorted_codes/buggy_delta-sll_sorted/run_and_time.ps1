$files = @("append","deleteall", "insert", "listrev","merge")
For ($i=0; $i -lt $files.Length; $i++) {
    $dest = -join("delta-sll_sorted_" + $files[$i] + ".smt2")
    echo $files[$i]
	Measure-Command{z3 $dest | Out-Host}
	}