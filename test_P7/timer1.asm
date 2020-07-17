.text
li $t1, 0xFC01 # enable interrupt, disable exl
mtc0 $t1, $12
nop
nop
nop
li $t1, 50
sw $t1, 0x7F04
li $t2, 11
sw $t2, 0x7F00
nop
nop
loop:
lw $t3, 0x7F08
j loop
nop


.ktext 0x00004180

sw $1, 0x1000
mfc0 $k0, $13
andi $k0, $k0, 124
beqz $k0, continue
mfc0 $k0, $14
li $k1, 4
addu $k0, $k1, $k0
li $k1, 0xFFFFFFFC
and $k0, $k0, $k1
continue:
mtc0 $k0, $14
lw $1, 0x1000
eret
li $t1, 0xDEAD
