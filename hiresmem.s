; use hires bitmap mode to visualize test pattern (and blink border for liveness)
; TODO: only tests one 8k bank (need to test all). use better test pattern/colors to visualize problems.

	*=$8000
	.word coldstart
	.word warmstart
	.byte $c3, $c2, $cd, $38, $30 ; "cbm80"

coldstart:
warmstart:
        ldx #$ff
        sei
        txs
        cld
initvic:
        lda #$03
        sta $dd00
        lda #$3b
        sta $d011
        lda #$18
        sta $d018
initcolor:
        lda #$01
        ldx #$00
initcolorloop:
        sta $0400, x
        sta $0500, x
        sta $0600, x
        sta $0700, x
        inx
        bne initcolorloop
preloop:
        ldx #$00
loop1:
        txa
        stx $d020
        sta $2000, x
        sta $2100, x
        sta $2200, x
        sta $2300, x
        sta $2400, x
        sta $2500, x
        sta $2600, x
        sta $2700, x
        sta $2800, x
        sta $2900, x
        sta $2a00, x
        sta $2b00, x
        sta $2c00, x
        sta $2d00, x
        sta $2e00, x
        sta $2f00, x
        sta $3000, x
        sta $3100, x
        sta $3200, x
        sta $3300, x
        sta $3400, x
        sta $3500, x
        sta $3600, x
        sta $3700, x
        sta $3800, x
        sta $3900, x
        sta $3a00, x
        sta $3b00, x
        sta $3c00, x
        sta $3d00, x
        sta $3e00, x
        sta $3f00, x
        inx
        bne loop1
loop2:
        txa
        stx $d020
        eor #$7f
        sta $2000, x
        sta $2100, x
        sta $2200, x
        sta $2300, x
        sta $2400, x
        sta $2500, x
        sta $2600, x
        sta $2700, x
        sta $2800, x
        sta $2900, x
        sta $2a00, x
        sta $2b00, x
        sta $2c00, x
        sta $2d00, x
        sta $2e00, x
        sta $2f00, x
        sta $3000, x
        sta $3100, x
        sta $3200, x
        sta $3300, x
        sta $3400, x
        sta $3500, x
        sta $3600, x
        sta $3700, x
        sta $3800, x
        sta $3900, x
        sta $3a00, x
        sta $3b00, x
        sta $3c00, x
        sta $3d00, x
        sta $3e00, x
        sta $3f00, x
        inx
        bne loop2
        jmp preloop

	.dsb $a000-* ; pad to 8k.
