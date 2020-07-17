.data
	array1:.space 1200
	array2:.space 1200
	array3:.space 1200
	array4:.asciiz "\n"
	array5:.asciiz " "
	
.text
.macro	save(%s,%x,%y,%z,%w) #s string,x data,y hang,z lie,w-forward lie
	mul $t0,%y,%w
	addu $t0,$t0,%z
	mul $t0,$t0,4
	addu $t0,%s,$t0
	sw %x,0($t0)
	move $t0,$zero

.end_macro

.macro load(%s,%x,%y,%z,%w) #s string,x lw-data,y hang,z lie,w-forward lie
	mul $t0,%y,%w
	addu $t0,$t0,%z
	mul $t0,$t0,4
	addu $t0,%s,$t0
	lw %x,0($t0)
	move $t0,$zero
.end_macro

# madd ? overflow ? how to solve ? right byte is ? hi lo ? '/'

	la $s1,array1	#1
	la $s2,array2	#2
	la $s3,array3	#3
	
	li $t0,0	#temp
	li $t1,0	#m1
	li $t2,0	#n1
	li $t3,0	#m2
	li $t4,0	#n2
	
	li $t5,0	#temp-hang
	li $t6,0	#temp-lie
read:	
	li $v0,5
	syscall
	move $t1,$v0	
	li $v0,5
	syscall
	move $t2,$v0	
	li $v0,5
	syscall
	move $t3,$v0	
	li $v0,5
	syscall
	move $t4,$v0	
	
	subu $s4,$t1,$t3
	addi $s4,$s4,1	# m1-m2+1
	subu $s5,$t2,$t4
	addi $s5,$s5,1	# n1-n2+1

	move $t5,$zero
	for1:	beq $t5,$t1,done1
		li $t6,0
		for2:	beq $t6,$t2,done2
				li $v0,5
				syscall
				save($s1,$v0,$t5,$t6,$t2)
			addi $t6,$t6,1
			j for2
		done2:
		addi $t5,$t5,1
	     	j for1
	done1:
	
	move $t5,$zero
	for3:	beq $t5,$t3,done3
		li $t6,0
		for4:	beq $t6,$t4,done4
				li $v0,5
				syscall
				save($s2,$v0,$t5,$t6,$t4)
			addi $t6,$t6,1
			j for4
		done4:
		addi $t5,$t5,1
	     	j for3
	done3:
	
	li $t5,0
	for5:	beq $t5,$s4,done5
		li $t6,0
		for6:	beq $t6,$s5,done6
	 
	 		move $s0,$zero
	 		move $s6,$zero
	 		move $s7,$zero
	 		
	 		for7:	beq $s6,$t3,done7
	 			move $s7,$zero
	 				for8:	beq $s7,$t4,done8
	 					addu $a2,$t5,$s6
	 					addu $a3,$t6,$s7
	 					load($s1,$a2,$a2,$a3,$t2)
	 					load($s2,$a3,$s6,$s7,$t4)
	 					mul $t0,$a2,$a3
	 					addu $s0,$s0,$t0
	 					
	 					
	 					addi $s7,$s7,1
	 					j for8
	 				done8:
	 			addi $s6,$s6,1
	 			j for7
	 		done7:
			move $a0,$s0
			li $v0,1
			syscall 
			la $a0,array5
			li $v0,4
			syscall
			
			addi $t6,$t6,1
			j for6
		done6:
		
		la $a0,array4
		li $v0,4
		syscall
		addi $t5,$t5,1
		j for5
	done5:
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
