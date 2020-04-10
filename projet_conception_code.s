.define CNT_START 0b00100000
.define LED_ADDRESS 0x1000

MAIN: mv r6, #CNT_START

LOOP: mv r4, r5
sub r4, 0b1
beq #TURN_LED_ON
bne #LOOP

TURN_LED_ON: 
mvt r3, #LED_ADDRESS
st r6, [r3]
