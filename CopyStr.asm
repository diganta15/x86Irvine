;Copying a string
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
source BYTE "This is the source of the string",0
target BYTE SIZEOF source DUP(0)

.code 
main PROC
    mov esi,0
    mov ecx,SIZEOF source

L1:
    mov al,source[esi]
    mov target[esi],al
    inc esi

    loop L1

    invoke ExitProcess,0

main ENDP
END main