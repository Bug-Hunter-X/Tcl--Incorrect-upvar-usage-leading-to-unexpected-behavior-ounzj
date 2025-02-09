proc badproc {x} { puts "x is $x"; return 1 } 
proc goodproc {x} { upvar 1 x myx; puts "x is $myx"; return 1 }
badproc 10
goodproc 10