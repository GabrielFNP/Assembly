.data
lado1: .asciiz "digite um valor para descobrir qual tri�ngulo vai formar:: "
lado2: .asciiz "digite um valor para descobrir qual tri�ngulo vai formar:: "
lado3: .asciiz "digite um valor para descobrir qual tri�ngulo vai formar:: "

esc: .asciiz " tri�nguloescaleno:: "
quila: .asciiz " tri�ngulo equilatero:: "
iso: .asciiz "digite um valor para descobrir qual tri�ngulo vai formar:: "

resultado: .asciiz "O TRIANGULO FORMADO � :: "

.text
#lado1
li $v0, 4 
la $a0, lado1 
syscall 
li $v0, 5  
syscall
move $t1, $v0 

 #lado2
li $v0, 4
la $a0, lado2
syscall
li $v0, 5
syscall
move $t2, $v0

#lado3
li $v0, 4
la $a0, lado3
syscall
li $v0, 5
syscall
move $t3, $v0

beq $t1, $t2, trianguloequilatero

trianguloequilatero:
beq $t3, trianguloequilatero, 


