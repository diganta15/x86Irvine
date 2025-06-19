;Reversing a String
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
aName BYTE "Solid Snake",0
nameSize = ($-aName)-1

.code
main PROC
    ;Push the name on the stack
    mov ecx,nameSize
    mov esi,0

L1: movzx eax,aName[esi]
    push eax
    inc esi
    loop L1
;Reset counters
    mov ecx,nameSize
    mov esi,0

L2:
    pop eax
    mov aName[esi],al
    inc esi
    loop L2
main ENDP
END main