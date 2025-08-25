.data
    my_string: .asciiz "Hello world\n"
    my_byte: .byte  'a'
    my_word: .word 21
    my_float: .float 2.555555 # up to 6 decimals
    my_double: .double 4.111111111111 # up to 12 decimals

.text
	# printing a string 
    li $v0, 4
    la $a0, my_string
    syscall

	# printing a byte
    li $v0, 4
    la $a0, my_byte
    syscall

	# printing a word
    lw $t0, my_word
    li $v0, 1
    add $a0, $zero, $t0 # coukd be changed to use the 'move' pseudoinstruction
    syscall
    
    # printing a float
    li $v0, 2
    lwc1 $f12, my_float
    syscall
    
    # printing a double
    li $v0, 3
    ldc1 $f12, my_double
    syscall
