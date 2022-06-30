

.data
valor1: .asciiz "digite um valor meu coleguinha: "
valor2: .asciiz "digite um valor: "
valor3: .asciiz "digite um valor: "
valor4: .asciiz "digite um valor: "
resultado: .asciiz "o resultado da soma e: "
.text

li $v0, 4
la $a0, valor1 
syscall  
li $v0, 5 
syscall  
move $t1, $v0 

 #segundo numero
li $v0, 4
la $a0, valor2
syscall
li $v0, 5
syscall
move $t2, $v0

#terceiro numero
li $v0, 4
la $a0, valor3
syscall
li $v0, 5
syscall
move $t3, $v0

#quarto numero
li $v0, 4
la $a0, valor4
syscall
li $v0, 5
syscall
move $t4, $v0

#soma dos numeros

add $t5, $t1, $t2
add $t6, $t3, $t4
add $t7, $t5, $t6

li $v0, 4
la $a0, resultado
syscall
li $v0, 1
move $a0, $t7
syscall
