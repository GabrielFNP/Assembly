.data

menu: .asciiz "\n##OPERAR��ES##\nDigite 0 para sair;\nDigite 1 para somar;\nDigite 2 para subtrair;\nDigite 3 para multiplicar;\nDigite 4 para dividir.\n"
pri: .asciiz "Digite o primeiro numero: "
seg: .asciiz "Digite o segundo numero: "
resultado: .asciiz "Resultado: "

.text
.globl operacoes
.macro terminal


operacoes:
li $v0, 4
la $a0, menu
syscall
li $v0, 5
syscall
move $t1, $v0
beq $t1, 0, sair
jal opcoes
j operacoes

opcoes:
beq $t1, 1, adicao
beq $t1, 2, subtracao
beq $t1, 3, multiplicacao
beq $t1, 4, divisao

adicao:
li $v0, 4
la $a0, pri
syscall
li $v0, 5
syscall
move $t2, $v0
li $v0, 4
la $a0, seg
syscall
li $v0, 5
syscall
move $t3, $v0
add $t0, $t2, $t3
li $v0, 4
la $a0, resultado
syscall
li $v0, 1
la $a0, resultado
move $a0, $t0
syscall
jr $ra

subtracao:
li $v0, 4
la $a0, pri
syscall
li $v0, 5
syscall
move $t2, $v0
li $v0, 4
la $a0, seg
syscall
li $v0, 5
syscall
move $t3, $v0
sub $t0, $t2, $t3
li $v0, 4
la $a0, resultado
syscall
li $v0, 1
la $a0, resultado
move $a0, $t0
syscall
jr $ra

multiplicacao:
li $v0, 4
la $a0, pri
syscall
li $v0, 5
syscall
move $t2, $v0
li $v0, 4
la $a0, seg
syscall
li $v0, 5
syscall
move $t3, $v0
mul $t0, $t2, $t3
li $v0, 4
la $a0, resultado
syscall
li $v0, 1
la $a0, resultado
move $a0, $t0
syscall
jr $ra

divisao:
li $v0, 4
la $a0, pri
syscall
li $v0, 5
syscall
move $t2, $v0
li $v0, 4
la $a0, seg
syscall
li $v0, 5
syscall
move $t3, $v0
div $t0, $t2, $t3
li $v0, 4
la $a0, resultado
syscall
li $v0, 1
la $a0, resultado
move $a0, $t0
syscall
jr $ra

sair:
li $v0, 10
syscall
