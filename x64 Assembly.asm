printFizz proto C   ; Defined below
printBuzz proto C   ; Defined below
printNum proto C    ; Defined below
endLine proto C     ; Defined below

.code

asmModulo proc	; RCX: Quotient
				; RDX: Divisor
Comp:
	cmp rcx, rdx
	jl Less
	sub rcx, rdx
	jmp Comp

Less:
	mov rax, rcx
	ret
asmModulo endp

main proc

	xor rbx, rbx

Logic:
	xor rbp, rbp
	mov rcx, rbx
	mov rdx, 3
	call asmModulo
	cmp rax, 0
	jne NoFizz
	inc rbp
	call printFizz

NoFizz:
	mov rcx, rbx
	mov rdx, 5
	call asmModulo
	cmp rax, 0
	jne NoBuzz
	inc rbp
	call printBuzz

NoBuzz:
	cmp rbp, 0
	jne NoNum
	sub rsp, 20h
	mov rcx, rbx
	call printNum
	add rsp, 20h

NoNum:
	inc rbx
	call endLine
	cmp rbx, 100
	jl Logic
	mov rax, 0
	ret
main endp

end

;   C++ Function Definitions
;
;   #include <iostream>
;
;   extern "C" void printFizz()
;   {
;	    std::cout << "Fizz";
;   }
;
;   extern "C" void printBuzz()
;   {
;	    std::cout << "Buzz";
;   }
;
;   extern "C" void printNum(int Num)
;   {
;     std::cout << Num;
;   }
;
;   extern "C" void endLine()
;   {
;	    std::cout << std::endl;
;   }
