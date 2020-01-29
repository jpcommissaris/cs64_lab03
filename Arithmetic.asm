
.text

main:

	# prompt for int
	li $v0, 5
	syscall
	move $t0, $v0

	# prompt for int
	li $v0, 5
	syscall
	move $t1, $v0

	# prompt for int
	li $v0, 5
	syscall
	move $t2, $v0
	
	# do math
	add $t3, $t0, $t1
	sll $t3, $t3, 2
	li $t0, 5
	mult $t2, $t0
	mflo $t4
	sub $t5, $t3, $t4

	# display
	li $v0, 1
	move $a0, $t5
	syscall


exit:
	# Exit
	li $v0, 10
	syscall
