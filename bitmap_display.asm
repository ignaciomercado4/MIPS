.data
base: .word 0x10008000   # dirección base de la memoria del display

.text
.globl main
main:
    la $t0, base         # cargar dirección base
    lw $t1, 0($t0)       # dirección de inicio del bitmap (0x10008000)
    
    li $t2, 0x00FF0000   # color rojo (ARGB = 0x00RRGGBB)
    sw $t2, 0($t1)       # escribir el pixel en la primera posición

    li $v0, 10
    syscall
