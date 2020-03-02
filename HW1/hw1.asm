.data
	array1:	.space 80
	array2:	.space 80
	array3:	.space 80
	array4:	.space 80
	array5:	.space 80
	array6:	.space 80
	array7:	.space 80
	array8:	.space 80
	array9:	.space 80
	array10:.space 80
	array11:.space 80
	array12:.space 80
	array13:.space 80
	array14:.space 80
	array15:.space 80
	sizeArr : .space 60 #store sizes of arrays
	arrays : .space 60 #store arrays
	dArray : .space 60
	X : .space 80
	sizeX: .word 0
	I : .space 60
	sizeArrI : .space 60
	ISize : .word 0
	NumArray : .word 0
	Q: .asciiz "How many element of array?\n"
	Q1: .asciiz "How many element of X array?\n"
	Q2: .asciiz "How many set?\n"
	error: .asciiz "Program can't create X with your sets.\n"
	IResult : .asciiz "I set contains : \n"
	space : .asciiz " "
	newLine: .asciiz "\n"
	result: .asciiz "result\n"
.text
main:

#********************

#jal MinSetCover
jal FillX
la $a1,X
lw $a2,sizeX
jal PrintSet
jal FillSets
jal FillArrOfSets

jal MinSetCover
jal PrintI

li $v0, 10 # end the program
syscall


#Fiil Array of sets
FillArrOfSets: 
addi $sp,$sp,-12 
sw $ra,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)

lw $t0,sizeX
addi $t1,$zero,0
 
beq $t1,$t0,eex #kullanýcýnýn girdiði setlerin adresleri bir arrayin içinde depolanýr.
addi $t0,$zero,0
la $t1,array1
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array2
sw $t1,arrays($t0)

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array3
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array4
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array5
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array6
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array7
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array8
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array9
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array10
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array11
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array12
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array13
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array14
sw $t1,arrays($t0)

addi $t1,$t1,1

beq $t1,$t0,eex
addi $t0,$t0,4
la $t1,array15
sw $t1,arrays($t0)

eex:
lw $t0,0($sp)
lw $t1,4($sp)
lw $ra,8($sp)
addi $sp,$sp,12
jr $ra
#End Array of Sets
#*****************
#Fill Arrays
FillSets:
addi $sp,$sp,-12
sw $ra,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)

li $v0,4
la $a0,Q2
syscall

li $v0,5 #kullanýcýdan alýnan set sayýsý kadar set doldurulur.
syscall
move $t0,$v0
sw $t0,NumArray
addi $t1,$zero,0

beq $t1,$t0,eexx
addi $a2,$zero,0
la $a1,array1
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array2
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array3
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array4
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array5
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array6
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array7
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array8
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array9
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array10
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array11
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array12
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array13
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array14
jal Fill

addi $t1,$t1,1

beq $t1,$t0,eexx
addi $a2,$a2,4
la $a1,array15
jal Fill

eexx:
lw $t0,0($sp)
lw $t1,4($sp)
lw $ra,8($sp)
addi $sp,$sp,12
jr $ra
#End Fill Sets
#******************
#Fill X
FillX: #X set inin eleman sayýsýný alýnýr ve set doldurulur.
addi $sp,$sp,-28
sw $ra,24,($sp)
sw $t5,20($sp)
sw $t4,16($sp)
sw $t3,12($sp)
sw $t2,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)

la $t4,X

li $v0,4
la $a0,Q1
syscall

li $v0,5
syscall
move $t0,$v0
sw $t0,sizeX
addi $t1,$zero,-1
LoOp:
addi $t1,$t1,1
beq $t1,$t0,exx
sll $t2,$t1,2
add $t3,$t4,$t2

li $v0,5
syscall
move $t5,$v0

sw $t5,($t3)

bne $t1,$t0,LoOp

exx:
lw $t0,0($sp)
lw $t1,4($sp)
lw $t2,8($sp)
lw $t3,12($sp)
lw $t4,16($sp)
lw $t5,20($sp)
lw $ra,24,($sp)
addi $sp,$sp,28
jr $ra



#*****************
#Print I
PrintI: #I set inin içindeki setler ekrana bastýrýlýr.
addi $sp,$sp,-32
sw $ra,28($sp)
sw $t6,24($sp)
sw $t5,20($sp)
sw $t4,16($sp)
sw $t3,12($sp)
sw $t2,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)

li $v0,4
la $a0,IResult
syscall

