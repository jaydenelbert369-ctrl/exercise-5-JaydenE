.data
out:   .space 12
alpha: .word 5
beta:  .word 15
pair:  .word 20, 35
done:  .asciiz "Program completed\n"

.text
.globl main
main:
    # TODO 1: Load alpha, add 3, store to out + 0
    #get and load address value of alpha
    la t3, alpha      
    lw t3, 0(t3)     
    #add 3
    addi t3, t3, 3    
    #get address of out
    la t4, out
    #Store result of out+0
    sw t3, 0(t4)    


    # TODO 2: Load beta, add 9, store to out + 4
    #get address of beta
    la t3, beta       
    #load beta value
    lw t3, 0(t3)      
    #add 9
    addi t3, t3, 9   
     # get address of out, store result at out+4
    la t4, out       
    sw t3, 4(t4)     


    # TODO 3: Load pair + 4, subtract 45, store to out + 8
    #get address of pair
    la t3, pair      
    #load second word of pair 4 offset
    lw t3, 4(t3)     
    #subtract 45
    addi t3, t3, -45  
     #get address of out, store result at out+8
    la t4, out        
    sw t3, 8(t4)      



    # TODO 4: Reload out into t0, t1, t2
    #get address of out
    la t4, out        
    #reload first result
    lw t0, 0(t4)      
     # reload second result
    lw t1, 4(t4)      
    #reload third result
    lw t2, 8(t4)      


    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall