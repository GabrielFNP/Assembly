.data

msg_num1: .asciiz "\n vamos ver se voce tem disponibilidade para votar em 2022:"
resultado1: .asciiz "\n voce é elegivel para votar em 2022"
resultado2: .asciiz "\n poxa voce ainda não pode votar"
resultado3: .asciiz "\n cara esse ano raspou mais voce pode votar sim"
rs: .asciiz "\n sua idade é::::::> "
ano: .word 2022

.text

li $v0, 4
la $a0, msg_num1
syscall
li $v0, 5
syscall
move $t1,$v0
lw $t3, ano
sub $t2, $t3, $t1

beq $t2,16,igual
bgt $t2,16,maior
blt $t2,16,menor

igual: 
li $v0, 4
la $a0, resultado3
syscall
li $v0, 4
la $a0, rs

syscall
li $v0,10
syscall

maior:
li $v0, 4
la $a0, resultado1
syscall
li $v0,10
syscall

menor:
li $v0, 4
la $a0, resultado2
syscall
li $v0, 4 
la $a0, rs
syscall
 li $v0, 1
 move $a0, $t2
 syscall
li $v0,10
syscall

