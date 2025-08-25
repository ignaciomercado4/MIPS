.text
	addi $s0, $zero, 8 # addi is used to store an inmediate value to the register
	addi $s1, $zero, 2

	# mul			
	mul $t0, $s0, $s1 # mul returns up to 32bit results
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	#mult
	addi $t0, $zero, 2000
	addi $t1, $zero, 10
	
	mult $t0, $t1 # stores 64bit result in hi-lo registers 
	mflo $t2 # retrieves data from hi-lo registers
			 # if the value is too high, also use mfhi
	li $v0, 1
	move $a0, $t2
	syscall
	
	