addi $t0,$zero,-1
lw $t1,ISize
la $t5,sizeArrI
la $t3,I
LOOP:
addi $t0,$t0,1
beq $t0,$t1,ex
sll $t2,$t0,2
add $t4,$t3,$t2
add $t6,$t5,$t2
lw $a1,($t4)
lw $a2,($t6)
jal PrintSet
bne $t0,$t1,LOOP
ex:
lw $t0,0($sp)
lw $t1,4($sp)
lw $t2,8($sp)
lw $t3,12($sp)
lw $t4,16($sp)
lw $t5,20($sp)
lw $t6,24($sp)
lw $ra,28($sp)
addi $sp,$sp,32
jr $ra
#*****************
#Min Set Cover Function
MinSetCover:
addi $sp,$sp,-40
sw $ra,36($sp)
sw $t8,32($sp)
sw $t7,28($sp)
sw $t6,24($sp)
sw $t5,20($sp)
sw $t4,16($sp)
sw $t3,12($sp)
sw $t2,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)
la $t4,arrays
la $t7,sizeArr
MinSetLoop:
lw $t0,sizeX   #t0 = X size
move $t8,$t0
beq $t0,$zero,endMinSetCover
jal FillDArr #setlerin X setiyle olan kesiþimlerini tutar.
jal FindLargest #en büyük kesiþim olan set in index ini alýr.
move $t2,$v1 #j
sll $t3,$t2,2
add $t5,$t4,$t3
lw $t6,($t5)
move $a1,$t6
add $t5,$t7,$t3
lw $t3,($t5)
move $a2,$t3
jal AddSetI #arrays adlý arrayin j. indexinde olan set i I setini ekler.
sll $t3,$t2,2
add $t5,$t4,$t3
lw $t6,($t5)
move $a1,$t6
add $t5,$t7,$t3
lw $t3,($t5)
move $a2,$t3
jal DeleteArrX #j. seti X setin den siler.
lw $t0,sizeX
beq $t8,$t0,dontCreateX #eðer X elemaný oluþturulamýyorsa program sonlanýr.
bne $t0,$zero,MinSetLoop #bu döngü X de eleman kalmayana kadar devam eder.
endMinSetCover:
lw $t0,0($sp)
lw $t1,4($sp)
lw $t2,8($sp)
lw $t3,12($sp)
lw $t4,16($sp)
lw $t5,20($sp)
lw $t6,24($sp)
lw $t7,28($sp)
lw $t8,32($sp)
lw $ra,36($sp)
addi $sp,$sp,40
jr $ra
dontCreateX:
li $v0,4
la $a0,error
syscall
li $v0, 10 # end the program
syscall
#End Min Set Function
#******************
#Delete Array From X
DeleteArrX: #a1 = deleted set a2 = deleted set size
addi $sp,$sp,-28
sw $ra,24($sp)
sw $t5,20($sp)
sw $t4,16($sp)
sw $t3,12($sp)
sw $t2,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)

move $t0,$a1
move $t1,$a2
addi $t2,$zero,-1
DeleteArrLoop: #gonderilen set in eleman sayýsý kadar döner ve her elemaný silinmesi için DeleteElementX fonk. gonderilir.
addi $t2,$t2,1
beq $t2,$t1,endDeleteArr
sll $t3,$t2,2
add $t4,$t0,$t3
lw $t5,($t4)
move $a1,$t5
jal DeleteElementX
bne $t2,$t1,DeleteArrLoop

endDeleteArr:
lw $t0,0($sp)
lw $t1,4($sp)
lw $t2,8($sp)
lw $t3,12($sp)
lw $t4,16($sp)
lw $t5,20($sp)
lw $ra,24($sp)
addi $sp,$sp,28
jr $ra
# End Delete Arr From X
#*******************
# Print Set
PrintSet:	# $a1 = set $a2 = size
addi $sp,$sp,-28
sw $ra,24($sp)
sw $t5,20($sp)
sw $t4,16($sp)
sw $t3,12($sp)
sw $t2,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)
move $t0,$a1
move $t1,$a2
addi $t2,$zero,-1

PrintLoop:
addi $t2,$t2,1
beq $t2,$t1,endPrint
sll $t3,$t2,2
add $t4,$t0,$t3
lw $t5,($t4)
li $v0,1
move $a0,$t5
syscall
li $v0,4
la $a0,space
syscall
bne $t2,$t1,PrintLoop

