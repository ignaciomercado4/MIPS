.data

.text
	addi $s0, $zero, 5
	sll $t0, $s0, 2 # the last argument becomes the exponent of a 2, 
					# so $t0 will store $s0 * 2^1 which equals $s0 * 2
	
	li $v0, 1
	move $a0, $t0
	syscall
	  