#generate 100 5-letter strings from a source called "1_EnglishText"
#!/usr/bin/bash

set english [string toupper [read [open 1_EnglishText.txt]]]
set english [regsub -all {[^A-Z]} $english ""]
set noise ABCDEFGHIJKLMNOPQRSTUVWXYZ

proc randchar s {
string index $s [expr int(rand()*[string length $s])]
}
lassign $argv type length

for {set i 0} {$i<$length} {incr i} {
append out [randchar [set $type]]
}
puts $out

