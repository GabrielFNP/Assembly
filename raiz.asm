#Implemente em assembly do MIPS um procedimento que calcule a raiz
# quadrada inteira
.data
	error_msg: .asciiz "Não é uma raiz quadrada perfeita"
	inicio_msg: .asciiz " Digite um numero para achar a raiz quadrada:  "

.text

	.globl main
	
	main:
	la $a0, inicio_msg
		la $v0, 4
		syscall
		jal read_int							
		la 	$s0, ($v0)					
		li	$s1, 0
		jal isqrt											

	print_int:
		li 		$v0, 5							
		syscall										
		jr 		$ra												
	
	read_int:
		li 		$v0, 5							
		syscall										
		jr 		$ra									
		
	isqrt:
		mul	$t0, $s1, 2
		add $t0, $t0, 1
		sub	$s0, $s0, $t0
		add $s1, $s1, 1						
		beq $s0, $zero, success		
		slt	$t0, $s0, $zero				
		beq $t0, 1, error					
		j		isqrt									
		
	error:
		la $a0, error_msg
		la $v0, 4
		syscall
		j	 exit
	
	success:
		la $v0, 1
		la $a0, ($s1)
		syscall
		j  exit
	
	exit:
		la $v0, 10
		syscall