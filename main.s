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



    # TODO 2: Load beta, add 9, store to out + 4



    # TODO 3: Load pair + 4, subtract 45, store to out + 8



    # TODO 4: Reload out into t0, t1, t2



    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall