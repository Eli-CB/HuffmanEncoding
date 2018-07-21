#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <stdint.h>
#include <limits.h>
#include <stdbool.h>


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

void optimal_encoding(int codes[26], int number_of_letters){
  if(number_of_letters == 1){
    codes[0] = 0b0;
  }else if (number_of_letters == 2){
    codes[0] = 0b0;
    codes[1] = 0b1;
  }else if (number_of_letters == 3){
    codes[0] = 0b00;
    codes[1] = 0b01;
    codes[2] = 0b11;
  }else if(number_of_letters == 4){
    codes[0] = 0b00;
    codes[1] = 0b01;
    codes[2] = 0b10;
    codes[3] = 0b11;
  }else if(number_of_letters == 5){
    codes[0] = 0b00;
    codes[1] = 0b01;
    codes[2] = 0b11;
    codes[3] = 0b010;
    codes[4] = 0b110;
  }else if (number_of_letters == 6){
    // codes[0] = 0b001;
    // codes[1] = 0b011;
    // codes[2] = 0b0011;
    // codes[3] = 0b1111;
    // codes[4] = 0b0101;
    // codes[5] = 0b0000;
  }else { system("CLS"); printf("\nFuck you bitch, told you its only works with 2 unique characters..\n"); while (1); }
}
//void compress(char *codes[26], char alpha[]){


//}
int safe_add(unsigned long long a, int b, int *compressed_data2) {
  printf("compressed_data = %d\n", a);
  //printf("%d: b\n", b);
  //printf("half_int_max - a = %d\n", half_int_max-a);
  int half_int_max = INT_MAX/2;
  int result = half_int_max - a;

  if (result < 0) {
    //why does ULONG_LONG_MAX not work!?!??!
    printf("************HANDLE OVERFLOW************\n");
    *compressed_data2 = a;
    return 1+b;
  }
    return a += b;
}



