TITLE cmp example pratice

INCLUDE irvine32.inc


.data
prompt byte "Write Number:",0
prompt2 byte "Numbers are Equal",0


.code
main PROC
mov edx, OFFSET prompt
Call WriteString 
Call ReadInt

mov ebx, eax

call crlf
mov edx, OFFSET prompt
Call WriteString
Call ReadInt

cmp ebx, eax
JG out1
JL out2
JE out3

out1: mov eax, ebx
		Call WriteInt

out2: Call WriteInt

out3: mov edx, OFFSET prompt2
		Call WriteString
main ENDP

end main