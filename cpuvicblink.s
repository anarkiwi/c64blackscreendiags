; simply change background color as quickly as possible, without using RAM (show CPU can read ROM and program VIC).
; depends on functional kernel autostart.

bordercol=$d020

	*=$8000
	.word coldstart
	.word warmstart
	.byte $c3, $c2, $cd, $38, $30 ; "cbm80"

coldstart:
warmstart:
        sei
        cld
startblack:
        lda #0
updatebordercol:
        sta bordercol
        adc #$01
        cmp $10
        beq startblack
        jmp updatebordercol

	.dsb $a000-* ; pad to 8k.
