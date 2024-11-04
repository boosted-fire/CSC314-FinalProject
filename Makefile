NAME=game                                                                                                                               
                                                                                                                                          
all: game                                                                                                                               
                                                                                                                                          
clean:                                                                                                                                   
     rm -rf game game.o                                                                                                                 
                                                                                                                                          
 game: game.asm                                                                                                                         
     nasm -f elf -F dwarf -g game.asm                                                                                                    
     gcc -no-pie -g -m32 -znoexecstack -o game game.o /usr/local/share/csc314/driver.c /usr/local/share/csc314/asm_io.o                 
