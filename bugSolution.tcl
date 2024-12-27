proc improved_error_proc {msg} {
    puts stderr "Error in myproc: $msg"
    puts stderr "Stack trace:"
    puts stderr [info level]
    exit 1
}

proc myproc {a b} {
    if {$a == 0} {
        improved_error_proc "Division by zero: a=$a, b=$b"
    }
    return [expr {$b / $a}]
}

myproc 0 10