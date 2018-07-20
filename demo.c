#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int codes[2] = { 0 };

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

// G
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

//void compress(char *codes[26], char alpha[]){


//}

int main(int argc, char *argv[]) {

	int sorted_freq[26] = { 0 };
	char str[50], ch;
	int i, j, k = 0;
	int compressed_data = 0;

	printf("Enter the alphabet letters to encode: ");
	gets(str);
	getFrequency(str, sorted_freq);

	int unsorted_letterFreq[26] = { 0 };
	int number_of_letters = 0;

	printf("\nYou entered: ");
	for (i = 0; i < 26; i++) {
		if (sorted_freq[i] != 0) {
			number_of_letters++;
		}
		unsorted_letterFreq[i] = sorted_freq[i];
		printf("%d", unsorted_letterFreq[i]);
	}

	//freq_sorted is now sorted
	insertionSort(sorted_freq);

	printf("\nAfter sorted: ");
	for (i = 0; i < 26; i++) {
		if (sorted_freq[i] != 0) {
			printf("%d", sorted_freq[i]);
		}
	}

	// 'alpha' will be set to the used letters, 'letters' is a list of all the letters
	char alpha[26] = { 0 };
	char letters[26] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
	int temp = number_of_letters;
	int str_length = strlen(str);
	// While there are still letters
	while (temp > 0) {
		for (i = 0; i < 26; i++) {
			// Only checks for letters that were typed
			if (unsorted_letterFreq[i] != 0) {
				if (sorted_freq[k] == unsorted_letterFreq[i]) {
					printf("\nLetter %c : %d", letters[i], unsorted_letterFreq[i]);
					sorted_freq[k] = 0;
					alpha[k] = letters[i];
					temp--;
					k++;
				}

			}
		}
	}

	/*if (number_of_letters == 2) {
		while (1);
		codes[0] = "0";
		codes[1] = "1";
		printf("");
	}
	else if (number_of_letters == 3) {
		codes[0] = "00";
		codes[1] = "01";
		codes[2] = "11";
	}
	else if (number_of_letters == 4) {
		codes[0] = "001";
		codes[1] = "011";
		codes[2] = "0011";
		codes[3] = "1111";
	}
	else if (number_of_letters == 5) {
		codes[0] = "001";
		codes[1] = "011";
		codes[2] = "0011";
		codes[3] = "1111";
		codes[4] = "0101";
	}*/
	if (number_of_letters == 2) {
		codes[0] = 0b0;
		codes[1] = 0b1;
	}
	else { system("CLS"); printf("\nFuck you bitch, told you its only works with 2 unique characters..\n"); while (1); }
  int bit_to_add = 0;
  int data_stream[100] = {  };
  printf("\nOriginal String: %s	Length: %d", str, str_length);
  compressed_data = 1;
  printf("\nStart Bit '1' is added to the data stream\n");
  data_stream[0] = compressed_data;
  for (i = 0; i < str_length; i++) {
	  printf("\nLetter: %c\n", str[i]);
	  for (j = 0; j <= number_of_letters; j++) {
		  if (str[i] == alpha[j]) {
			  //while (1);
			  bit_to_add = codes[j];
			  compressed_data <<= 1;
			  compressed_data += bit_to_add;
			  data_stream[i + 1] = bit_to_add;
			  printf("Added Bit %d to data stream!!\n", bit_to_add);
		  }
	  }
  }

  printf("\nCompressed Data: %d" , compressed_data);
  printf("\nCompressed Data Binary: ");
  for (i = 0; i < str_length + 1; i++) {
	  printf("%d", data_stream[i]);
  }
  printf("\n");

  int flag = 1;
  int input = 0;
  while (flag) {
	  printf("Press '1' to Decompress...\n");
	  scanf("%d", &input);

	  if (input == 1) {
		  flag = 0;
	  }

  }
  printf("LMAO not written yet, works in progress...\n");
 
  while (1);

  //printf("\nFirst Letter: %c", alpha[1]);
  //printf("\nFirst Letter: %c", alpha[2]);
  //change to int codes[26] = {0b0, 0b1}; binary
  char  *codes[26] = {0};
  

  //compress(codes[], alpha[]);


  printf("\nList of letters typed in order of frequency: ");
  size_t n = sizeof(alpha);
  for(i = 0; i<n; i++){
    printf("%c", alpha[i]);
  }

  return 0;
}
