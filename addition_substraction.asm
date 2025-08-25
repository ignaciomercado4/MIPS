.data
    num1: .word 10
    num2: .word 22

.text
	# load numbers 	to registers
	lw $s0, num1
	lw $s1, num2
	
	# addition
	add $t0, $s0, $s1
	
	li $v0, 1
	move $a0, $t0
	syscall 
	
	# substraction
	sub $t0, $s0, $s1
	
	li $v0, 1
	move $a0, $t0
	syscall 
	