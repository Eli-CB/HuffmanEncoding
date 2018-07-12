#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int freq[26] = { 0 };

/*void buildHuffmanTree(Node **tree){
    Node *temp;
    Node *array[26];
    int i, subTrees = 26;
    int smallOne,smallTwo;

    for (i=0;i<26;i++){
      if(freq[i] != 0){
        array[i] = malloc(sizeof(Node));
        array[i]->value = freq[i];
        array[i]->letter = i;
        array[i]->left = NULL;
        array[i]->right = NULL;
      }
    }

    while (subTrees>1){
        smallOne=findSmaller(array,-1);
        smallTwo=findSmaller(array,smallOne);
        temp = array[smallOne];
        array[smallOne] = malloc(sizeof(Node));
        array[smallOne]->value=temp->value+array[smallTwo]->value;
        array[smallOne]->letter=127;
        array[smallOne]->left=array[smallTwo];
        array[smallOne]->right=temp;
        array[smallTwo]->value=-1;
        subTrees--;
    }

    *tree = array[smallOne];

    return;
}*/

void get_frequency(char str[50]){
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
}

int main(int argc, char *argv[]){

  char str[50], ch;
  int i, k = 0;

  printf("Enter the alphabet letters to encode: ");
  gets(str);
  get_frequency(str);

  for(k = 0; k < 26; k++){
    printf("%d", freq[k]);
  }

  return 0;
}
