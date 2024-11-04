 1 NAME=game                                                                                                                               
 2                                                                                                                                          
 3 all: game                                                                                                                               
 4                                                                                                                                          
 5 clean:                                                                                                                                   
 6     rm -rf game game.o                                                                                                                 
 7                                                                                                                                          
 8 game: game.asm                                                                                                                         
 9     nasm -f elf -F dwarf -g game.asm                                                                                                    
10     gcc -no-pie -g -m32 -znoexecstack -o game game.o /usr/local/share/csc314/driver.c /usr/local/share/csc314/asm_io.o                 
11 
