cmp ecx, array_size ; Compare ecx with array size
jge overflow_handler ; Jump to overflow handler if ecx >= array_size
mov eax, [ebx+ecx*4] ; Access memory if ecx is within bounds
jmp end
overflow_handler:
; Handle the buffer overflow appropriately (e.g., return error, exit)
end: