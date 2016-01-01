TITLE Determine if a number is even or odd

INCLUDE irvine32.inc

.data

prompt1 byte "Enter a number: ", 0
prompt2 byte "The max number is :", 0

.code

main PROC

mov edx, OFFSET prompt1
Call WriteString
Call ReadInt

mov ebx,eax

mov edx, offset prompt1
Call WriteString
Call ReadInt

mov ecx,eax

mov edx, OFFSET prompt1
call WriteString
call Readint

CMP eax,ebx
JG label1
JL label2
JMP label3

label1: CMP eax,ecx
JG label4
JMP label3

label2: CMP ebx,ecx
JG label5
JMP label3

label3: mov edx, offset prompt2
Call WriteString
mov eax,ecx
Call WriteInt

label4: mov edx, offset prompt2
Call WriteString
Call WriteInt

label5: mov edx, offset prompt2
Call WriteString
mov eax,ebx
Call WriteInt


exit 
main ENDP

END main