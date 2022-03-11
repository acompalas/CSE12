.text
.global draw_pixel

#*****************************************************
# draw_pixel:
#  Given a coordinates y (row) in a1, and x (col) in
#  a2 sets corresponding value in memory to the color 
#  given by a0	
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#           a1 = y coordinate of pixel in format
#           a2 = x coordinate of pixel in format
#   Outputs:
#           No register outputs
#*****************************************************
draw_pixel:

    # Your code goes here
	li t2, 3072
	slli t1, a1, 5
	add t3, t1, a2
	add t4, t2, t3
	sb a0, 0(t4)
	
	jr ra
    