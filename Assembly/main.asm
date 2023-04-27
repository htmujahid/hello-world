.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO STDCALL : DWORD
WriteConsoleA PROTO STDCALL : DWORD, : DWORD, : DWORD, : DWORD, : DWORD

.data
message DB 'Hello, World!',0

.code
start:
    ; set up parameters for WriteConsoleA
    push STD_OUTPUT_HANDLE
    push OFFSET message
    push 13
    push 0
    call WriteConsoleA

    ; call ExitProcess to terminate the program
    push 0
    call ExitProcess

end start
