.macro save(%a)
	sw %a,0($sp)
	addi $sp,$sp,-4
.end_macro
.macro	load(%b)
	addi $sp,$sp,4
	lw %b,0($sp)
.end_macro
.macro	find(%x,%y,%z)	#x->string y->point z->num
	move $t4,$zero
	mul $t4,%y,4	#hole: the operator in function could not change the value of registers outside!
	addu $t4,%x,$t4
	lw %z,0($t4)
.end_macro
.macro	store(%x,%y,%z)
	move $t4,$zero
	mul $t4,%y,4	#hole: the operator in function could not change the value of registers outside!
	addu $t4,%x,$t4
	sw %z,0($t4)
.end_macro

.data
	symbol:.space 200
	array: .space 200
	huanhang: .asciiz "\n"
	kong: .asciiz " "
.text
	li $t0,0	#n
	li $s0,0	#index
	li $t1,0	#i
	li $t2,0	#word
	li $t3,1	#1
	li $t4,0	#temp
	la $s1,symbol
	la $s2,array	
				
	li $v0,5
	syscall
	move $t0,$v0
	
	jal fullarray
	
	li $v0,10
	syscall
	
	
	
fullarray:
	if1: blt $s0,$t0,done1
		move $t1,$zero
		for1: beq $t1,$t0,done_for1
			find($s2,$t1,$t2)
			move $a0,$t2
			li $v0,1
			syscall
			
			la $a0,kong
			li,$v0,4
			syscall
			
			addi $t1,$t1,1
			j for1
		done_for1:
			la $a0,huanhang
			li $v0,4
			syscall
			
			jr $ra
	done1:
		move $t1,$zero
		for2:beq $t1,$t0,done_for2
			find($s1,$t1,$t2)
		if2:	bne $t2,$zero,done2
			addi $t2,$t1,1
			store($s2,$s0,$t2)
			store($s1,$t1,$t3)
			
			save($ra)
			save($s0)
			save($t1)	#### whole element which will used after
					#### return need to be saved
			addi $s0,$s0,1
			jal fullarray	#### all in all : save the value after
					#### and behind using function
			load($t1)	####
			load($s0)	
			load($ra)
			store($s1,$t1,$zero)
		
		done2:
			addi $t1,$t1,1
			j for2
		done_for2:
			jr $ra
			
		
		
	
	
	
	
	
	
	
