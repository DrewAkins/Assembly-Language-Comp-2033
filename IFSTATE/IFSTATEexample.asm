TITLE if example, changes the number to 100 if the number inserted from the keyboard is greater than 100.

include irvine32.inc
.data
prompt byte "Enter an integer :",0
prompt1 byte "Greater",0
prompt2 byte "Lesser",0
prompt3 byte "Equal",0
.code

main PROC
mov edx, OFFSET prompt
Call WriteString
Call ReadInt

cmp eax, 100
JG out1  ; Jumps to label out1 if eax is greater than 100
JL out2 ; Jumps to label out2 if eax is less than 100
JE out3 ; Jumps to label out3 if eax is equal to 100
jmp zz

out1:
mov edx, OFFSET prompt1
Call WriteString
mov eax, 100 
	 Call WriteInt

out2:
mov edx, OFFSET prompt2
Call WriteString
 mov eax, 0
 Call WriteInt

out3:
mov edx, OFFSET prompt3
Call WriteString
mov eax, 100
Call WriteInt
 
zz: exit
main ENDP
end main