/*  Copyright (C) 2007 IBM

    Author: Pete Eberlein  eberlein@us.ibm.com

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License as
    published by the Free Software Foundation; either version 2 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful, but
    WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
    02111-1307, USA.

    The GNU General Public License is contained in the file COPYING.
*/



#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

#define CMPB(result,a,b) \
    asm __volatile ("cmpb %0, %1, %2\n" : "=r"(result) : "r"(a), "r"(b))


int main(int argc, char *argv[])
{
   int i, j, k;
   long mask;
   for (i = 1; i < 16; i++) {
      mask = 0;
      if (i & 1)
         mask += 0xff;
      if (i & 2)
         mask += 0xff00;
      if (i & 4)
         mask += 0xff0000;
      if (i & 8)
         mask += 0xff000000;

      for (j = 0; j < 256; j++)
         for (k = 0; k < 256; k++)
            if (j != k) {

               long a, b, result;
               a = (mask & (j * 0x1010101)) + ((~mask) & (k * 0x1010101));
               b = j * 0x1010101;
               CMPB(result, a, b);
               if (result != mask) {
                  printf("%llx %llx %llx %llx\n",
                         (unsigned long long) mask, (unsigned long long) a,
                         (unsigned long long) b,
                         (unsigned long long) result);
                  exit(1);
		}
            }

   }

   return 0;
}
