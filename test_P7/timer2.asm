.text
li $t1, 0xFC01 # enable interrupt, disable exl
mtc0 $t1, $12
nop
nop
nop
li $t1, 30
sw $t1, 0x7F14
li $t2, 9
sw $t2, 0x7F10
nop
nop
loop:
lw $t3, 0x7F18
j loop
nop


.ktext 0x00004180
li $k0, 9
sw $k0, 0x7F10
eret
li $t1, 0xDEAD
