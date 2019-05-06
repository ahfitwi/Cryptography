#Make LLR
#!/usr/bin/tclsh
set english [string toupper [read [open 1_EnglishText.txt]]]
set total [regexp -all {[A-Z]} $english]

foreach x [split ABCDEFGHIJKLMNOPQRSTUVWXYZ ""] {
	set count [regexp -all $x $english]
	set LLR [expr log($count*26.0/$total)]
	lappend out $x $LLR
}
puts "array set LLR { [join $out] }"
