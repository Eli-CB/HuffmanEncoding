#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <stdint.h>
#include <limits.h>
#include <stdbool.h>
#include <time.h>
#include <sys/time.h>

void insertionSort(int freq[26]) {
    int i,j,a = 0;
    for (i = 0; i < 26; ++i) {
        for (j = i + 1; j < 26; ++j) {
            if (freq[i] < freq[j]) {
                a = freq[i];
                freq[i] = freq[j];
                freq[j] = a;
            }
        }
    }
}

// Gets the frequency of each letter entered: enables optimal encodings
void getFrequency(char* str, int freq[26]) { //ADDED a "*" for char str :)
    int i = 0;
    while(str[i] != '\0') {
        switch(str[i]) {
        case 'a':
            freq[0]++;
            break;
        case 'b':
            freq[1]++;
            break;
        case 'c':
            freq[2]++;
            break;
        case 'd':
            freq[3]++;
            break;
        case 'e':
            freq[4]++;
            break;
        case 'f':
            freq[5]++;
            break;
        case 'g':
            freq[6]++;
            break;
        case 'h':
            freq[7]++;
            break;
        case 'i':
            freq[8]++;
            break;
        case 'j':
            freq[9]++;
            break;
        case 'k':
            freq[10]++;
            break;
        case 'l':
            freq[11]++;
            break;
        case 'm':
            freq[12]++;
            break;
        case 'n':
            freq[13]++;
            break;
        case 'o':
            freq[14]++;
            break;
        case 'p':
            freq[15]++;
            break;
        case 'q':
            freq[16]++;
            break;
        case 'r':
            freq[17]++;
            break;
        case 's':
            freq[18]++;
            break;
        case 't':
            freq[19]++;
            break;
        case 'u':
            freq[20]++;
            break;
        case 'v':
            freq[21]++;
            break;
        case 'w':
            freq[22]++;
            break;
        case 'x':
            freq[23]++;
            break;
        case 'y':
            freq[24]++;
            break;
        case 'z':
            freq[25]++;
            break;
        }
        i++;
    }
    return;
}

//ADDED SWITCH STATEMENT OPTIMIZED
void optimal_encoding(int codes[26], int number_of_letters) {
    switch(number_of_letters) {
    case 1:
        codes[0] = 0b0;
        break;
    case 2:
        codes[0] = 0b0;
        codes[1] = 0b1;
        break;
    case 3:
        codes[0] = 0b0;
        codes[1] = 0b01;
        codes[2] = 0b11;
        break;
    case 4:
        codes[0] = 0b0;
        codes[1] = 0b01;
        codes[2] = 0b011;
        codes[3] = 0b111;
        break;
    case 5:
        codes[0] = 0b00;
        codes[1] = 0b01;
        codes[2] = 0b11;
        codes[3] = 0b010;
        codes[4] = 0b110;
        break;
    default:
        codes[0] = 0b001;
		codes[1] = 0b101;
        codes[2] = 0b1100;
        codes[3] = 0b0111;
        codes[4] = 0b1010;
        codes[5] = 0b1110;
        codes[6] = 0b0010;
		codes[7] = 0b1011;
        codes[8] = 0b0011;
        codes[9] = 0b1000;
        codes[10] = 0b01111;
		codes[11] = 0b11111;
        codes[12] = 0b00100;
        codes[13] = 0b10100;
        codes[14] = 0b010000;
        codes[15] = 0b100110;
        codes[16] = 0b100000;
        codes[17] = 0b000110;
		codes[18] = 0b000000;
		codes[19] = 0b110110;
        codes[20] = 0b110000;
		codes[21] = 0b0010110;
        codes[22] = 0b011010110;
		codes[23] = 0b101010110;
        codes[24] = 0b111010110;
		codes[25] = 0b0001010110;
	
        break;

    }
}

