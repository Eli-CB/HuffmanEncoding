#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>

/* via : https://www.sanfoundry.com/c-program-sort-array-descending-order/ */
void insertionSort(int freq[26]){
  int i,j,a = 0;
  for (i = 0; i < 26; ++i){
    for (j = i + 1; j < 26; ++j){
      if (freq[i] < freq[j]){
        a = freq[i];
        freq[i] = freq[j];
        freq[j] = a;
      }
    }
  }
}

void getFrequency(char str[50], int freq[26]){
  int i = 0;
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
    else if(str[i] =='l'){
        freq[11]++;
    }
    else if(str[i] =='m'){
        freq[12]++;
    }
    else if(str[i] =='n'){
        freq[13]++;
    }
    else if(str[i] =='o'){
        freq[14]++;
    }
    else if(str[i] =='p'){
        freq[15]++;
    }
    else if(str[i] =='q'){
        freq[16]++;
    }
    else if(str[i] =='r'){
        freq[17]++;
    }
    else if(str[i] =='s'){
        freq[18]++;
    }
    else if(str[i] =='t'){
        freq[19]++;
    }
    else if(str[i] =='u'){
        freq[20]++;
    }
    else if(str[i] =='v'){
        freq[21]++;
    }
    else if(str[i] =='w'){
        freq[22]++;
    }
    else if(str[i] =='x'){
        freq[23]++;
    }
    else if(str[i] =='y'){
        freq[24]++;
    }
    else if(str[i] =='z'){
        freq[25]++;
    }
  }
  return;
}

int main(int argc, char *argv[]){

  int freq[26] = { 0 };
  char str[50], ch;
  int i, k = 0;

  printf("Enter the alphabet letters to encode: ");
  gets(str);
  getFrequency(str, freq);

  int letterFreq[26] = { 0 };

  printf("\nYou entered: ");
  for(i = 0; i < 26; i++){
    printf("%d", freq[i]);
    letterFreq[i] = freq[i];
  }

  insertionSort(freq);
  printf("\nAfter sorted: ");
  for(i = 0; i < 26; i++){
    printf("%d", freq[i]);
  }
  char letters[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
  for(i = 0; i < 26; i++){
    if(letterFreq[i] != 0){
      printf("\nLetter %c : %d", letters[i], letterFreq[i]);
    }
  }

  int enc[100] = { 0 };
  return 0;
}
