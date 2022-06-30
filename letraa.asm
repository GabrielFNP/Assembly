.data
  numero1: .asciiz " digite a primeira nota::"
  zero1: .float 0.0 # essa varialvel serve para validação e amarzenar a variavel do tipo float
  numero2: .asciiz " digite a segunda nota::"
    zero2: .float 0.0
  numero3: .asciiz " digite a terceira nota::"
    zero3: .float 0.0
  numero4: .asciiz " digite a quarta nota::"
    zero4: .float 0.0
    
   media: .asciiz " Cara sua media resultou em::"
   med: .float 0.0
   fix: .float 4.0
  
.text
  #entrada de dados ///////////////////////////////////////////////
  li $v0 , 4
  la $a0, numero1
  syscall 
  #leitura
  li $v0, 6
  syscall 
  lwc1 $f1, zero1
  add.s $f2, $f1, $f0
  # segundo Numero////////////////////////////////////////////
  
  #entrada de dados 
  li $v0 , 4
  la $a0, numero2
  syscall 
  #leitura
  li $v0, 6
  syscall 
  lwc1 $f1, zero2
  add.s $f3, $f1, $f0
   # terceiro numero///////////////////////////////////////////
   
   
   
   #entrada de dados 
  li $v0 , 4
  la $a0, numero3
  syscall 
  #leitura
  li $v0, 6
  syscall 
  lwc1 $f1, zero3
  add.s $f4, $f1, $f0
  
  #quarto numero//////////////////////////////////////////
  #entrada de dados 
  li $v0 , 4
  la $a0, numero4
  syscall 
  #leitura
  li $v0, 6
  syscall 
  lwc1 $f1, zero4
  add.s $f5, $f1, $f0
  
  #//////////////////////////////////////////////////////
   # Soma dos 4 números:
  add.s $f6,$f2,$f3
  
  add.s $f7,$f5,$f4
  add.s $f8,$f6,$f7
 
  #divisão
  lwc1  $f1, med
  add.s $f9, $f1, $f0
  div.s $f12, $f8, $f9

   
  #impressão da media obtida
  li $v0 , 4
  la $a0, media
  syscall 
li $v0, 2
mov.s $f0, $f12
syscall