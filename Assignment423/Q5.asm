TITLE Shuffle an Array

INCLUDE Irvine32.inc

.data

array dword 50 dup(0)

.code

main PROC

mov ecx, 50
mov eax, 0
mov ebx,0
L1:

add eax, 1

Call WriteInt
mov [array + ebx], eax
add ebx, 4
Loop L1

call crlf
call crlf

mov ecx, 50

L2:
mov eax, 50
Call RandomRange
mov edx, eax
mov ebx, array[edx*4]

mov eax, 50
call RandomRange
mov esi, eax
mov eax, array[esi*4]

mov array[esi*4], ebx
mov array[edx*4], eax


;Call WriteInt

Loop L2

mov ecx,50
mov esi, offset array
L3:
mov eax,[esi]
call writeint
add esi,4
loop L3

main ENDP
end main