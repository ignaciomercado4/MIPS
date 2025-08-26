.text
	# 1st way
	addi $s0, $zero, 21
	addi $s1, $zero, 4
	div $s0, $s1 # quotient gets stored in lo, remainder in hi
				 
				 # to store result in a register, add the desired
				 # result register as a first parameter
	
	
	# print quotient
	li $v0, 1
	mflo $a0 # shorter variant of  mflo $t0
			 #					   add $a0, $zero, $t0
	syscall
	
	# print remainder
	li $v0, 1
	mfhi $a0 # shorter variant of  mfhi $t0
			 #					   add $a0, $zero, $t0
	syscall
	
	
	
	# 2nd way, 
	div $t0, $s0, $s1 # no need to retrieve quotient and remainder
					  # from hi&lo since we give a result storing register
					  # they still get stored in hi&lo though
	li $v0, 1
	move $a0, $t0
	syscall
	
	
	