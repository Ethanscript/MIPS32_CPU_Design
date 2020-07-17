# 1: type of writing "for:"  , write "for:" with judge sentence in the same line
# 2: for(int i=0)
#	for(int j=0)  ->don't forget move $j,$zero between two judge sentence
# 3: .word
#    .word  the space of two of them will cross



.data
	array1:.space 256
	array2:.space 256
	array3:.space 256
	huanhang:.asciiz "\n"
	kong:.asciiz " "

.macro sw_in(%x,%y,%m,%n) 
	#x:string
	#y:num
	# m n hanglie
	move $t0,$zero
	mul $t0,$t1,%m
	addu $t0,$t0,%n
	mul $t0,$t0,4
	addu $t0,$t0,%x
	sw %y,0($t0)
	

.end_macro

.macro lw_out(%x,%m,%n) 
	#x:string
	# m n hanglie
	move $t0,$zero
	mul $t0,$t1,%m
	addu $t0,$t0,%n
	mul $t0,$t0,4
	addu $t0,$t0,%x
	lw $t0,0($t0)
	

.end_macro

.text
	li $t1,0	#n
	li $v0,5	
	syscall
	move $t1,$v0
	
	mult $t1,$t1
	mflo $t6	#whole
	
	move $t0,$zero	#temp
	move $t2,$zero	#point
	move $s2,$zero	#instore number
	move $s3,$zero	#true-address
	
	la $s0,array1	# matrix-1
	la $s1,array2	# matrix-2
	la $s4,array3	# matrix-3
	
for1:	beq $t2,$t6,done1
	li $v0,5
	syscall
	
	move $s2,$v0
	mul $s3,$t2,4
	addu $s3,$s3,$s0
	sw $s2,0($s3)
	
	addi $t2,$t2,1
	j for1

done1:	move $t2,$zero

for2:	beq $t2,$t6,done2
	li $v0,5
	syscall
	
	move $s2,$v0
	mul $s3,$t2,4
	addu $s3,$s3,$s1
	sw $s2,0($s3)
	
	addi $t2,$t2,1
	j for2
done2:

	move $t3,$zero	#i
	move $t4,$zero	#j
	move $t5,$zero	#k  t1->n
	
for_shit1:beq $t3,$t1,shit1_done
	move $t4,$zero
	for_shit2:beq $t4,$t1,shit2_done
		move $t5,$zero
		for_shit3:beq $t5,$t1,shit3_done
			#a s5 #b s6 #c s7
			lw_out($s0,$t3,$t5)
			move $s5,$t0
			lw_out($s1,$t5,$t4)
			move $s6,$t0
			lw_out($s4,$t3,$t4)
			move $s7,$t0
			
			mul $t0,$s5,$s6
			addu $s7,$s7,$t0	
			sw_in($s4,$s7,$t3,$t4)		
			
		
		addi $t5,$t5,1
		j for_shit3
		shit3_done:
	addi $t4,$t4,1
	j for_shit2
	shit2_done:
addi $t3,$t3,1
j for_shit1
shit1_done:

move $t3,$zero
move $t4,$zero
move $t0,$zero

for3:beq $t3,$t1,done3
	move $t4,$zero
	for4:beq $t4,$t1,done4
		lw_out($s4,$t3,$t4)
		move $a0,$t0
		li $v0,1
		syscall
		
		la $a0,kong
		li $v0,4
		syscall
		
		
	addi $t4,$t4,1
	j for4
	done4:
	la $a0,huanhang
	li $v0,4
	syscall
addi $t3,$t3,1
j for3
done3:
	
	
li $v0,10
syscall
	
	
	
