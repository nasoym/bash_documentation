## bash string manipulation
* ${#VAR}  stringlength
* ${VAR:<pos number>}  read string starting from pos
* ${VAR:<pos number>:count}  read string starting from pos for count
* ${VAR:<negative number>}  read string indexed from the end of string
* ${VAR#substr} delete shortest match of substr from begining
* ${VAR##substr} delete longest match of substr from begining
* ${VAR%substr} delete shortest match of substr from end
* ${VAR%%substr} delete longest match of substr from end
* ${VAR/substr/replace} replace first match of substr with replace
* ${VAR//substr/replace} replace all match of substr with replace
* ${VAR/#substr/replace} replace match of substr with replace if match at front
* ${VAR/%substr/replace} replace match of substr with replace if match at end

* ${VAR-$FOO} if VAR not set use FOO 
* ${VAR:-$FOO} if VAR not set use FOO 
* ${VAR=$FOO} if VAR not set set to FOO 
* ${VAR:=$FOO} if VAR not set set to FOO 
* ${VAR+$FOO} if VAR set use FOO 
* ${VAR:+$FOO} if VAR set use FOO 
* ${VAR?$FOO} if VAR not set exit with message in FOO and exit status
* ${VAR:?$FOO} if VAR not set exit with message in FOO and exit status

    ${!PREFIX*} match names of all declared variables starting with prefix
    ${!PREFIX@} match names of all declared variables starting with prefix


