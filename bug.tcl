proc error_proc {msg} {
    puts stderr "Error: $msg"
    exit 1
}

proc myproc {a b} {
    if {$a == 0} {
        error_proc "Division by zero"
    }
    return [expr {$b / $a}]
}

myproc 0 10