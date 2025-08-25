.data 
	num1: .word 1
	num2: .word 12
	
.text
	lw $t0, num1($zero)
	lw $t1, num2($zero)
	add $t2, $t1, $t2
	

	li $v0, 1
	move $a0, $t2 # becomes add $a0, $zero, $t2
	syscall