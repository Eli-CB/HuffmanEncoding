#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(int argc, char *argv[]){

  char str[50], ch;
  int i, k = 0;
  int freq[26] = { 0 };

  printf("Enter the alphabet letters to encode: ");
  gets(str);

  for(i = 0; str[i] != '\0'; i++){
    if(str[i] =='a'){
        freq[0]++;
    }
    else if(str[i] =='b'){
        freq[1]++;
    }
    else if(str[i] =='c'){
        freq[2]++;
    }
    else if(str[i] =='d'){
        freq[3]++;
    }
    else if(str[i] =='e'){
        freq[4]++;
    }
    else if(str[i] =='f'){
        freq[5]++;
    }
    else if(str[i] =='g'){
        freq[6]++;
    }
    else if(str[i] =='h'){
        freq[7]++;
    }
    else if(str[i] =='i'){
        freq[8]++;
    }
    else if(str[i] =='j'){
        freq[9]++;
    }
    else if(str[i] =='k'){
        freq[10]++;
    }

  }

  for(k = 0; k < 11; k++){
    printf("%d", freq[k]);
  }


  return 0;
}
