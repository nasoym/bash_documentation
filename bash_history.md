## bash history

### bash profile
    export PROMPT_COMMAND="history -a"
    export HISTCONTROL="ignoredups:ignorespace"
    export HISTIGNORE="ls"
    export HISTSIZE=
    export HISTFILESIZE=
    export HISTTIMEFORMAT="%y-%m-%dT%T "
    shopt -s histverify

esc ctrl i

export PROMPT_COMMAND="history -a;" # nach jedem Befehl wird die globale .bash_history Datei aktualisiert

export HISTCONTROL="ignoredups:ignorespace"
# ignoredups : vermeide mehrfach hintereinander den selben Historyeintrag
# ignorespace: wenn Befehle mit Leerzeichen beginnen werden sie nicht in die History aufgenommen

export HISTIGNORE="ls" # einfache ls Kommandos werden nie in die History aufgenommen

# keine Groessen begrenzung fuer die globale .bash_history Datei
export HISTSIZE= 
export HISTFILESIZE=

export HISTTIMEFORMAT="%y-%m-%dT%T " # Format der Historyeintrag Zeitstempel ausgabe

shopt -s histverify # Befehle aus der History muessen erst bestaetigt werden bevor sie ausgefuehrt werden

##history search (ctrl r)
##history completion (esc ctrl i)
##andsearch grep grep
##always limit $(tput lines)

##datesearch foldersearch


history -d
peco
multiline command and date problem
