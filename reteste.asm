.data
  numero1: .asciiz " digite a primeira nota::"
 
  numero2: .asciiz " digite a segunda nota::"
  
  numero3: .asciiz " digite a terceira nota::"
   
  numero4: .asciiz " digite a quarta nota::"
   
   media: .asciiz " Cara sua media resultou em::"
  
   fix: .float 4.0
  
 
  
.text
  #entrada de dados ///////////////////////////////////////////////
  li $v0 , 4
  la $a0, numero1
  syscall 
  #leitura
  li $v0, 6

   mov.s $f16, $f0
   
  syscall 

  # segundo Numero////////////////////////////////////////////
  
  #entrada de dados 
  li $v0 , 4
  la $a0, numero2
  syscall 
  #leitura
  li $v0, 6
 
   mov.s $f18, $f0
   
  syscall 
 
   # terceiro numero///////////////////////////////////////////
   
   
   
   #entrada de dados 
  li $v0 , 4
  la $a0, numero3
  syscall 
  #leitura
  li $v0, 6
 
  mov.s $f11, $f0
  syscall 
 
  #quarto numero//////////////////////////////////////////
  #entrada de dados 
  li $v0 , 4
  la $a0, numero4
  syscall 
  #leitura
  li $v0, 6
  
   mov.s $f14, $f0
   
  syscall 
  
  #//////////////////////////////////////////////////////
   # Soma dos 4 números:
     
  add.s $f2,$f11,$f14
  add.s $f6,$f16,$f18
  
  add.s $f22, $f6 $f2
 
  #divisão
  lwc1  $f1, fix
  add.s $f8, $f1, $f0
  
  
  div.s $f12, $f22, $f8
  

  #impressão da media obtida
  li $v0 , 4
  la $a0, media
  syscall 

li $v0, 2
mov.s $f0, $f12
syscall