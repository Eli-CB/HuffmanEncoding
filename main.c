#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(int argc, char *argv[]){

  char str[20], ch;
  printf("Enter the text to encode:");
  gets(str);
  printf("You want to encode the string '", c, "'\n");
  scanf("%c",&ch);

  for(i = 0; str[i] != '\0'; ++i){
    if(ch == str[i]){
        ++frequency;
    }
  }
  printf("Frequency of %c = %d", ch, frequency);
  int i, frequency = 0;




  return 0;
}
