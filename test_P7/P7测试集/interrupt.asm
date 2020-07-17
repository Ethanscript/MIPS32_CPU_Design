.text
ori $3, $0, 0xff11
mtc0 $3, $12
ori $1, $0, 0x7f00
ori $3, $0, 1
sw $3, 4($1)
begin:
ori $1, $0, 0x7f00
ori $2, $0, 0x0009
sw $2, 0($1)
ori $3, $0, 0xffe3
lui $1, 0xdd32
addu $4, $3, $1
subu $5, $3, $1
addu $6, $5, $4
sw $4, 0($0)
sw $4, 4($0)
lw $5, 0($0)
lw $5, 4($0)
jal test
ori $4, $0, 0xce33
nop
test:
ori $6, $0, 0
sw $6, 0($0)
lw $6, 0($0)
beq $6, $0, begin
nop
nop

.ktext 0x4180
ori $k0, $0, 0
ori $k1, $0, 0x7f00
sw $k0, 0($k1)
ori $30, $0, 1
lw $k0, 4($k1)
addu $k0, $30, $k0
sw $k0, 4($k1)
ori $k0, $0, 0x3014
mtc0 $k0, $14
eret
