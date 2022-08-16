# LinuxBashScripting

# Vorbereitung für die Linux und Bash grundlagen

## Grundlagen Linux 
### Skripts starten 
```console
#!/bin/bash
# 
# Beschreibung: 
# Autor       : Martin Künzler
# Version     : 1.0
# Datum       : 2022-06-20
# ############################################################################################
```
### 4 Arten, ein Script auszuführen
```console
bash mkstruct.sh --> Startet das Skript mit der Bash-Shell
chmod +x mkstruct.sh ./mkstruct.sh --> Das File wird ausführbar gemacht und kann mittels ./Skriptname ausgeführt werden
source mkstruct.sh
.  mkstruct.sh
```
### Herausfinden wer bin ich 
```console 
hightruster@svx-ifabep001:~$ whoami
hightruster
```
### Erstellung / Definierung von Variablen
```console
VariablenName=Wert
echo $VariablenName
```
### Quoting und Escaping

### Erstellung von Benutzern 
```console
hightruster@svx-ifabep001:~$ sudo useradd -m username
```

```console
#! /bin/bash
read -p "enter your name:  "  port
useradd -m $port
``` 
### Erstellung von Ordnern 
```console 
hightruster@svx-ifabep001:~$ mkdir "OrdnerName"
```
### GitHub
```console
# 1. 
git config --global user.name "martin.kuenzler"
git config --global user.email "martin.kuenzler@student.ipso.ch"
git git config --list

# 2.
mkdir ~/loesungen/repo
mkdir loesungen
cd loesungen/
mkdir repo
cd ~/loesungen/repo
git init

# 3.
cp ~/loesungen/*.sh .

cp ~/IFA/ITBM/Block01/*.sh ~/IFA/loesungen/repo


# 4.
echo "Geht Dich nichts an" > Geheim
echo Geheim > .gitignore

# 5.
git add *
git commit -m "aufgabe-4 erledigt"
```
## Bearbeitung von Text oder Skriptdateien

### VI Editor
```console 
hightruster@svx-ifabep001:~$ vi "Dateiname"
hightruster
```
* i – Insert at cursor (goes into insert mode)
* a – Write after cursor (goes into insert mode)
* A – Write at the end of line (goes into insert mode)
* ESC – Terminate insert mode
* u – Undo last change
* U – Undo all changes to the entire line
* o – Open a new line (goes into insert mode)
* dd – Delete line
* 3dd – Delete 3 lines.
* D – Delete contents of line after the cursor
* C – Delete contents of a line after the cursor and insert new text. Press ESC key to end insertion.
* dw – Delete word
* 4dw – Delete 4 words
* cw – Change word
* x – Delete character at the cursor
* r – Replace character
* R – Overwrite characters from cursor onward
* s – Substitute one character under cursor continue to insert
* S – Substitute entire line and begin to insert at the beginning of the line
* ~ – Change case of individual character

#### GNU nano 
### Testing von Skripts
### Parameter mitgeben und in Variablen senden

| 

### Berechtigungen überprfügen mit ls -la
|Berechtigungen |  test  |  User |Gruppe | Dateigrösse | Erstellungsdatum | Dateiname
| :---:   | :-: | :-: | :---:  | :-: | :-:| :-:|
-rwxrwxrwx | 1 |  hightruster |  hightruster |422 Jan 24 19:29 |User.sh

### Berechtigungen bedeutung
| r | w | x|
| :-: | :-: | :-: |
|lesen| schreiben| ausführen|
 
### Vergleiche von Zahlen 

## Ausgaben von Fehlern in File 
Kommand >/dev/null 2>&1

