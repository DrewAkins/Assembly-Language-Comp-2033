TITLE Simple Arithamatic Problem

Include Irvine32.inc
.data
prompt byte "Enter a number",0
promptout byte "The sum is",0

.code

main PROC
Call Clrscr
mov dl, 10
mov dh, 45
Call Gotoxy

mov edx, OFFSET prompt
call WriteString
call ReadInt
mov ebx, eax
mov edx, OFFSET prompt
call WriteString
call ReadInt

add ebx, eax
mov eax, ebx
mov edx, OFFSET promptout
Call WriteString
Call WriteInt
main ENDP

end main