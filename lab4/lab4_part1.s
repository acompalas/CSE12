.text
.global fill_bitmap

#*****************************************************
# fill_bitmap: 
#  Given a color, will fill the bitmap display with that color.
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#   Outputs:
#           No register outputs
#*****************************************************
fill_bitmap:

    # Your code goes here
	li t6, 3072
	addi t3, x0, 1024
Loop: 
	beq t4, t3, label1
	sb a0, 0(t6)
	addi t6, t6, 1
	jal x0, Loop

    
label1:
    	jr      ra