Einlesen von Informationen aus einem File 
done>
## Array 
Ein Array startet mit dem ersten Wert bei 0
| 0 | 1 | 2|
| :-: | :-: | :-: |
|A| B| C|
### Array mit mehreren Werten speichern
```console
Array1=(A B C)

declare -a Array2
Array2[0]=A
Array2[1]=B
Array2[2]=C
```
### Array auf Werte zugreifen
```console
echo ${Array1[1]}
B
```
### Array erweitern
```console
Array1+=(D)

declare -a Array2
Array2[0]=A
Array2[1]=B
Array2[2]=C
```
### Assoziatives Array 
#### Deklarieren eines Assoziativen Arrays 
```console
hightruster@svx-ifabep001:~$ declare -A AssoziativesArray 
```
#### Zusweisen von Werten in Assoziatives Array
```console
hightruster@svx-ifabep001:~$ AssoziativesArray[Key]="Wert"
```
### Datum 
```console
Today=$(date "+%Y%m%d-%H:%M:%S") 
```
### Erstellen von Ordnerstruktur mit visual 
#! /bin/bash
# Creating variable for the start setup script
#
```console 
echo "**************************************"
echo "Start to configure your own LinuxServer"
echo "**************************************"

echo "What is the name of your school"
read schoolname
$(mkdir $schoolname)
echo -ne '#####                     (33%)\r'
sleep 2
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
cd $schoolname

echo "What block do you visit of this modul"
read partOfModul
$(mkdir $partOfModul)
echo -ne '#####                     (33%)\r'
sleep 2
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
```
### Parameter Expansion
```console
${Variablenname:-Default-Wert}
## Bsp. ${1:-"ssh"}
```

### Positionsparameter
|$0 | $1 |  $2 |$3 |$4 |$5 |$6 |$7 |$8 |$9 |
| :---:   | :-: | :-: | :---:  | :-: | :-:| :-:|:-:|:-:|:-:|
Skriptname | Parameter 1 |Parameter 2 |Parameter 3 |Parameter 4 |Parameter 5 |Parameter 6 |Parameter 7 |Parameter 8 |Parameter 9 |

```console
echo $0     # gibt den Namen des Skripts aus
echo $1     # gibt den ersten Parameter aus 
echo $2     # gibt den zweiten Parameter aus
echo $3     # gibt den dritten Parameter aus
echo $4     # gibt den vierten Parameter aus 
echo $5     # gibt den fünften Parameter aus
echo $6     # gibt den sechsten Parameter aus 
echo $7     # gibt den siebten Parameter aus
echo $8     # gibt den achten Parameter aus
echo $9     # gibt den neunten Parameter aus
echo $#     # gibt die Anzahl der mitgegeben Parameter aus
```

### Parameter Test Skript
```console

```

### I/O Kanäle der Shell 

#### stdout

#### stderr

### Kontollstrukturen 

### Formatierung von Tabelle 
```console
student@p-be-11-s2205-student-5:~$ mount | grep 'var' | cut -d' ' -f1
```

### Alle Signal-Code
 1) SIGHUP       2) SIGINT       3) SIGQUIT      4) SIGILL       5) SIGTRAP
 6) SIGABRT      7) SIGBUS       8) SIGFPE       ### 9) SIGKILL     10) SIGUSR1
11) SIGSEGV     12) SIGUSR2     13) SIGPIPE     14) SIGALRM     15) SIGTERM
16) SIGSTKFLT   17) SIGCHLD     ### 18) SIGCONT     ### 19) SIGSTOP     ### 20) SIGTSTP
21) SIGTTIN     22) SIGTTOU     23) SIGURG      24) SIGXCPU     25) SIGXFSZ
26) SIGVTALRM   27) SIGPROF     28) SIGWINCH    29) SIGIO       30) SIGPWR
31) SIGSYS      34) SIGRTMIN    35) SIGRTMIN+1  36) SIGRTMIN+2  37) SIGRTMIN+3
38) SIGRTMIN+4  39) SIGRTMIN+5  40) SIGRTMIN+6  41) SIGRTMIN+7  42) SIGRTMIN+8
43) SIGRTMIN+9  44) SIGRTMIN+10 45) SIGRTMIN+11 46) SIGRTMIN+12 47) SIGRTMIN+13
48) SIGRTMIN+14 49) SIGRTMIN+15 50) SIGRTMAX-14 51) SIGRTMAX-13 52) SIGRTMAX-12
53) SIGRTMAX-11 54) SIGRTMAX-10 55) SIGRTMAX-9  56) SIGRTMAX-8  57) SIGRTMAX-7
58) SIGRTMAX-6  59) SIGRTMAX-5  60) SIGRTMAX-4  61) SIGRTMAX-3  62) SIGRTMAX-2
63) SIGRTMAX-1  64) SIGRTMAX

