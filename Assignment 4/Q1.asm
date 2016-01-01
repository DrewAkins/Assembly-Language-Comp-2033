TITLE Determine if number is POSITIVE or NEGATIVE

INCLUDE irvine32.inc

.data

prompt1 byte "Enter a number: ",0
pos byte "Positive",0
nega byte "Negative",0
.code

main PROC

mov edx, OFFSET prompt1
Call WriteString
Call ReadInt

CMP eax,0
JG label1
JL label2

label1: mov edx, OFFSET pos
Call WriteString

label2: mov edx, OFFSET nega
Call WriteString

label3:
exit 
main ENDP

END main
