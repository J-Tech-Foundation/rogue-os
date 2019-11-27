%macro write 1
    ;%1 = the message to print
    mov eax,4
    mov ebx,1
    mov edx,equ $ - %1
    mov ecx,%1
    int 80h
%endmacro



section	.text
   global _start     
	
_start:	     
    mov edx,vimlen
    mov ecx,vim
    mov ebx,1
    mov eax,4
    int 0x80
    
    ;begin os
    mov edx,equ $ - loader 
    mov ecx,loader
    mov ebx,1
    mov eax,4
    int 0x80
    
    mov edx,equ $ - worksA
    mov ecx,worksA
    mov ebx,1
    mov eax,4
    int 0x80
    
    print SHUTDOWN_MSG
    ;end os
    
    mov eax,1
    int 0x80
section	.data
    vim db 'loading',0xa
    vimlen equ $ - vim
    loader db 'JT OS version 0.0.0.09',0xa
    worksA db 'testing file system',0xa
    SHUTDOWN_MSG db "shutting down system",0xa
    
;
;
;
; mov edx,LENGTH
; mov ecx,MSG
; mov ebx,1
; mov eax,4
; int 0x80

; end file:
; move eax,1
; int 0x80

;string setup:
;VAR_NAME db 'MSG_HERE',0xa
;LENGTH_NAME equ $ - VAR_NAME 