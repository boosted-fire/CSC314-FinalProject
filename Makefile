 1 NAME=final                                                                                                                               
 2                                                                                                                                          
 3 all: final                                                                                                                               
 4                                                                                                                                          
 5 clean:                                                                                                                                   
 6     rm -rf final final.o                                                                                                                 
 7                                                                                                                                          
 8 final: final.asm                                                                                                                         
 9     nasm -f elf -F dwarf -g final.asm                                                                                                    
10     gcc -no-pie -g -m32 -znoexecstack -o final final.o /usr/local/share/csc314/driver.c /usr/local/share/csc314/asm_io.o                 
11 
