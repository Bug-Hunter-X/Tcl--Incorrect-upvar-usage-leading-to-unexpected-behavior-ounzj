proc goodproc {x} { upvar 1 x myx; puts "x is $myx"; return 1 }
goodproc 10