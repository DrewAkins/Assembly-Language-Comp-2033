TITLE determine if a number is even or odd

INCLUDE irvine32.inc

.data
prompt byte "Enter a number",0
evenn byte "The number is even",0
oddd byte "The number is odd",0
.code

main PROC

mov edx, OFFSET prompt
Call WriteString
Call ReadInt

AND eax, 1

CMP eax, 0
JE label1
JMP label2

label1: mov edx, OFFSET evenn
call WriteString

label2: mov edx, OFFSET oddd
call WriteString

label3:

main ENDP
exit
end main