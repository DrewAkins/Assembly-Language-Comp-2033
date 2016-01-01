TITLE Procedure Example

INCLUDE Irvine32.inc
.data
thesum dword 0
prompt byte "Enter A Number",0
promptout byte "The Sum is : ",0
.code

; Sum is a proceedure the sum of two numbers.
; The two numbers are stored in eax and ebx
; The sum is stored and/or returned in eax

sum PROC
add eax, ebx 
ret
sum ENDP


main PROC
; Read the first number

mov edx, OFFSET prompt
Call Writestring
Call ReadInt

mov ebx, eax

; Read the second number
mov edx, OFFSET prompt
Call Writestring
Call ReadInt

Call Sum
mov edx, OFFSET promptout
Call WriteString
Call WriteInt
call crlf
call crlf

; Example using Randomrange; registers used are eax

mov eax, 10 ; The values generated is between 0 and 9
Call RandomRange ; random value is stored in eax
call WriteInt ; 

exit

main ENDP

end main