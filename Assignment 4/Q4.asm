TITLE FIND THE NUMBER

INCLUDE irvine32.inc

.data
array1 dword 63,81,9,9,27,54,9,19,99,9
prompt byte "The number of times nine appeared in the equation is: ",0


.code
main PROC
mov esi, OFFSET array1
mov ecx, LENGTHOF array1
mov ebx, 0

L1:
	mov eax, [esi]
	CMP eax, 9
	JE label1 	
	JMP label2


label1: add ebx, 1
label2: add ebx, 0
add esi, 4

Loop L1

mov edx, OFFSET prompt
Call WriteString
mov eax, ebx
Call WriteInt

exit
main ENDP
end main