bool safe_add(int compressed_data, int bit) {
  //printf("compressed_data = %d\n", compressed_data);
    if (compressed_data >= INT_MAX>>bit) {
        //printf("\n************HANDLE OVERFLOW************\n");
		//printf("\nCompressed Number XXXXXXX : %d	INT_MAX: %d	INT_MAX>>bit: %d\n",compressed_data, INT_MAX, INT_MAX >> bit);
        return false;
    }
    return true;
}

bool checkValid(char **input) {
    int i;
    bool notValid = true;
    int len = strlen(*input);
    for (i = 0; i < len; i++) {
        if ((*input)[i] <= 96 || (*input)[i] >= 123) {
            printf("%c isn't a valid input!\n",(*input)[i]);
            notValid = false;
        }
    }
    return notValid;
}

int main() {                                
//  clock_t begin = clock();	
  
  int sorted_freq[26] = { 0 };
  char* str = (char*)malloc(1024); 
  
  if(str == NULL) {                           
    //printf("Memory allocation failed");
    return 0;
  }
  int* buffer = (int*)malloc(1024); 
  if(buffer == NULL) {                           
    //printf("Memory allocation failed");
    return 0;
  }	
  int* splitted_str_data = (int*)malloc(1024);     
  if(splitted_str_data == NULL) {                           
    //printf("Memory allocation failed");
    return 0;
  }
	//126 bits: asasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaassssa

  int i, j, k = 0;
  int buffer_index = 0;
  int str_index = 0;
  int compressed_data = 1;           //***********OPTIMIZED

    //unsigned long int not supported by 32 bit system

    do {
        printf("Enter the alphabet letters to encode: ");

        scanf("%s", str);
    } while(!checkValid(&str));
	struct timeval start, stop;
    gettimeofday(&start, NULL);
    getFrequency(str, sorted_freq);

    int unsorted_letterFreq[26] = { 0 };
    int number_of_letters = 0;

    //printf("\nYou entered: ");
    for (i = 0; i < 26; i++) {
		if (sorted_freq[i] != 0) {
            number_of_letters++;
        }
        unsorted_letterFreq[i] = sorted_freq[i];
      //  printf("%d", unsorted_letterFreq[i]);
    }

	int bits_for_safe_shifting = number_of_letters;		//ELISMAJOR
	if (number_of_letters == 1) {
		bits_for_safe_shifting++;
	}
	else if (number_of_letters > 1 && number_of_letters < 5) {
		bits_for_safe_shifting--;
	}
	else if (number_of_letters == 5) {
		bits_for_safe_shifting -= 2;
	}
	else if (number_of_letters <= 14) {
		bits_for_safe_shifting = 6;
	}
	else {
		bits_for_safe_shifting = 10;
	}

    //freq_sorted is now sorted
    insertionSort(sorted_freq);

    ////printf("\nAfter sorted: ");
    for (i = 0; i < 26; i++) {
        if (sorted_freq[i] != 0) {
            /////printf("%d", sorted_freq[i]);
        }
    }

    // 'alpha' will be set to the used letters, 'letters' is a list of all the letters
    char alpha[26] = { 0 };
    char letters[26] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
    int temp = number_of_letters;
    int str_length = strlen(str);
	int untouched_strlen = str_length;
	printf("LETTER   | FREQUENCY");	
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
    int index = 1;
	int* data_stream = (int*)malloc((strlen(str)*bits_for_safe_shifting)+1);
	if (data_stream == NULL) {                           
		//printf("Memory allocation failed");
		return 0;
	}
    //printf("\nStart Bit '1' is added to the data stream\n");
    data_stream[0] = compressed_data;

	for (i = 0; i < str_length; i++) {
		if (!safe_add(compressed_data, bits_for_safe_shifting)) {
			//while (1);
			i--;
			buffer[buffer_index] = compressed_data;
			splitted_str_data[buffer_index] = str_index;
			str_index = 0;
			compressed_data = 1;
			//while (1);
			//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
			buffer_index++;
		}
		else {
			//printf("\nLetter: %c\n", str[i]);
			for (j = 0; j < number_of_letters; j++) {
				if (number_of_letters == 1) {
					if (str[i] == alpha[j]) {
						//bit_to_add = codes[j];					
						str_index++;
						compressed_data <<= 1;
						index++;
						data_stream[i + 1] = 0;
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
						//printf("Added Bit %d to data stream!!\n", bit_to_add);
					
					}

				}
				else if (number_of_letters == 2) {
					if (str[i] == alpha[j]) {
						//while (1);
						bit_to_add = codes[j];

						str_index++;
						compressed_data <<= 1;
						compressed_data += bit_to_add;
						index++;
						data_stream[i + 1] = bit_to_add;
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
						//printf("Added Bit %d to data stream!!\n", bit_to_add);


					}
				}
				else if (number_of_letters == 3) {
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b0) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b11) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}
				}
				else if (number_of_letters == 4) {
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b0) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b011) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b111) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}
				}
				else if (number_of_letters == 5) {
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b00) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b11) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b010) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");

						}
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}
				}
				else if (number_of_letters > 5) {
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b001) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b101) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b1100) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b0111) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");

						}
						else if (bit_to_add == 0b1010) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b1110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b0010) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b1011) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");

						}
						else if (bit_to_add == 0b0011) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");

						}
						else if (bit_to_add == 0b1000) {			//codes[9]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						///////////////////////////////////////////////////
						
						
						
						else if (bit_to_add == 0b01111) {			//codes[10]
							str_index++;
											
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
			
						}
						
						else if (bit_to_add == 0b11111) {			//codes[11]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b00100) {			//codes[12]
							str_index++;
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b10100) {			//codes[13]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");	
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");		
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b010000) {			//codes[14]
							str_index++;
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b100110) {			//codes[15]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");					
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
					
						}
						else if (bit_to_add == 0b100000) {			//codes[16]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");					
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b000110) {			//codes[17]
							str_index++;
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");					
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b000000) {			//codes[18]
							str_index++;
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
												
						else if (bit_to_add == 0b110110) {			//codes[19]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b110000) {			//codes[20]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b0010110) {			//codes[21]
							str_index++;
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");	
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b011010110) {			//codes[22]
							str_index++;
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b101010110) {			//codes[23]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");					
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
					
						}
						else if (bit_to_add == 0b111010110) {			//codes[24]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b0001010110) {			//codes[25]
							str_index++;
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							//printf("Added Bit 1 to data stream!!\n");
												
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
				
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}
				}
			}
		}
	}

    //printf("\nCompressed Data: %d" , compressed_data);
    //printf("\nCompressed Data Binary: ");
    for (i = 0; i < index; i++) {
        //printf("%d", data_stream[i]);
    }
    //printf("\nLength of Binary: %d", i);
    //printf("\n");

    int flag = 1;
    char *input = (char*)malloc(sizeof(input));
	
	gettimeofday(&stop, NULL);
	double diff = stop.tv_usec - start.tv_usec;
	double compTime = diff + (0.000001f * diff);
	printf("\nCompression time using timeval: %0.4f microseconds\n", compTime);
	//printf("Time in microseconds: %ld microseconds\n",
    //        ((stop.tv_sec - start.tv_sec)*1000000L
     //      +stop.tv_usec) - start.tv_usec
    //      );
	
