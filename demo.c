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

// Gets the frequency of each letter entered: enables optimal encodings
void getFrequency(char str[50], int freq[26]){
  int i = 0;
  for(i = 0; str[i] != '\0'; i++){
    if(str[i] =='a'){
      freq[0]++;
    }else if(str[i] =='b'){
      freq[1]++;
    }else if(str[i] =='c'){
      freq[2]++;
    }else if(str[i] =='d'){
      freq[3]++;
    }else if(str[i] =='e'){
      freq[4]++;
    }else if(str[i] =='f'){
      freq[5]++;
    }else if(str[i] =='g'){
      freq[6]++;
    }else if(str[i] =='h'){
      freq[7]++;
    }else if(str[i] =='i'){
      freq[8]++;
    }else if(str[i] =='j'){
      freq[9]++;
    }else if(str[i] =='k'){
      freq[10]++;
    }else if(str[i] =='l'){
      freq[11]++;
    }else if(str[i] =='m'){
      freq[12]++;
    }else if(str[i] =='n'){
      freq[13]++;
    }else if(str[i] =='o'){
      freq[14]++;
    }else if(str[i] =='p'){
      freq[15]++;
    }else if(str[i] =='q'){
      freq[16]++;
    }else if(str[i] =='r'){
      freq[17]++;
    }else if(str[i] =='s'){
      freq[18]++;
    }else if(str[i] =='t'){
      freq[19]++;
    }else if(str[i] =='u'){
      freq[20]++;
    }else if(str[i] =='v'){
      freq[21]++;
    }else if(str[i] =='w'){
      freq[22]++;
    }else if(str[i] =='x'){
      freq[23]++;
    }else if(str[i] =='y'){
      freq[24]++;
    }else if(str[i] =='z'){
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
    codes[0] = 0b0;
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
  }else if (number_of_letters == 6){ //most efficient
    codes[0] = 0b01;
    codes[1] = 0b000;
    codes[2] = 0b010;
    codes[3] = 0b100;
    codes[4] = 0b011;
    codes[5] = 0b111;
  }else { system("CLS"); printf("\nUse less than 6 characters\n"); while (1); }
}
//void compress(char *codes[26], char alpha[]){


//}
bool safe_add(unsigned long compressed_data) {
  printf("compressed_data = %lu\n", compressed_data);
  int half_int_max = INT_MAX/2;
  int result = half_int_max - compressed_data;

  if (result < 0) {
    printf("************HANDLE OVERFLOW************\n");
    return false;
  }
  return true;
}

void decompress2(int str_length, unsigned char decompressed_str[200], unsigned long compressed_data, unsigned long compressed_data2, char alpha[26]){
  int i = 0;
  int pos = str_length-1;

  for (i = 0; i < str_length; i++) {
	  if (compressed_data & 1) {
		  decompressed_str[pos] = alpha[1]; pos--;
	  }else{
		  decompressed_str[pos] = alpha[0]; pos--;
	  }
	  compressed_data >>= 1;
    if((compressed_data==1) && (compressed_data2>0)){
      for (i = 0; i < str_length; i++) {
  		  if (compressed_data2 & 1) {
  			  decompressed_str[pos] = alpha[1]; pos--;
        }else{
  			  decompressed_str[pos] = alpha[0]; pos--;
  		  }
  		  compressed_data2 >>= 1;
      }
    }
  }
}

void add0bit(unsigned long *compressed_data, int data_stream[100], int a){
  *compressed_data <<= 1;
  data_stream[a] = 0;
  printf("Added Bit 0 to data stream!!\n");
}

void add1bit(unsigned long *compressed_data, int data_stream[100], int a){
  *compressed_data <<= 1;
  *compressed_data += 1;
  data_stream[a] = 1;
  printf("Added Bit 1 to data stream!!\n");
}

int main(int argc, char *argv[]) {
  //printf("%llu", ULONG_LONG_MAX);
	int sorted_freq[26] = { 0 };
	char str[200];
	int i, j, k = 0;
	unsigned long compressed_data = 0;

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

	int bit_to_add = 0;
	int index = 0;
	int data_stream[100] = { 0 };
	index++;
	compressed_data = 1;
  unsigned long compressed_data2 = 0;
	printf("\nStart Bit '1' is added to the data stream\n");
	data_stream[0] = compressed_data;
	for (i = 0; i < str_length; i++) {
		printf("\nLetter: %c\n", str[i]);
		for (j = 0; j <= number_of_letters; j++) {
      if (number_of_letters == 1) {
        if (str[i] == alpha[j]) {
					bit_to_add = codes[j];
          if(!safe_add(compressed_data)){
            compressed_data2 = compressed_data;
            compressed_data = 1;
          }
          add0bit(&compressed_data, data_stream, index);
          index++;
        }

      }
			if (number_of_letters == 2) {
				if (str[i] == alpha[j]) {
					//while (1);
					bit_to_add = codes[j];
					compressed_data <<= 1;
          if(!safe_add(compressed_data)){
            compressed_data2 = compressed_data;
            compressed_data = 1;
          }
					compressed_data += bit_to_add; //-what does this do?
					index++;
					data_stream[i + 1] = bit_to_add;
					printf("Added Bit %d to data stream!!\n", bit_to_add);
				}
			}
			else if (number_of_letters == 3) {
				if (str[i] == alpha[j]) {
					//while (1);
					bit_to_add = codes[j];
					if (bit_to_add == 0b0) {
						compressed_data += bit_to_add;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
					}
					else if (bit_to_add == 0b01) {
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
					}
					else if (bit_to_add == 0b11) {
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
					}
				}
			}
      else if (number_of_letters == 4) {
				if (str[i] == alpha[j]) {
					//while (1);
					bit_to_add = codes[j];
					if (bit_to_add == 0b00) {
						compressed_data += bit_to_add;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
					}
					else if (bit_to_add == 0b01) {
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
					}
					else if (bit_to_add == 0b10) { //double check this pls
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
					}
          else if (bit_to_add == 0b11) {
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
					}
				}
			}
      else if (number_of_letters == 5) {
				if (str[i] == alpha[j]) {
					//while (1);
					bit_to_add = codes[j];
					if (bit_to_add == 0b00) {
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
					}
					else if (bit_to_add == 0b01) {
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
					}
          else if (bit_to_add == 0b11) {
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
					}
					else if (bit_to_add == 0b010) { //double check this pls
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
					}
          else if (bit_to_add == 0b110) { //double check this pls
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add1bit(&compressed_data, data_stream, index);
            index++;
            if(!safe_add(compressed_data)){
              compressed_data2 = compressed_data;
              compressed_data = 1;
            }
            add0bit(&compressed_data, data_stream, index);
            index++;
					}

				}
			}
		}
	}
  printf("\nCompressed Data: %lu" , compressed_data + compressed_data2);
  printf("\nCompressed Data Binary: ");
  for (i = 0; i < index; i++) {
	  printf("%d", data_stream[i]);
  }
  printf("\nLength of Binary: %d", i);
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
  if(number_of_letters == 2){
    decompress2(str_length, decompressed_str, compressed_data, compressed_data2, alpha);
  }
  if (number_of_letters == 1){
    for (i = 0; i < str_length; i++) {
      decompressed_str[pos] = alpha[0]; pos--;
      compressed_data >>= 1;
      if((compressed_data==1) && (compressed_data2>0)){
        for (i = 0; i < str_length; i++) {
          decompressed_str[pos] = alpha[0]; pos--;
          compressed_data2 >>= 1;
        }
      }
    }
  }

  /*if (number_of_letters == 2) {
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
  }*/

  if (number_of_letters == 3) {
	  for (i = 0; i < index; i++) {
		  if (compressed_data & 1) {
        //i++;
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
		  }
		  compressed_data >>= 1;
      if((compressed_data==1) && (compressed_data2>0)){
        for (i = 0; i < index; i++) {
    		  if (compressed_data2 & 1) {
            //i++;
    			  compressed_data2 >>= 1;
    			  if (compressed_data2 & 1) {
    				  decompressed_str[pos] = alpha[2]; pos--;
    			  }
    			  else {
    				  decompressed_str[pos] = alpha[1]; pos--;
    			  }
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

  else if (number_of_letters == 4) {
	  for (i = 0; i < index; i++) {
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
      if((compressed_data==1) && (compressed_data2>0)){
        for (i = 0; i < index; i+=2) {
    		  if (compressed_data2 & 1) {
    			  compressed_data2 >>= 1;
    			  if (compressed_data2 & 1) {
    				  decompressed_str[pos] = alpha[3]; pos--;
    			  } else {
    				  decompressed_str[pos] = alpha[1]; pos--;
    			  }
    		  } else {
            compressed_data2 >>= 1;
            if (compressed_data2 & 1){
              decompressed_str[pos] = alpha[2]; pos--;
            } else {
    			    decompressed_str[pos] = alpha[0]; pos--;
            }
    		  }
          compressed_data2 >>= 1;
        }
      }
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
          //i++;
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
      if((compressed_data==1) && (compressed_data2>0)){
        for (i = 0; i < index; i+=2) {
          if (compressed_data2 & 1) {
            compressed_data2 >>= 1;
            if (compressed_data2 & 1) {
              decompressed_str[pos] = alpha[2]; pos--;
            }
            else {
              decompressed_str[pos] = alpha[1]; pos--;
            }
          }
          else
          {
            compressed_data2 >>= 1;
            if (compressed_data2 & 1){
              //i++;
              compressed_data2 >>= 1;
              if(compressed_data2 & 1){
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
          compressed_data2 >>= 1;
        }
      }
	  }
  }
  printf("\nOriginal String:	%s	Length: %d	Original Size: %d bits		Compressed Size: %d bits\n", str, str_length, str_length*8, index);
  printf("Decompressed String:	%s\n", decompressed_str);




  printf("\nList of letters typed in order of frequency: ");
  size_t n = sizeof(alpha);
  for(i = 0; i<n; i++){
    printf("%c", alpha[i]);
  }

  return 0;
}
