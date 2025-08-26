.data
    base: .word 0x10008000   

.text
    la $t0, base         
    lw $t1, 0($t0)       

    li $t2, 0x00FF0000   
    sw $t2, 0($t1)       
    
    li $v0, 10
    syscall
