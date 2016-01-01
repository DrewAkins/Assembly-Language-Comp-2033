TITLE offset operator

INCLUDE irvine32.inc

.data
eight byte 3,4,5,6
sixteen word 0,1,2,3

.code
main PROC

mov ecx, LENGTHOF eight

	mov bl, eight
	movzx eax, bl
	call WriteInt
	mov bl, eight+1
	movzx eax, bl
	call WriteInt
	mov bl, eight+2
	movzx eax, bl
	call WriteInt
	mov bl, eight+3
	movzx eax, bl
	call WriteInt

	call crlf

	mov bx, sixteen
	movzx eax, bx
	call WriteInt
	mov bx, sixteen+2
	movzx eax, bx
	call WriteInt
	mov bx, sixteen+4
	movzx eax, bx
	call WriteInt
	mov bx, sixteen+6
	movzx eax, bx
	call WriteInt


main ENDP

end main