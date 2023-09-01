lorom

org $059d7c
        nop
        nop

if defined("US")
org $06ea63
else
org $06e761
endif
my_code:
if defined("US")
        jsl     $00acec
else
        jsl     $00ad44
endif
        bne     .end
        lda.b   #$01
        sta.w   $000000, x
        stz.w   $000011, x
        lda.b   #$06
        sta.w   $000012, x
        ldy.w   #$0024
        lda.b   $20
        sta.w   $000020, x
        beq     .cont
        ldy.w   #$ffdc
.cont
        rep     #$20
        tya
        clc
        adc.b   $07
        sta.w   $0007, x
        clc
        lda.w   #$0040
        adc.b   $0a
        sta.w   $00000a, x
        lda.b   $0d
        sta.w   $00000d, x
        sep     #$20
        nop
        nop
.end