### Wichtige Signale 
|Signal | Nr. |  Auslöser  | Standardreaktion 
| :---:   | :-: | :-: | :---:  | 
SIGHUP | Parameter 1 |Parameter 2 |Parameter 3 

```console
../Block02/mkscript1_1.sh "trap.sh" "jobs" "Martin KÃ¼nzler" "1.0"
```

# Aufgabe 

## daten_austausch.sh

***

Schreiben Sie ein Script, welches Daten aus einer Named Pipe einliest und ausgibt.

Hauptfunktion

Das Script soll aus der Named Pipe "austausch" Daten einlesen, welche durch eine andere Shell eigegeben wurden, und ausgeben. Wenn nur das Wort "Ende" eingelesen wird, soll das Script mit der Meldung: 

"Es gibt keine weiteren Daten mehr" 

beenden.

Beispiel


Terminal 1: bash daten_austausch.sh
Terminal 2: echo Hallo >austausch
Terminal 1: Hallo
Terminal 2: echo Ende gut >austausch
Terminal 1: Ende gut
Terminal 2: echo Ende >austausch
Terminal 1: Es gibt keine weiteren Daten mehr
Terminal 1: Script ist beendet
Fehlerbehandlung

Es sollen folgende Fehlermöglichkeiten behandelt werden:

Es soll geprüft werden, ob die Named Pipe "austausch" schon existiert, wenn ja, ist gut

Wenn nein, soll geprüft werden, ob eine andere Datei oder ein Verzeichnis mit dem Namen "austausch" existiert. Wenn ja, soll dieses zuerst gelöscht werden und anschliessend die Named Pipe "austausch" erstellt werden.

Wenn nein, soll nur die Named Pipe "autausch" erstellt werden.

Einschränkungen

Verwenden Sie keine andere Shell als /bin/bash



if [ ! -p austausch ]
then
if [ -e austausch ]
rm -r austausch
fi
mkfifo austausch
fi

while true
do
data=$(cat austausch)
if [[ $data =~ ^Ende$ ]]
then
break
else
echo $data
fi
done

echo "Es gibt keine weiteren Daten mehr"

### Fehlerbehebungen
Parameter welche mitgegeben wurden auf Anzahl überprüfen
```console
if [ $# -ne 1 ]; then
    echo "usage: $(basename $0) name" 1>&2
    exit 1;
fi
```
# Fehlerbehandlung e)
```console
if [ ! -e "$name" ]; then
    echo "error: $name not found." 1>&2
    exit 2;
fi
```
# Fehlerbehandlung f)
```console
if [ ! -f "$name" ]; then
    echo "error: $name is not a normal file." 1>&2
    exit 3;
fi

# Fehlerbehandlung g)
if [ ! -r "$name" ]; then
    echo "error: cannot read $name. Permission denied." 1>&2
    exit 4;
fi


### Netzwerkinfos 
```


### Einlesen und ausgeben von Dateiinhalt ohne angaben von  Datei

```console
sed 's/^[0-9]*[.)]* //' $1
```

Anlegen von Gruppen 
addgroup GRUPPENNAME 

### Ersetzen von Werten für SSH ohne Interaktion

sed -i 's/^PermitRootLogin no/PermitRootLogin yes/' /etc/ssh/sshd_config
# Service wird nach dem Ausführen direkt anwendbar. 
service ssh restart


### Systemcommands
Uptime der Linuxmachine --> Uptime -s
last system boot --> who -b


### Überprüfungen 
File exitiert

ist ein Parameter mitgegeben? 

### Beispiele für Skripts
Aufgabe 2 Musterlösung Aufgabe 2

```console
LOGDIR=${LOGDIR:=$HOME}
datum=`date +"%Y.%m.%d %H:%M:%S"`

if [ ${#} -gt 0 ]
then
command="$*"
else 
echo 'usage: $[0] command' 1>&2 
exit 1
fi

if ! [ -w $LOGDIR/aufgabe-002.log]
then
echo "error: cannot write to logfile "
exit 2
fi


exec >>$LOGDIR/aufgabe-002.log 2>&1
eval $command
ecode=$?

if [ $? -eq 0 ]
then 
echo "$datum $command SUCCESS"
else 
echo "$datum $command FAILURE Exit-Code: $ecode"
fi 
```
