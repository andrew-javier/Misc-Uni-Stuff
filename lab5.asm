extern printf
SECTION .data
fmt:	db	"number=%d",10,0
fmt2:	db	"Fizz",10,0
SECTION.txt
	global main
main:
	mov	ebx, 0		; push ebx to stack
L1:
	inc	ebx
	cmp	ebx,100		; compare ebx to 100, check if greater
	jg	end			; jump to end
	cmp ebx, 5
	je printFizz
	cmp ebx, 10
	je printFizz
	cmp ebx, 15
	je printFizz
	cmp ebx, 20
	je printFizz
	cmp ebx, 25
	je printFizz
	cmp ebx, 30
	je printFizz
	cmp ebx, 35
	je printFizz
	cmp ebx, 40
	je printFizz
	cmp ebx, 45
	je printFizz
	cmp ebx, 50
	je printFizz
	cmp ebx, 51
	je printFizz
	cmp ebx, 52
	je printFizz
	cmp ebx, 53
	je printFizz
	cmp ebx, 54
	je printFizz
	cmp ebx, 55
	je printFizz
	cmp ebx, 56
	je printFizz
	cmp ebx, 57
	je printFizz
	cmp ebx, 58
	je printFizz
	cmp ebx, 59
	je printFizz
	cmp ebx, 60
	je printFizz
	cmp ebx, 65
	je printFizz
	cmp ebx, 70
	je printFizz
	cmp ebx, 75
	je printFizz
	cmp ebx, 80
	je printFizz
	cmp ebx, 85
	je printFizz
	cmp ebx, 90
	je printFizz
	cmp ebx, 95
	je printFizz
	cmp ebx, 100
	je printFizz
	jmp printNum

printNum:
	push	ebx
	push 	fmt
	call	printf
	add 	esp, 8
	jmp 	L1
printFizz:
	push fmt2
		call printf
		add esp, 4
		jmp L1
end:
	mov ebx, 0
	mov eax, 1
	ret		
