#include <stdio.h>

unsigned int mem1[] = {
   0x0485b210, 0x0485b190, 0x0485b1b0, 0x0485b260,
   0x0485b280, 0x0485b400, 0x0485b420, 0x0485b2f0,
   0x0485b300, 0x0485b3c0, 0x0485b3d0, 0x0485b470,
   0x0485b490, 0x048608b0, 0x048608a0, 0x048601f0,
   0x0485f240, 0x0485f1b0, 0x04860020, 0x0485f4d0,
   0x0485fb00, 0x048607b0, 0x04860470, 0x04860440,
   0x048606c0, 0x048604b0, 0x048605b0, 0x0485ac10,
   0x0485a570, 0x0485ac90, 0x0485ae60, 0x0485bc10,
   0x0485ba70, 0x0485c384, 0x0485df30, 0x0485ac00,
   0x04861560, 0x04861680, 0x04863700, 0x048617dc,
   0x0485e0d0, 0x0485e6a0, 0x0485ee80, 0x04860e10,
   0x04860f20, 0x04860fd0, 0x04863300, 0x04863378,
   0x0487b000, 0x04863490, 0x04858648, 0x0485810c,
   0x04868eb0, 0x00000001, 0x00000000, 0x00000000,
   0x00000000, 0x0487b010, 0x0487b010, 0x0487b018,
   0x0487b018, 0xffffffff, 0xffffffff, 0x00000000,
   0x00000000, 0x04019280, 0x84024238, 0x048572d0,
   0x04883000, 0x0487b2cc, 0x0487af24, 0x04873000,
   0x04853000, 0x04863000, 0x0487b2d8, 0x0487d340,
   0x048665b0, 0x0487b2dc, 0x0487b2d0, 0x0487b2e8,
   0x0485c384, 0x0485df30, 0x04857eb0, 0x048589f8,
   0x048587e0, 0x0487b2fc, 0x048579c0, 0x0487b2f0,
   0x0487b2e4, 0x0487b2d4, 0x04863490, 0x04868ef0,
   0x04858c2c, 0x0487b000, 0x048639a0, 0x0487b340,
   0x04858d68, 0x04858648, 0x04858f18, 0x04857978
};

unsigned int mem2[100];

int main ()
{
   int i, out;
   for (i = 0; i < 100; i++)
      mem2[i] = 0;

   __asm__ volatile(
           "move $s0, %1\n\t" // s0 addr mem1
           "move $a2, %2\n\t" // a2 addr mem2
           " li $v0, 0\n\t"   // v0 counter
           " li $a1, 0x190\n\t"  // a1 mem len
           " begin:\n\t"
           "addu $v1, $s0, $v0\n\t"
           "lw $a0, 0($v1)\n\t"
           "addu $v1, $a2, $v0\n\t"
           "addiu $v0, $v0, 4\n\t"
           "sw $a0, 0($v1)\n\t"
           "bne $v0, $a1, begin\n\t"
     : "=&r" (out)
	 : "r" (mem1), "r" (mem2)
     : "s0", "a1", "a2", "v0", "v1", "cc", "memory"
   );
   for (i = 0; i < 100; i = i+4)
      printf("0x%x, 0x%x, 0x%x, 0x%x\n", mem2[i], mem2[i+1],
                                         mem2[i+2], mem2[i+3]);
   return 0;
}
