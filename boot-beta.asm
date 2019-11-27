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
    ;start os turn on
    ;end os turn on
    ;start os display
    ;end os display
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
    INVENTORY DW 0
              DW 1
              DW 2
              DW 3
              DW 4
              DW 5
              DW 6
              DW 7
              DW 8
              DW 9
              ;inventory equals 9 bytes of 0x0
              
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    