#LLR
#!/usr/bin/tclsh

array set LLR { (stuff from ./makeLLR) }

set data [string toupper [read stdin]]
set sum 0.0
foreach x [split ABCDEFGHIJKLMNOPQRSTUVWXYZ ""] {
set count [regexp -all $x $data]
set sum [expr $sum+$count*$LLR($x)]
}

puts $sum
