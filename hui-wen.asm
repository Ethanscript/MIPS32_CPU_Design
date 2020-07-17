.data
	array:.space 500
.text
	li $s0,1	#ans
	la $s1,array	#string
	li $s2,0	#char
	li $s3,0	#position2
	li $t0,0	#temp
	li $t3,0	#point
	
	li $v0,5
	syscall
	move $t1,$v0	#n
	
for1:	beq $t3,$t1,done1
	
	li $v0,12
	syscall
	move $s2,$v0
	sb $s2,0($t3)

	addi $t3,$t3,1
	j for1
done1:
	# s3->p1   t3->p2+1
	
count:	divu $t1,$t1,2 #times
	
	subi $t3,$t3,1
	
for2:	beq $s3,$t1,done2	#t4 t5 

		lb $t4,0($s3)
		lb $t5,0($t3)
	if:	beq $t4,$t5,go
		li $s0,0
	go:
	addi $s3,$s3,1
	subi $t3,$t3,1
	j for2
done2:
	
	move $a0,$s0
	li $v0,1
	syscall
	
	li $v0,10
	syscall
	
	

	