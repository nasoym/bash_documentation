<<multilinecommentid
multilinecommentid

bc
      scale=10
      pi=4*a(1)

.intputrc:
  set editing-mode vi
bash:
  set -o vi
  set -o emacs

$#      # numbers of command line parameters
$0      # file name of current script
$1 ..   # first command line parameter
$$      # pid of process
$*      # all positinal paramteres
$@      # all paremters

$?      # return code of last command
$!      # pid of last executed background process

. main.sh   ## runs the shell script in the current process instead of running it in its own subshell

# variables

X="a
b
c
d
e"

set -e # Exit script immediately on first error.
set -o pipefail # exit also if a command in a pipe fails
set -x # Print commands and their arguments as they are executed.

# for loops:
  (A="2868 2864 2867 2869 2865 2865 2870 2866 2871" ;for B in $A;do redmine_issues assign_to $B; done)

  for I in $AUDIO_ARRAY
  do
    trap break SIGTERM SIGINT SIGHUP

    A=(a b c d e f)
    for I in "${A[@]}"
    do
        echo ">>$I<<"
    done

    echo "-----------------------"

    for I in a b c d e f
    do
        echo ">>$I<<"
    done

    echo "-----------------------"

    B=("a" "b" "c" "d")
    for I in ${B[@]}
    do
        echo ">>$I<<"
    done


    for I in $(seq 100 5 700)

    for i in `ls -R ~/*.txt`; do echo ">$i<"; done

    for i in {1..5}; do echo $i; done

    for (( c=1; c<=5; c++ ))
    do
       echo "Welcome $c times"
    done

    # parsing files
        for i in `cat ~/test.txt`; do echo ">$i<"; done

        while read line; do echo $line; done < ~/test.txt

        for l in $(< ~/test.txt);do echo ">$l<"; done

# if:

    ( false && echo "Y" || echo "N" ) | sed 's/^/>>>>/g'

    [ -d dkdkdk ]
    [ -d /Users/dkdk/dkdk ]
    [ ! -d /dkdkdk ]

    if [ ! -d /dkdk/dkdk ]
    then 
    elif [ "dd" ]
    then
        mkdir /dkdk/dkdk
    else
    fi

    if [ -d "dkdk" ] && [ -x "dkdk" ]

    if [ ! -d /dkdk/dkdk ];then mkdir /dkdk/dkdk; fi

    # check if string contains sub string
        if [[ "main_string" =~ "partial_match" ]]

    # check for regular expression match
        [[ "abcddd" =~ ^abc(d){3}$ ]] && echo "Y"
        [ $(echo "abcddd" | grep -E "^abc(d){3}$") ] && echo "Y"

    # file test operators: http://tldp.org/LDP/abs/html/fto.html

    [ $X -lt 0 ]        # less than
    [ $X -gt 0 ]        # greater than
    [ $X -le 0 ]        # less or equal
    [ $X -ge 0 ]        # greater or equal
    [ $X -eq 0 ]        # equal
    [ $X -ne 0 ]        # equal not equal
    [ $X = 0 ] 
    [ $X = "hello" ] 
    [ $X != "hello" ] 
    [ -z $X ]             # $X is empty
    [ -n $X ]             # $X is of nonzero length
    [ -d $X ]             # $X is a valid directory
    [ -f $X ]             # $X is a valid file
    [ -w $X ]             # $X is writable file
    [ -r $X ]             # $X is readable file
    [ -s $X ]             # $X is non empty file
    [ -x $X ]             # $X is a valid executable
    [ $X -nt "/file" ]    # $X is a file which is newer than /file
    [ $X ]                # check existence of variable

    # all equal
        $X=4
        $X="4"
        $X='4'

        [ $X ]
        [ "$X" ]
        [ $X -ge 0 ]
        [ $X -ge "0" ]
        [ $X = "hello" ]
        [ $X = hello ]


# find & for:

    find . -print0 | while read -d $'\0' file
    do
      echo -v "$file"
    done

    while true; do

    done

    find . -print0 | while read -d $'\0' file; do cp -v "$file" /tmp; done

    for FILENAME in $(find . -type f -name '*_log' -print | sed 's/^\.\///')
    do
      if [ $FILENAME != *_log$TODAY.log ] ; then
        echo $FILENAME
        mv $FILENAME /export/home/
        echo "file moved from the logs direcory"
      fi
    done

    # processing files with spaces:
        find . -type f -name "*.vnc" -print0 | while read -d $'\0' i
        do
          echo
          echo

          FILE=`echo $i | sed 's/ /\\ /g'`
          echo "$FILE"
          echo $i | sed 's/ /\\ /g' | xargs cat | sed -n '/^host/p' | sed 's/^host=//g'
          echo $i | sed 's/ /\\ /g' | xargs cat | sed -n '/^host/p' | sed 's/^host=//g' | tr -d '\r\n' | xargs ping -c 1 | sed -n '1p'
        done

