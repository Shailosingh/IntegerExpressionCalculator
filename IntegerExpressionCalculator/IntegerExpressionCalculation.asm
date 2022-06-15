; Computes the expression, (A+B) - (C+D), using registers EAX, EBX, ECX, EDX respectively

.386								; Sets program as using the 32-bit x86 instructions
.model flat, stdcall				; Sets the memory model as flat and uses the standard call for procedures
.stack 4096							; Gives the program stack 4096 bytes
ExitProcess PROTO, dwExitCode:DWORD ; Declares prototype for ExitProcess

.code
main PROC
	mov EAX, 4						; Load the values to be computed
	mov EBX, 4
	mov ECX, 1
	mov EDX, 7

	add EAX, EBX					; Compute (A+B) and (C+D)
	add ECX, EDX

	sub EAX, ECX					; Compute (A+B) - (C+D)

	INVOKE ExitProcess, 0		    ; Returns 0 to the OS as the exit code
MAIN ENDP
END main