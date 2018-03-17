$files = @("append","copyall", "cycle_detection", "deleteall","find", "insert, "insert-back", "insert-front", "listrev")
For ($i=0; $i -lt $files.Length; $i++) {
    $dest = -join("delta-sll_" + $files[$i] + ".smt2")
    echo $files[$i]
	Measure-Command{../z3/bin/z3 $dest | Out-Host}
	}