read from stdin
  while read LINE; do
    echo "$LINE"
  done


http://misc.flogisoft.com/bash/tip_colors_and_formatting

echo -e "\e[1;31m This is red text \e[0m"
  echo -e "\033[$COLOR $COLOR \033[0m"


Black       0;30     Dark Gray     1;30
Blue        0;34     Light Blue    1;34
Green       0;32     Light Green   1;32
Cyan        0;36     Light Cyan    1;36
Red         0;31     Light Red     1;31
Purple      0;35     Light Purple  1;35
Brown       0;33     Yellow        1;33
Light Gray  0;37     White         1;37


:    # stands for true

  : `some_command`
  some_command > /dev/null
    #both do the same thing: execute command but do not show output

:> file.log  # truncate a file to zero bytes

# assign FOO=bar iff FOO is unset  , use variable assingment as side effect
: ${FOO:=bar}


# emulating arrays
NAMES=Bob:Allen:Jane
for Name in NAMES ; do
    echo "$Name: Hello!"
done


echo "$(tput setaf 1)Hello, world$(tput sgr0)"

# text formating
    # text coloring
    tput setaf 0  	# Black
    tput setaf 1  	# Red
    tput setaf 2  	# Green
    tput setaf 3  	# Yellow
    tput setaf 4  	# Blue
    tput setaf 5  	# Purple
    tput setaf 6  	# Cyan
    tput setaf 7  	# White
    tput sgr0     	# Text reset

    # Following are the tput details further#
    tput setab [1-7] 	# Set a background colour using ANSI escape
    tput setb [1-7] 	# Set a background colour
    tput setaf [1-7] 	# Set a foreground colour using ANSI escape
    tput setf [1-7] 	# Set a foreground colour

    # tput Text Mode Capabilities#
    tput bold 	# Set bold mode
    tput dim 	# turn on half-bright mode
    tput smul 	# begin underline mode
    tput rmul 	# exit underline mode
    tput rev 	# Turn on reverse mode
    tput smso 	# Enter standout mode (bold on rxvt)
    tput rmso 	# Exit standout mode
    tput sgr0 	# Turn off all attributes (doesn’t work quite as expected)



#print variables with default values:
http://www.cyberciti.biz/tips/bash-shell-parameter-substitution-2.html
http://www.linuxjournal.com/content/bash-parameter-expansion

    I=laksjdbfhlksdbf
    IL=sdfgsdfgdfg

    echo ${I}
    echo ${I}L
    echo $IL

    echo ${I:+bla}
    echo ${I+bla}
    echo ${I:bla}
    echo ${I:=bla}

    echo ${I/l/L}  :: replace first l with L
    while read I ; do echo ${I/172/foo/} ; done < /etc/hosts
    while read I ; do echo ${I/172/foo} ; done < /etc/hosts

#execute output of command:
    $(echo 'pwd')
    echo $(pwd)
    echo $(( 10 ** 3 ))
    echo $(( 10 ** 16  ))
    echo $(( 10 ** (1/3)  ))
    I=10
    echo $(( 10 ** $I  ))
    echo $(date | grep . )
    echo $(date | grep . )


${parameter:-defaultValue}  Get default shell variables value
${parameter:=defaultValue}  Set default shell variables value
${parameter:?"Error Message"} Display an error message if parameter is not set
${#var} Find the length of the string
${var%pattern}  Remove from shortest rear (end) pattern
${var%%pattern} Remove from longest rear (end) pattern
${var:num1:num2}  Substring
${var#pattern}  Remove from shortest front pattern
${var##pattern} Remove from longest front pattern
${var/pattern/string} Find and replace (only replace first occurrence)
${var//pattern/string}  Find and replace all occurrences


#execute command in subshell:
    (pwd)

#checking if is built in or not:
    which [
    which [[

    alias 
    alias -?

    [ $I ]
    [[ $I ]]


set -u  :: exit script if using uninitilised variable
            or:  set -o nounset
set -e  :: exit shell script immediately if any commands returns non-true
            or: set -o errexit



tea timer: 
    for m in {1..6}; do for s in {0..5}; do echo $((s*10)); sleep 10; done; echo "------ $m"; done
    for m in {0..5}; do echo -ne "$m : "; for s in {0..5}; do echo -ne "$((s*10)) "; sleep 10; done; echo ""; done


A=4 B=5 ./test.sh

function hl(){
    for I in {1..50}; do echo -n "="; done; echo
}

HL(){
    for I in {1..50}; do echo -n "="; done; echo
}

hl


# variable overwritting

if [ ! $VAR2 ]; then
  VAR2="hello" 
fi

if [ ! -z $VAR2 ]; then
  VAR2="hello" 
fi

VAR2=${VAR2:-foo}

: ${VAR2:=bbbbuuu}

echo "var2: $VAR2"


dynamic variable name
  ${!VARIABLE_NAME}