//	clock_t end = clock();
	//double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	//printf("\nTotal time to run compression:	%f seconds\n", time_spent);
	
	//clock_t beginDec = clock();
	
	printf("\nPress '1' to Decompress...\n");
    while (flag) {        	
        fgets (input, 100, stdin);
		input[strcspn(input, "\n")] = ' ';
        if (strcmp(input, "1 ") == 0) {
            flag = 0;
        } else if (strcmp(input, " ") == 0) {
			printf("");
		} else { printf("%sis invalid. Please type a '1'\n",input);
		}
	}                      //***********OPTIMIZED
  
    struct timeval startDec, stopDec;
	gettimeofday(&startDec, NULL);
	
  char* decompressed_str = (char*)malloc(untouched_strlen+2);
    if(decompressed_str == NULL) {
      //printf("Memory allocation failed");
      return 0;
    }
    int pos = untouched_strlen-1;								//changed from untouched_strlen-1
	int nodes = buffer_index;
    switch (number_of_letters) {                          //***********OPTIMIZED
		case 1 :                                            //Switch statements faster than if else
			for (i = 0; i < buffer_index + 1; i++) {
				for (j = 0; j < str_length; j++) {
					decompressed_str[pos] = alpha[0];
					pos--;
					compressed_data >>= 1;
				}
				nodes--;
			}
			break;
		case 2 :
			for (i = 0; i < buffer_index+1; i++) {
				str_length = splitted_str_data[nodes];
				compressed_data = buffer[nodes];
				//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
				for (j = 0; j < str_length; j++) {
					if (compressed_data & 1) {
						decompressed_str[pos] = alpha[1];
						pos--;


					}
					else {
						decompressed_str[pos] = alpha[0];
						pos--;
					}
					compressed_data >>= 1;
				}
				nodes--;
			}
			break;

		case 3 :
			for (i = 0; i < buffer_index + 1; i++) {
				str_length = splitted_str_data[nodes];
				compressed_data = buffer[nodes];
				//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
				for (j = 0; j < str_length; j++) {
					if (compressed_data & 1) {
						compressed_data >>= 1;
						if (compressed_data & 1) {
							decompressed_str[pos] = alpha[2];
							pos--;
						}
						else {
							decompressed_str[pos] = alpha[1];
							pos--;
						}
					}
					else
					{
						decompressed_str[pos] = alpha[0];
						pos--;
					}
					compressed_data >>= 1;
				}
				nodes--;
			}
			break;

		case 4 :
			for (i = 0; i < buffer_index + 1; i++) {
				str_length = splitted_str_data[nodes];
				compressed_data = buffer[nodes];
				//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
				for (j = 0; j < str_length; j++) {
					if (compressed_data & 1) {
						compressed_data >>= 1;
						if (compressed_data & 1) {
							compressed_data >>= 1;
						
							if (compressed_data & 1) {
							
								decompressed_str[pos] = alpha[3];
								pos--;

							}
							else {
								decompressed_str[pos] = alpha[2];
								pos--;

							}
						}
						else {
							decompressed_str[pos] = alpha[1];
							pos--;
						}
					}
					else
					{
						decompressed_str[pos] = alpha[0];
						pos--;
					}
					compressed_data >>= 1;
				}
				nodes--;
			}
			break;

		case 5 :
			for (i = 0; i < buffer_index + 1; i++) {
				str_length = splitted_str_data[nodes];
				compressed_data = buffer[nodes];
				//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
				for (j = 0; j < str_length; j++) {
					if (compressed_data & 1) {
						compressed_data >>= 1;
						if (compressed_data & 1) {
							decompressed_str[pos] = alpha[2];
							pos--;
						}
						else {
							decompressed_str[pos] = alpha[1];
							pos--;
						}
					}
					else
					{
						compressed_data >>= 1;
						if (compressed_data & 1) {
							compressed_data >>= 1;
							if (compressed_data & 1) {
								decompressed_str[pos] = alpha[4];
								pos--;
							}
							else {
								decompressed_str[pos] = alpha[3];
								pos--;
							}
						}
						else {
							decompressed_str[pos] = alpha[0];
							pos--;
						}
					}
					compressed_data >>= 1;
			
				}
				nodes--;
			}
			break;

		default:
for (i = 0; i < buffer_index + 1; i++) {
    str_length = splitted_str_data[nodes];
    compressed_data = buffer[nodes];
    //printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
    for (j = 0; j < str_length; j++) {
        if (compressed_data & 1) { // 1
            compressed_data >>= 1;

            if (compressed_data & 1) { // 11
                compressed_data >>= 1;

                if (compressed_data & 1) { // 111
                    compressed_data >>= 1;

                    if (compressed_data & 1) { // 1111
                        compressed_data >>= 1;
                    }
                    else {	// 0111
                        decompressed_str[pos] = alpha[3];
                        pos--;
						compressed_data >>= 1;
						continue;
                    }
                    if (compressed_data & 1) { // 11111
                        decompressed_str[pos] = alpha[11];
                        pos--;
						compressed_data >>= 1;
						continue;
                    }
                    else { // 01111
                        decompressed_str[pos] = alpha[10];
                        pos--;
						compressed_data >>= 1;
						continue;
                    }
                }
                else { // 011
                    compressed_data >>= 1;
                    if (compressed_data & 1) { // 1011
                        decompressed_str[pos] = alpha[7];
                        pos--;
						compressed_data >>= 1;
						continue;
                    }
                    else { // 0011
                        decompressed_str[pos] = alpha[8];
                        pos--;
						compressed_data >>= 1;
						continue;
                    }
                }
            } // CORRECT UP TO HERE
            else { // 01
                compressed_data >>= 1;
                if (compressed_data & 1) { // 101
                    decompressed_str[pos] = alpha[1];
                    pos--;
					compressed_data >>= 1;
					continue;
                }
                else { // 001
                    decompressed_str[pos] = alpha[0];
                    pos--;
					compressed_data >>= 1;
					continue;
                }


            }
        } // // CORRECT UP TO HERE
        else // 0
        {
            compressed_data >>= 1;
            if (compressed_data & 1) { // 10
                compressed_data >>= 1;
                if (compressed_data & 1) { // 110
                    compressed_data >>= 1;
                    if (compressed_data & 1) { // 1110
                        decompressed_str[pos] = alpha[5];
                        pos--;
						compressed_data >>= 1;
						continue;
                    } else { // 0110
                        compressed_data >>= 1;
                        if (compressed_data & 1) { // 10110
                            compressed_data >>= 1;
                            if (compressed_data & 1) { // 110110
                                decompressed_str[pos] = alpha[19];
                                pos--;
								compressed_data >>= 1;
								continue;
                            } else { // 010110
                                compressed_data >>= 1;
                                if (compressed_data & 1) { // 1010110
                                    compressed_data >>= 1;
                                    if (compressed_data & 1) { // 11010110
                                        compressed_data >>= 1;
                                    } else { // 01010110
                                        compressed_data >>= 1;
                                        if (compressed_data & 1) { // 101010110
                                            decompressed_str[pos] = alpha[23];
                                            pos--;
											compressed_data >>= 1;
											continue;
                                        } else { // 001010110
                                            compressed_data >>= 1;
                                            if (compressed_data & 1) { // 1001010110
                                                //compressed_data >>= 1;
                                            } else { // 0001010110
                                                decompressed_str[pos] = alpha[25];
                                                pos--;
												compressed_data >>= 1;
												continue;
                                            }
                                        }
                                    }
                                    if (compressed_data & 1) { // 111010110
                                        decompressed_str[pos] = alpha[24];
                                        pos--;
										compressed_data >>= 1;
										continue;
                                    } else { // 011010110
                                        decompressed_str[pos] = alpha[22];
                                        pos--;
										compressed_data >>= 1;
										continue;
                                    }
                                } else { // 0010110
                                    decompressed_str[pos] = alpha[21];
                                    pos--;
									compressed_data >>= 1;
									continue;
                                }
                            }
                        } else { // 00110
                            compressed_data >>= 1;
                            if (compressed_data & 1) { // 100110
                                decompressed_str[pos] = alpha[15];
                                pos--;
								compressed_data >>= 1;
								continue;
                            } else { // 000110
                                decompressed_str[pos] = alpha[17];
                                pos--;
								compressed_data >>= 1;
								continue;
                            }
                        }

                    }
                }
                else { // 010
                    compressed_data >>= 1;
                    if (compressed_data & 1) { // 1010
                        decompressed_str[pos] = alpha[4];
                        pos--;
						compressed_data >>= 1;
						continue;
                    }
                    else { // 0010
                        decompressed_str[pos] = alpha[6];
                        pos--;
						compressed_data >>= 1;
						continue;
                    }
                }
            }
            else { // 00
                compressed_data >>= 1;
                if (compressed_data & 1) { // 100
                    compressed_data >>= 1;
                    if (compressed_data & 1) { // 1100
                        decompressed_str[pos] = alpha[2];
                        pos--;
						compressed_data >>= 1;
						continue;
                    } else { // 0100
                        compressed_data >>= 1;
                        if (compressed_data & 1) { // 10100
                            decompressed_str[pos] = alpha[13];
                            pos--;
							compressed_data >>= 1;
							continue;
                        }
                        else { // 00100
                            decompressed_str[pos] = alpha[12];
                            pos--;
							compressed_data >>= 1;
							continue;
                        }
                    }

                }
                else { // 000
                    compressed_data >>= 1;
                    if (compressed_data & 1) { // 1000
                        decompressed_str[pos] = alpha[9];
                        pos--;
						compressed_data >>= 1;
						continue;
                    } else { // 0000
                        compressed_data >>= 1;
                        if (compressed_data & 1) { // 10000
                            compressed_data >>= 1;
                            if (compressed_data & 1) { // 110000
                                decompressed_str[pos] = alpha[20];
                                pos--;
								compressed_data >>= 1;
								continue;
                            } else { // 010000
                                decompressed_str[pos] = alpha[14];
                                pos--;
								compressed_data >>= 1;
								continue;
                            }
                        } else { // 00000
                            compressed_data >>= 1;
                            if (compressed_data & 1) { // 100000
                                decompressed_str[pos] = alpha[16];
                                pos--;
								compressed_data >>= 1;
								continue;
                            } else { // 000000
                                decompressed_str[pos] = alpha[18];
                                pos--;
								compressed_data >>= 1;
								continue;
                            }
                        }
                    }

                }

            }
        }
        compressed_data >>= 1;

    }
    nodes--;
}
break;
    }
	////printf("\nstrcmp value: %d\n", strcmp(str, decompressed_str));
	if (strcmp(str, decompressed_str) == 0) { 
		printf("\nOriginal String:	%s\nLength: %d characters \nOriginal Size: %d bits\nCompressed Size: %d bits\n", str, untouched_strlen, untouched_strlen*8, index);
		printf("Decompressed String:	%s\n", decompressed_str);
	} else {
		printf("\n/*************************************************************************************************/\nERROR: Original and decompressed strings not the same\nThe original string: %s \nThe decompressed string: %s\n", str, decompressed_str);
	}
    //free memory...
    str = NULL;
    decompressed_str = NULL;
    buffer = NULL;
    splitted_str_data = NULL;
    data_stream = NULL;
    free(splitted_str_data);
    free(buffer);
    free(str);
    free(decompressed_str);
    free(data_stream);
	
    //***********OPTIMIZED
	gettimeofday(&stopDec, NULL);
	double diffDec = stopDec.tv_usec - startDec.tv_usec;
	double compTimeDec = diffDec + (0.000001f * diffDec);
	printf("\nDecompression time using timeval: %0.4f microseconds\n", compTimeDec);
	
	//clock_t endDec = clock();
	//double time_spent_dec = 1000*(double)(endDec - beginDec) / CLOCKS_PER_SEC;
	//printf("\nTotal time to run compression:	%fms seconds\n", time_spent_dec);

    return 0;
}
