$files = @("append","copyall", "cycle_detection", "deleteall","find", "insert, "insert-back", "insert-front", "listrev")
echo off
SET /a i=0
:loop
IF %i%==8 GOTO END
Measure-Command{../../z3/bin/z3 $files[%i] | Out-Host}
SET /a i=%i%+1
GOTO LOOP
:end