endPrint:
li $v0,4
la $a0,newLine
syscall
lw $t0,0($sp)
lw $t1,4($sp)
lw $t2,8($sp)
lw $t3,12($sp)
lw $t4,16($sp)
lw $t5,20($sp)
lw $ra,24($sp)
addi $sp,$sp,28
jr $ra
#End Print Set
#*********************
# Delete Element From X
DeleteElementX: # $a1 = delete element
addi $sp,$sp,-48 #gonderilen eleman X set inde varsa silinir.
sw $ra,44($sp)
sw $s0,40($sp)
sw $t9,36($sp)
sw $t8,32($sp)
sw $t7,28($sp)
sw $t6,24($sp)
sw $t5,20($sp)
sw $t4,16($sp)
sw $t3,12($sp)
sw $t2,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)

move $t6,$a1 # del element element = t6
la $t4,X 	 # t4 = X
addi $t0,$zero,-1 # t0 = i = -1
lw $t1,sizeX #t1 = size
addi $s0,$zero,0
DeleteLoop:
addi $t0,$t0,1 #i = i + 1
beq $t0,$t1,delExit
sll $t2,$t0,2 # t2 = i * 4
add $t3,$t4,$t2
lw $t5,($t3)
addi $t7,$t0,-1
beq $t5,$t6,DeleteLoop2
bne $t0,$t1,DeleteLoop

DeleteLoop2:
addi $t7,$t7,1
addi $t8,$t1,0
beq $t7,$t8,DeleteLoop
sll $t2,$t7,2
add $t3,$t4,$t2
addi $t5,$t3,4
lw $t9,($t5)
sw $t9,($t3)
addi $s0,$zero,1
bne $t7,$t8,DeleteLoop2
reduce:
lw $t2,sizeX 	# X size
addi $t2,$t2,-1 # X size reduce 1
sw $t2,sizeX
addi $s0,$zero,0
beq $zero,$zero,delExit
delExit:
bne $s0,$zero,reduce
lw $ra,44($sp)
lw $s0,40($sp)
lw $t9,36($sp)
lw $t8,32($sp)
lw $t7,28($sp)
lw $t6,24($sp)
lw $t5,20($sp)
lw $t4,16($sp)
lw $t3,12($sp)
lw $t2,8($sp)
lw $t1,4($sp)
lw $t0,0($sp)
addi $sp,$sp,48
jr $ra
# End Delete Element From X
#*******************
#Add a set to I
AddSetI: #a1 = set a2 = set size
addi $sp,$sp,-36
sw $ra,32($sp)
sw $t7,28($sp)
sw $t6,24($sp)
sw $t5,20($sp)
sw $t4,16($sp)
sw $t3,12($sp)
sw $t2,8($sp)
sw $t1,4($sp)
sw $t0,0($sp)

la $t4,I		#t4 = I adress
la $t5,sizeArrI 
move $t0,$a1  	#t0 = set adress 
move $t7,$a2	# t7 = set size
lw $t1,ISize	#t1 = I size
sll $t2,$t1,2  	#$t2 = $t1 * 4
add $t3,$t4,$t2	# t3 = t4 + t2
sw $t0,($t3) 	# I(t1) = t0
add $t6,$t5,$t2	# t6 = t5 + t2
sw $t7,($t6)
addi $t1,$t1,1 	# t1 = t1 + 1
sw $t1,ISize

lw $t0,0($sp)
lw $t1,4($sp)
lw $t2,8($sp)
lw $t3,12($sp)
lw $t4,16($sp)
lw $t5,20($sp)
lw $t6,24($sp)
lw $t7,28($sp)
lw $ra,32($sp)
addi $sp,$sp,36
jr $ra
# End Add Set I Function
#************************
# Find Largest Function
FindLargest:
addi $sp,$sp,-36
sw $ra,32($sp)
sw $t7,28($sp)
sw $t6,24($sp)
sw $t5,20($sp)
sw $t4,16($sp)
sw $t3,12($sp)
sw $t2,8($sp)
sw $t1,4($sp) # max element
sw $t0,0($sp) # t0=i

addi $t0,$zero,0 #i=0
lw $t1,dArray($zero) #max = DArr(0)
move $v1,$t0
lw $t2,NumArray
la $t5,dArray
DArrLoop:
addi $t0,$t0,1 #i=i+1
beq $t0,$t2,endDArrLoop #i == size
sll $t3,$t0,2 #t3 = i*4
add $t4,$t5,$t3
lw $t6,($t4)
slt $t7,$t6,$t1
beq $t7,$zero,go
j DArrLoop
go:
move $t1,$t6
move $v1,$t0
bne $t0,$t2, DArrLoop
 
