TITLE Generate Random Number

INCLUDE Irvine32.inc


.data

list dword ?

.code
main PROC
mov esi, 0
mov ecx, 20
L1:
mov eax, 101
Call RandomRange
Call WriteInt

mov list[esi], eax
add esi, 4
Loop L1

call WriteInt
main ENDP

end main