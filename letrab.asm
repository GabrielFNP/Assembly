.data
rec:  .asciiz "digite sua receita:"
desp:  .asciiz "digite sua despesas:"
saldo: .asciiz "Seu Saldo e de Aproximadamente:"
.text
#entre com sua receita
li $v0, 4
la $a0,rec
syscall
li $v0,5
syscall 
move $t1, $v0
#entre com sua despesas
li $v0, 4
la $a0, desp
syscall 
li $v0,5
syscall 
move $t2, $v0
# subtração
sub $t3, $t1, $t2


# saída de dados 	
li $v0, 4
la $a0, saldo
        syscall
      
       li $v0, 1
	la $a0, ($t3) 
	syscall 
	