.data
	nl: .asciiz "\n"

.text
	addi $s0, $zero, 8 # addi is used to store an inmediate value to the register
	addi $s1, $zero, 2

	# mul			
	mul $t0, $s0, $s1 # mul returns up to 32bit results
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	# new line
	li $v0, 4
	la $a0, nl
	syscall
	
	#mult
	addi $t0, $zero, 40000
	addi $t1, $zero, 2
	
	mult $t0, $t1 # stores 64bit result in hi-lo registers 
	mflo $t2 # retrieves data from hi-lo registers
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	# new line
	li $v0, 4
	la $a0, nl
	syscall
	
	
	
	
