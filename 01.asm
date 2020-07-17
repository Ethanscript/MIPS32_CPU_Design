.data
	array1:.space 400
	array2:.space 400
.macro save(%x,%y,%z,%w) #x->string y->heng z->lie w->value
	mul $k1,%y,$t2
	addu $k1,$k1,%z
	mul $k1,$k1,4
	addu $k1,$k1,%x
	sw %w,0($k1)
	
.end_macro

.macro load(%x,%y,%z,%w) #x->string y->heng z->lie w->value
	mul $k1,%y,$t2
	addu $k1,$k1,%z
	mul $k1,$k1,4
	addu $k1,$k1,%x
	lw %w,0($k1)

.end_macro

.macro in(%x)
	sw %x,0($sp)
	addi $sp,$sp,-4
.end_macro

.macro out(%x)
	addi $sp,$sp,4
	lw %x,0($sp)
.end_macro

.text
	li $a1,1
	li $s6,0 #global
	li $k0,0 #global
	la $s0,array1
	la $s1,array2
	li $s7,0
	
	li $t0,0
	li $t3,0
	
	li $v0,5
	syscall
	move $t1,$v0
	
	li $v0,5
	syscall
	move $t2,$v0
	
for1:	beq $t0,$t1,done1
	li $t3,0
	for2:	beq $t3,$t2,done2
			li $v0,5
			syscall
			save($s0,$t0,$t3,$v0)
		addi $t3,$t3,1
		j for2
	done2:
	addi $t0,$t0,1
	j for1
done1:

	li $v0,5
	syscall
	sub $s2,$v0,1
	
	li $v0,5
	syscall
	sub $s3,$v0,1
	
	li $v0,5
	syscall
	sub $s4,$v0,1
	
	li $v0,5
	syscall
	sub $s5,$v0,1
	
	jal dfs
	
	li $v0,1
	move $a0,$s7
	syscall
	
	li $v0,10
	syscall
	
dfs:
	save($s1,$s2,$s3,$a1)

if1:	bne $s2,$s4,else1
if2:	bne $s3,$s5,else2
	addi $s7,$s7,1
	jr $ra
else2:
else1:	
	
if1_1:	beq $s2,$zero,else1_1
	subi $s6,$s2,1
	load($s0,$s6,$s3,$k0)
if1_2:	bne $k0,$zero,else1_2
	subi $s6,$s2,1
	load($s1,$s6,$s3,$k0)
if1_3:	bne $k0,$zero,else1_3
	subi $s6,$s2,1
	save($s1,$s6,$s3,$a1)
	in($s2)
	in($s3)
	in($ra)
	subi $s2,$s2,1
	jal dfs
	out($ra)
	out($s3)
	out($s2)
	subi $s6,$s2,1
	save($s1,$s6,$s3,$zero)

else1_3:
else1_2:
else1_1:


if2_1:	subi $s6,$t1,1
	beq $s2,$s6,else2_1
	addi $s6,$s2,1
	load($s0,$s6,$s3,$k0)
if2_2:	bne $k0,$zero,else2_2
	addi $s6,$s2,1
	load($s1,$s6,$s3,$k0)
if2_3:	bne $k0,$zero,else2_3
	addi $s6,$s2,1
	save($s1,$s6,$s3,$a1)
	in($s2)
	in($s3)
	in($ra)
	addi $s2,$s2,1
	jal dfs
	out($ra)
	out($s3)
	out($s2)
	addi $s6,$s2,1
	save($s1,$s6,$s3,$zero)

else2_3:
else2_2:
else2_1:



if3_1:	beq $s3,$zero,else3_1
	subi $s6,$s3,1
	load($s0,$s2,$s6,$k0)
if3_2:	bne $k0,$zero,else3_2
	subi $s6,$s3,1
	load($s1,$s2,$s6,$k0)
if3_3:	bne $k0,$zero,else3_3
	subi $s6,$s3,1
	save($s1,$s2,$s6,$a1)
	in($s2)
	in($s3)
	in($ra)
	subi $s3,$s3,1
	jal dfs
	out($ra)
	out($s3)
	out($s2)
	subi $s6,$s3,1
	save($s1,$s2,$s6,$zero)

else3_3:
else3_2:
else3_1:



if4_1:	subi $s6,$t2,1
	beq $s3,$s6,else4_1
	addi $s6,$s3,1
	load($s0,$s2,$s6,$k0)
if4_2:	bne $k0,$zero,else4_2
	addi $s6,$s3,1
	load($s1,$s2,$s6,$k0)
if4_3:	bne $k0,$zero,else4_3
	addi $s6,$s3,1
	save($s1,$s2,$s6,$a1)
	in($s2)
	in($s3)
	in($ra)
	addi $s3,$s3,1
	jal dfs
	out($ra)
	out($s3)
	out($s2)
	addi $s6,$s3,1
	save($s1,$s2,$s6,$zero)

else4_3:
else4_2:
else4_1:
	jr $ra	###

