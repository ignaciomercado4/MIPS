.data
	msg: .asciiz "Hello\n"

.text
	main: # we define procedures using labels the same way we do on variables
		jal print_message # jumps to the procedure and stores the following instruction to $ra
		
		li $v0, 10 # exit flawlessly
		syscall	
		
	
	
	print_message:
		li $v0, 4
		la $a0, msg
		syscall
		
		jr $ra # jumps to $ra register to keep executing the 
			   # following instruction after the current procedure finished
		