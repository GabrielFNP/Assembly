.data

bemvindo:   	.asciiz "CALCULADORA T10\n\n"
opcao:	 	.asciiz "Escolha uma opcao:\n1 - Somar, 2 - Subtrair, 3 - Multiplicar, 4 - Dividir\n"
msg:		.asciiz "Digite um numero:"
finaliza:	.asciiz "Finalizando o programa . . ."                                                               
.text
		
main: 	
		sw $s1,0($sp)
		sw $s2,4($sp)
		sw $s3,8($sp)
		sw $s4,12($sp)
		sw $a0,16($sp)
		sw $ra,20($sp)  
		#Atribuindo valores aos registradores	   	
		addi $s1,$zero,1
		addi $s2,$zero,2
		addi $s3,$zero,3
  		addi $s4,$zero,4			
   		#Lendo um inteiro do teclado
		li $v0,5
   		syscall 
		#Comparando o valor informado
	 	beq $v0,$zero,fim
		#Imprimindo as opções
		li $v0,4
   		la $a0,opcao
   		syscall
		#Lendo um inteiro do teclado
   		li $v0,5
   		syscall 
		#Comparando se o valor informado bate com as opções
		beq $v0,$s1,soma 
   	        beq $v0,$s2,subtrair  
   		beq $v0,$s3,multiplicar 
  	        beq $v0,$s4,dividir 
	  
		        
		#Imprime mensagem de encerramento     
fim: 		li $v0,4
   		la $a0,finaliza
   		syscall
		#Desempilhando a pilha
		lw $ra,20($sp)
		lw $a0,16($sp)
		lw $s4,12($sp)
		lw $s3,8($sp)
		lw $s2,4($sp)
		lw $s1,0($sp)
		addi $sp,$sp,24	
		jr $ra
   
		#Zerando os temporários
dividir:	addi $t5,$zero,0
   		addi $t6,$zero,0
   		addi $t7,$zero,0 
		#Mostrando mensagem na tela
   		li $v0,4
  	        la $a0,msg 
   		syscall	
		#Lendo inteiro do teclado
   		li $v0,5
   		syscall
		#Adicionando o valor no temporário
   		add $t5,$v0,$zero
		#Mostrando mensagem na tela
   		li $v0,4
   		la $a0,msg 
   		syscall
		#Lendo inteiro do teclado
   		li $v0,5
   		syscall  
		#Adicionando o valor no temporário
   		add $t6,$v0,$zero
		#Dividindo os valores
   		div $t7, $t5,$t6
   		li $v0, 1
   		move $a0, $t7
   		syscall
		#Voltando para o While
      
		#Zerando os temporários
multiplicar:	addi $t5,$zero,0
   		addi $t6,$zero,0
   		addi $t7,$zero,0 
		#Mostrando mensagem na tela 
  		li $v0,4
   		la $a0,msg 
   		syscall
		#Lendo inteiro do teclado
   		li $v0,5
   		syscall
		#Adicionando o valor no temporário
   		add $t5,$v0,$zero
		#Mostrando mensagem na tela
   		li $v0,4
   		la $a0,msg 
   		syscall
		#Lendo inteiro do teclado
   		li $v0,5
   		syscall 
		#Adicionando o valor no temporário 
   		add $t6,$v0,$zero
		#Multiplicando os valores
   		mul $t7, $t5,$t6
   		li $v0, 1
   		move $a0, $t7
   		syscall 	
		#Voltando para o While	
		
 
		#Zerando os temporários
subtrair:       addi $t5,$zero,0
   		addi $t6,$zero,0
   		addi $t7,$zero,0 
		#Mostrando mensagem na tela 
   		li $v0,4
   		la $a0,msg 
   		syscall
		#Lendo inteiro do teclado
   		li $v0,5
   		syscall	
		#Adicionando o valor no temporário
   		add $t5,$v0,$zero
		#Mostrando mensagem na tela 
   		li $v0,4
   		la $a0,msg 
   		syscall
		#Lendo inteiro do teclado
   		li $v0,5
   		syscall  
		#Adicionando o valor no temporário
   		add $t6,$v0,$zero
		#Subtraindo os valores
   		sub $t7, $t5,$t6
   		li $v0, 1
   		move $a0, $t7
   		syscall	
		#Voltando para o While
		

                #Zerando os temporários
soma:	        addi $t5,$zero,0
   		addi $t6,$zero,0
   		addi $t7,$zero,0
		#Mostrando mensagem na tela 
  		li $v0,4
   		la $a0,msg 
   		syscall
		#Lendo inteiro do teclado
   		li $v0,5
   		syscall
		#Adicionando o valor no temporário
   		add $t5,$v0,$zero
		#Mostrando mensagem na tela
   		li $v0,4
   		la $a0,msg 
   		syscall
   		li $v0,5
   		syscall
		#Adicionando o valor no temporário  
   		add $t6,$v0,$zero
		#Somando os valores
   		add $t7, $t5,$t6
		#Mostrando o resultado na tela
   		li $v0, 1
   		move $a0, $t7
   		syscall
		


	
   

   
