# Pipe

### stdout to file
`command > file.txt`  

`command 2> file.txt` :: stderr to file

`command 1>&2` :: stdout to stderr

`command 2>&1` :: stderr to stdout

`command &> file.txt` :: stderr and stdout to file (?)

`command > file.txt 2>&1` :: stderr and stdout to file

`command 2>&1 | command` 

`command 2>&1 >file.txt` :: stdout to file, **but** stderr to screen!

`command 2>error.txt 1>normal.txt` 

`exec 3<> file.txt`

<pre>
exec 3<> file.txt
echo "ddd" >&3
exec 3<> file.txt
<&3 sed 's/^/AA/g'
</pre>

### Using unbuffer to avoid bufferd stdout

unbuffer is from the package `expect-dev`  

`unbuffer command | command`

`command | unbuffer -p command`
