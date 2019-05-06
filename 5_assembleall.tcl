#!/usr/bin/tclsh
!
lassign $argv test len trials
!
for {set i 0} {$i<$assembleall} {incr i} {
set E [exec ./2_RandomText.tcl english $len | ./$test.tcl]
set N [exec ./2_RandomText.tcl noise $len | ./$test.tcl]
puts "$E \t $N"
}



