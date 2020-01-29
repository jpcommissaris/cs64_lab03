
.data
	prompt: .asciiz "Choose an integer number between 0 and 1000:\n"
	str1: .asciiz "Hello World!\n"
	str2: .asciiz "The magic number is "
	str3: .asciiz "!!!\n"

.text

main:
	# print the prompt 
	li $v0, 4
	la $a0, prompt
	syscall

	# prompt for int 
	li $v0, 5
	syscall
	move $t0, $v0

	# print hello world
	li $v0, 4
	la $a0, str1
	syscall

	# print numer string
	li $v0, 4
	la $a0, str2
	syscall

	# print number and !!
	li $v0, 1
	move $a0, $t0 
	syscall
	li $v0, 4
	la $a0, str3
	syscall

exit:
	# Exit
	li $v0, 10
	syscall