endDArrLoop:
lw $t0,0($sp)
lw $t1,4($sp)
lw $t2,8($sp)
lw $t3,12($sp)
lw $t4,16($sp)
lw $t5,20($sp)
lw $t6,24($sp)
lw $t7,28($sp)
lw $ra,32($sp)
addi $sp,$sp,36
jr $ra
# End Find Largest

#***********************
#Fill DArr Function
FillDArr:
addi $sp,$sp,-36
sw $ra,32($sp)
sw $t0,28($sp)
sw $t1,24($sp)
sw $t2,20($sp)
sw $t3,16($sp)
sw $t4,12($sp)
sw $t6,8($sp)
sw $t7,4($sp)
sw $t8,0($sp)
addi $t0,$zero,-1 #i=0
lw $t1,NumArray
la $t4,arrays
la $t6,sizeArr
la $t8,dArray
ins:
addi $t0,$t0,1
beq $t0,$t1,turn
sll $t2,$t0,2 #i*4
add $t3,$t4,$t2
lw $a1,($t3)
add $t3,$t6,$t2
lw $a2,($t3)
jal Intersection
move $t7,$v1
add $t3,$t8,$t2
sw $t7,($t3)
j ins
turn:
lw $t8,0($sp)
lw $t7,4($sp)
lw $t6,8($sp)
lw $t4,12($sp)
lw $t3,16($sp)
lw $t2,20($sp)
lw $t1,24($sp)
lw $t0,28($sp)
lw $ra,32($sp)
addi $sp,$sp,36
jr $ra
#End Fill DArr
#*********************
# Intersection Number Between Two Sets Function
Intersection: #parameters: X:a0 , Array1:a1, size:a2
addi $sp,$sp,-40
sw $ra,36($sp)
sw $t0,32($sp)
sw $t1,28($sp)
sw $t2,24($sp)
sw $t4,20($sp)
sw $t6,16($sp)
sw $t5,12($sp)
sw $t7,8($sp)
sw $t8,4($sp)
sw $t9,0($sp)
la $t0,X #X
move $t1,$a1 #Second array
move $t2,$a2 #Second array size
addi $t4,$zero,-1 #i=0
lw $t6,sizeX
addi $v1,$zero,0 #results
For1:
addi $t4,$t4,1 #i=i+1
addi $t5,$zero,-1 #j=0
beq $t4,$t2,exit #i == second array size exit
#bne $t4,$t2,For2
For2:
addi $t5,$t5,1 #j=j+1
beq $t5,$t6,For1 #j == x size, go for1
Label:
sll $t7,$t4,2 #$t7 = i*4
add $t8,$t1,$t7 #$t8 = $t0+$t7
sll $t7,$t5,2 #$t7 = j*4
add $t9,$t0,$t7 #$t9 = $t1+$t7
lw $t8,($t8)
lw $t9,($t9)
bne $t8,$t9,For2
beq $t8,$t9,Label2

Label2:
addi $v1,$v1,1 #result = result+1
beq $zero,$zero,For1
exit:
lw $t9,0($sp)
lw $t8,4($sp)
lw $t7,8($sp)
lw $t5,12($sp)
lw $t6,16($sp)
lw $t4,20($sp)
lw $t2,24($sp)
lw $t1,28($sp)
lw $t0,32($sp)
lw $ra,36($sp)
addi $sp,$sp,40
jr $ra
# End Intersection Number Between Two Sets Function
#********************
# Fill Array Function 
Fill:
addi $sp,$sp,-20
sw $ra,16($sp)
sw $t0,12($sp)
sw $t1,8($sp)
sw $t2,4($sp)
sw $t4,0($sp)

addi $t1,$zero,0 # $t1=i=0
li $v0,4
la $a0,Q
syscall
li $v0,5
syscall
move $t0,$v0 #number of elements $t0
Loop: 
beq $t1,$t0,Exit
sll $t2,$t1,2
li $v0,5
syscall
move $t3,$v0
sw $t3,($a1)
addi $a1,$a1,4
addi $t1,$t1,1
j Loop

Exit:
move $t4,$a2
sw $t1,sizeArr($t4)

lw $t4,0($sp)
lw $t2,4($sp)
lw $t1,8($sp)
lw $t0,12($sp)
lw $ra,16($sp)
addi $sp,$sp,20
jr $ra 
#End Fill Array function