int main(int argc, char *argv[]) {
  //printf("%llu", ULONG_LONG_MAX);
	int sorted_freq[26] = { 0 };
	char str[200], ch;
	int i, j, k = 0;
	unsigned long long compressed_data = 0;

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

  int codes[26] = { 0 };
  optimal_encoding(codes, number_of_letters);

	unsigned long long bit_to_add = 0;
	int index = 0;
	int data_stream[100] = {};
	index++;
	compressed_data = 1;
  int compressed_data2 = 0;
	printf("\nStart Bit '1' is added to the data stream\n");
	data_stream[0] = compressed_data;
	for (i = 0; i < str_length; i++) {
		printf("\nLetter: %c\n", str[i]);
		for (j = 0; j <= number_of_letters; j++) {

			if (number_of_letters == 2) {
				if (str[i] == alpha[j]) {
					//while (1);
					bit_to_add = codes[j];
					compressed_data <<= 1;
          compressed_data = safe_add(compressed_data, bit_to_add, &compressed_data2); //figure out how to handle overflow
					//compressed_data += bit_to_add;                           in here
					index++;
					data_stream[i + 1] = bit_to_add;
					printf("Added Bit %d to data stream!!\n", bit_to_add);
				}
			}

			else if (number_of_letters == 3) {
				if (str[i] == alpha[j]) {
					//while (1);
					bit_to_add = codes[j];
					if (bit_to_add == 0b00) {
						compressed_data += bit_to_add;
						compressed_data <<= 2;
						data_stream[index + 1] = 0;
						printf("Added Bit 0 to data stream!!\n");
						index++;
						data_stream[index + 1] = 0;
						index++;
						printf("Added Bit 0 to data stream!!\n");
						bit_to_add >>= 1;


					}
					else if (bit_to_add == 0b01) {
						compressed_data <<= 1;
						data_stream[index + 1] = 0;
						index++;
						printf("Added Bit 0 to data stream!!\n");
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						bit_to_add >>= 1;
					}
					else if (bit_to_add == 0b11) {
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						bit_to_add >>= 1;
					}
				}
			}
      else if (number_of_letters == 4) {
				if (str[i] == alpha[j]) {
					//while (1);
					bit_to_add = codes[j];
					if (bit_to_add == 0b00) {
						compressed_data += bit_to_add;
						compressed_data <<= 2;
						data_stream[index + 1] = 0;
						printf("Added Bit 0 to data stream!!\n");
						index++;
						data_stream[index + 1] = 0;
						index++;
						printf("Added Bit 0 to data stream!!\n");
						bit_to_add >>= 1;


					}
					else if (bit_to_add == 0b01) {
						compressed_data <<= 1;
						data_stream[index + 1] = 0;
						index++;
						printf("Added Bit 0 to data stream!!\n");
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						bit_to_add >>= 1;
					}
					else if (bit_to_add == 0b10) { //double check this pls
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
            compressed_data <<= 1;
            data_stream[index + 1] = 0;
            index++;
						printf("Added Bit 0 to data stream!!\n");
						bit_to_add >>= 1;
					}
          else if (bit_to_add == 0b11) {
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						bit_to_add >>= 1;
					}
				}
			}
      else if (number_of_letters == 5) {
				if (str[i] == alpha[j]) {
					//while (1);
					bit_to_add = codes[j];
					if (bit_to_add == 0b00) {
						compressed_data += bit_to_add;
						compressed_data <<= 2;
						data_stream[index + 1] = 0;
						printf("Added Bit 0 to data stream!!\n");
						index++;
						data_stream[index + 1] = 0;
						index++;
						printf("Added Bit 0 to data stream!!\n");
						bit_to_add >>= 1;


					}
					else if (bit_to_add == 0b01) {
						compressed_data <<= 1;
						data_stream[index + 1] = 0;
						index++;
						printf("Added Bit 0 to data stream!!\n");
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						bit_to_add >>= 1;
					}
					else if (bit_to_add == 0b010) { //double check this pls

            compressed_data <<= 1;
            data_stream[index + 1] = 0;
            index++;
            printf("Added Bit 0 to data stream!!\n");
            compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
            compressed_data <<= 1;
            data_stream[index + 1] = 0;
            index++;
						printf("Added Bit 0 to data stream!!\n");
						bit_to_add >>= 1;
					}
          else if (bit_to_add == 0b110) { //double check this pls
            compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
            compressed_data <<= 1;
            data_stream[index + 1] = 0;
            index++;
						printf("Added Bit 0 to data stream!!\n");
						bit_to_add >>= 1;
					}
          else if (bit_to_add == 0b11) {
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						compressed_data <<= 1;
						compressed_data += 1;
						data_stream[index + 1] = 1;
						index++;
						printf("Added Bit 1 to data stream!!\n");
						bit_to_add >>= 1;
					}
				}
			}
		}
	}
  printf("\nCompressed Data: %d" , compressed_data + compressed_data2);
  printf("\nCompressed Data Binary: ");
  for (i = 0; i < index + 1; i++) {
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

  unsigned char decompressed_str[200] = { };
  int pos = str_length - 1;
  int init_compressed_data = compressed_data;

  if (number_of_letters == 2) {
	  printf("Data to Decompress: %d\n", compressed_data);
	  for (i = 0; i < str_length; i++) {
		  if (compressed_data & 1) {
			  printf("Data remaining.... %d\n", compressed_data);
			  //compressed_data >>= 1;
			  printf("Data remaining after shifting.... %d\n", compressed_data);
			  decompressed_str[pos] = alpha[1]; pos--;

		  }
		  else
		  {
			  decompressed_str[pos] = alpha[0]; pos--;
		  }
		  compressed_data >>= 1;
      if((compressed_data==1) && (compressed_data2>0)){
        for (i = 0; i < str_length; i++) {
    		  if (compressed_data2 & 1) {
    			  decompressed_str[pos] = alpha[1]; pos--;

    		  }
    		  else
    		  {
    			  decompressed_str[pos] = alpha[0]; pos--;
    		  }
    		  compressed_data2 >>= 1;
        }
      }
    }
  }

  else if (number_of_letters == 3) {
	  for (i = 0; i < index; i+=2) {
		  if (compressed_data & 1) {
			  compressed_data >>= 1;
			  if (compressed_data & 1) {
				  decompressed_str[pos] = alpha[2]; pos--;
			  }
			  else {
				  decompressed_str[pos] = alpha[1]; pos--;
			  }
		  }
		  else
		  {
			  decompressed_str[pos] = alpha[0]; pos--;
        compressed_data >>= 1;

		  }
		  compressed_data >>= 1;
	  }
  }

  else if (number_of_letters == 4) {
	  for (i = 0; i < index; i+=2) {
		  if (compressed_data & 1) {
			  compressed_data >>= 1;
			  if (compressed_data & 1) {
				  decompressed_str[pos] = alpha[3]; pos--;
			  }
			  else {
				  decompressed_str[pos] = alpha[1]; pos--;
			  }
		  }
		  else
		  {
        compressed_data >>= 1;
        if (compressed_data & 1){
          decompressed_str[pos] = alpha[2]; pos--;
        }
        else {
			    decompressed_str[pos] = alpha[0]; pos--;
        }
		  }
		  compressed_data >>= 1;
	  }
  }

  else if (number_of_letters == 5) {
	  for (i = 0; i < index; i+=2) {
		  if (compressed_data & 1) {
			  compressed_data >>= 1;
			  if (compressed_data & 1) {
				  decompressed_str[pos] = alpha[2]; pos--;
			  }
			  else {
				  decompressed_str[pos] = alpha[1]; pos--;
			  }
		  }
		  else
		  {
        compressed_data >>= 1;
        if (compressed_data & 1){
          compressed_data >>= 1;
          if(compressed_data & 1){
            decompressed_str[pos] = alpha[4]; pos--;
          }
          else {
            decompressed_str[pos] = alpha[3]; pos--;
          }
        }
        else {
			    decompressed_str[pos] = alpha[0]; pos--;
        }
		  }
		  compressed_data >>= 1;
	  }
  }
  printf("\nOriginal String:	%s	Length: %d	Original Size: %d bits		Compressed Size: %d bits\n", str, str_length, str_length*8, index);
  printf("Decompressed str:	%s\n", decompressed_str);




  printf("\nList of letters typed in order of frequency: ");
  size_t n = sizeof(alpha);
  for(i = 0; i<n; i++){
    printf("%c", alpha[i]);
  }

  return 0;
}
