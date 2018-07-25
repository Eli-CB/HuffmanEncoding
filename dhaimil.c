#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <stdint.h>
#include <limits.h>
#include <stdbool.h>

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
        codes[0] = 0b00;
        codes[1] = 0b01;
        codes[2] = 0b10;
        codes[3] = 0b11;
        break;
    case 5:
        codes[0] = 0b00;
        codes[1] = 0b01;
        codes[2] = 0b11;
        codes[3] = 0b010;
        codes[4] = 0b110;
        break;
    default:
        codes[0] = 0b010;
        codes[1] = 0b0111;
        codes[2] = 0b0110;
        codes[3] = 0b0011;
        codes[4] = 0b0001;
        codes[5] = 0b1001;
        codes[6] = 0b0000;
        codes[7] = 0b0101;
        codes[8] = 0b01000;
        codes[9] = 0b11000;
        codes[10] = 0b01011;
        codes[11] = 0b11101;
        codes[12] = 0b01111;
        codes[13] = 0b01101;
        codes[14] = 0b11011;
        codes[15] = 0b011110;
        codes[16] = 0b111110;
        codes[17] = 0b111111;
        codes[18] = 0b101110;
        codes[19] = 0b1001110;
        codes[20] = 0b0001110;
        codes[21] = 0b1011111;
        codes[22] = 0b000011111;
        codes[23] = 0b1100011111;
        codes[24] = 0b10100011111;
        codes[25] = 0b00100011111;
        break;

    }
}

bool safe_add(unsigned int compressed_data, int bit) {
  printf("compressed_data = %d\n", compressed_data);
	int remaining_spaces = INT_MAX - compressed_data;
    if (remaining_spaces <= INT_MAX>>bit) {
        printf("\n************HANDLE OVERFLOW************\n");
		printf("\nCompressed Number XXXXXXX : %d	INT_MAX: %d	INT_MAX>>bit: %d\n",compressed_data, INT_MAX, INT_MAX >> bit);
        return false;
    }
    return true;
}
/*
void add0bit(unsigned int *compressed_data, int data_stream[100], int a) {
    *compressed_data <<= 1;
    data_stream[a] = 0;
    printf("Added Bit 0 to data stream!!\n");
}

void add1bit(unsigned int *compressed_data, int data_stream[100], int a) {
    *compressed_data <<= 1;
    *compressed_data += 1;
    data_stream[a] = 1;
    printf("Added Bit 1 to data stream!!\n");
}
*/
bool checkValid(char **input) {
    int i;
    bool notValid = true;
    int len = strlen(*input);
    for (i = 0; i < len; i++) {
        // if ((*input)[i] == ('\x20')) {
        //   printf("Don't use spaces!");
        //   notValid = false;
        // }
        if ((*input)[i] <= 96 || (*input)[i] >= 123) {
            printf("%c isn't a valid input!\n",(*input)[i]);
            notValid = false;
        }
    }
    return notValid;
}

int main() {                                  //***********OPTIMIZED
  int sorted_freq[26] = { 0 };
  // Change from char str[200] to char* str
  //char* str;
  char* str = (char*)malloc(1024);                  //***********OPTIMIZED
  if(str == NULL) {                           //ELI ** OPT
    printf("Memory allocation failed");
    return 0;
  }
  //int* buffer;							                  //***********Added for Overflow Testing
	int* buffer = (int*)malloc(1024);                //***********Added for Overflow Testing
	//int* splitted_str_data;							        //***********Added for Overflow Testing
	int* splitted_str_data = (int*)malloc(1024);     //***********Added for Overflow Testing

  int i, j, k = 0;
	int buffer_index = 0;
	int str_index = 0;
	int compressed_data = 1;           //***********OPTIMIZED

    //unsigned long int not supported by 32 bit system

    do {
        printf("Enter the alphabet letters to encode: ");

        scanf("%s", str);
    } while(!checkValid(&str));

    getFrequency(str, sorted_freq);

    int unsorted_letterFreq[26] = { 0 };
    int number_of_letters = 0;

    printf("\nYou entered: ");
    for (i = 0; i < 26; i++) {
		//while (1);
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
    int index = 1;
    int data_stream[100] = { 0 };
    //compressed_data = 1;
    unsigned int compressed_data2 = 0;
    printf("\nStart Bit '1' is added to the data stream\n");
    data_stream[0] = compressed_data;
    for (i = 0; i < str_length; i++) {
        printf("\nLetter: %c\n", str[i]);
        for (j = 0; j <= number_of_letters; j++) {
            if (number_of_letters == 1) {
                if (str[i] == alpha[j]) {
                    bit_to_add = codes[j];
               //     compressed_data <<= 1;
                    if(!safe_add(compressed_data,1)) {
						i--;
						buffer[buffer_index] = compressed_data;             //Added for overflow testing
						//Added for overflow testing
						splitted_str_data[buffer_index] = str_index;
						str_index = 0;
                        //compressed_data2 = compressed_data;
                        compressed_data = 1;
						//while (1);
						printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						buffer_index++;
                    }
						else {
						str_index++;
						compressed_data <<= 1;
						compressed_data = 0; //-what does this do? Add bit to current data after shifting - KM
						index++;
						data_stream[i + 1] = bit_to_add;
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
						printf("Added Bit %d to data stream!!\n", bit_to_add);
					}
                }

            }
	else if (number_of_letters == 2) {
                if (str[i] == alpha[j]) {
                    //while (1);
                    bit_to_add = codes[j];

                    //***figure out how to handle overflow***
                    if(!safe_add(compressed_data, 1)) {
						//while (1);
						i--;
						buffer[buffer_index] = compressed_data;             //Added for overflow testing
						//Added for overflow testing
						splitted_str_data[buffer_index] = str_index;
						str_index = 0;
                        //compressed_data2 = compressed_data;
                        compressed_data = 1;
						//while (1);
						printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						buffer_index++;
					}
					else {
						str_index++;
						compressed_data <<= 1;
						compressed_data += bit_to_add; //-what does this do? Add bit to current data after shifting - KM
						index++;
						data_stream[i + 1] = bit_to_add;
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
						printf("Added Bit %d to data stream!!\n", bit_to_add);
					}

                }
            }
			else if (number_of_letters == 3) {
				if (str[i] == alpha[j]) {
					bit_to_add = codes[j];
					if (!safe_add(compressed_data, 2)) {
						i--;
						buffer[buffer_index] = compressed_data;             //Added for overflow testing
																			//Added for overflow testing
						splitted_str_data[buffer_index] = str_index;
						str_index = 0;
						//compressed_data2 = compressed_data;
						compressed_data = 1;
						//while (1);
						printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						buffer_index++;
					}
					else {
						if (bit_to_add == 0b0) {
							str_index++;
							//compressed_data += bit_to_add;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							printf("Added Bit 0 to data stream!!\n");
							//data_stream[index] = 0;
							//index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b11) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
						}
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}

				}
			}


			/*
            else if (number_of_letters == 4) {
                if (str[i] == alpha[j]) {
                    //while (1);
                    bit_to_add = codes[j];
                    if (bit_to_add == 0b00) {
                        compressed_data += bit_to_add;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b01) {
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b10) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b11) {
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                }
            } */
			else if (number_of_letters == 5) {
				if (str[i] == alpha[j]) {
					bit_to_add = codes[j];
					if (!safe_add(compressed_data, 2)) {
						i--;
						buffer[buffer_index] = compressed_data;             //Added for overflow testing
																			//Added for overflow testing
						splitted_str_data[buffer_index] = str_index;
						str_index = 0;
						//compressed_data2 = compressed_data;
						compressed_data = 1;
						//while (1);
						printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						buffer_index++;
					}
					else {
						if (bit_to_add == 0b00) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							printf("Added Bit 0 to data stream!!\n");
							//data_stream[index] = 0;
							//index++;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b11) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b010) {
							str_index++;
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							printf("Added Bit 0 to data stream!!\n");
					
						}
				    	else if (bit_to_add == 0b110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							data_stream[index] = 1;
							index++;
							printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							data_stream[index] = 0;
							index++;
							printf("Added Bit 0 to data stream!!\n");
							
						}
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}

				}
			}
       /*     else if (number_of_letters == 5) {
                if (str[i] == alpha[j]) {
                    //while (1);
                    bit_to_add = codes[j];
                    if (bit_to_add == 0b00) {
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b01) {
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b11) {
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b010) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b110) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }

                }
            }
/*

            /** 5 or more different letters **/
/*
            else if (number_of_letters > 5) {
                if (str[i] == alpha[j]) {
                    //while (1);
                    bit_to_add = codes[j];
                    if (bit_to_add == 0b010) {
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b0111) {
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b0110) {
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b0011) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b0001) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b1001) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b0000) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b0101) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b01000) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b11000) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b01011) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b11101) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b01111) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b01101) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b11011) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b011110) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b111110) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b111111) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b101110) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b1001110) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b0001110) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b1011111) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b000011111) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b1100011111) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b10100011111) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                    else if (bit_to_add == 0b00100011111) { //double check this pls
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add0bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                        if(!safe_add(compressed_data)) {
                            compressed_data2 = compressed_data;
                            compressed_data = 1;
                        }
                        add1bit(&compressed_data, data_stream, index);
                        index++;
                    }
                }
            }*/
        }
    }

    printf("\nCompressed Data: %d" , compressed_data + compressed_data2);
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
    //Changed unsigned char decompressed_str[200] = { }; to the following...
    char* decompressed_str;                      //***********OPTIMIZED
    decompressed_str = (char*)malloc(1024);
    if(decompressed_str == NULL) {                        //ELI ** OPT
      printf("Memory allocation failed");
      return 0;
    }
    int pos = strlen(str) - 1;								//changed
	  int nodes = buffer_index;
    switch (number_of_letters) {                          //***********OPTIMIZED
    case 1 :                                            //Switch statements faster than if else
        for (i = 0; i < str_length; i++) {
            decompressed_str[pos] = alpha[0];
            pos--;
            compressed_data >>= 1;
            if((compressed_data==1) && (compressed_data2>0)) {
                for (i = 0; i < str_length; i++) {
                    decompressed_str[pos] = alpha[0];
                    pos--;
                    compressed_data2 >>= 1;
                }
            }
        }
        break;
    case 2 :
        for (i = 0; i < buffer_index+1; i++) {
			str_length = splitted_str_data[nodes];
			compressed_data = buffer[nodes];
			printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
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
			printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
			for (j = 0; j < str_length; j++) {
				if (compressed_data & 1) {
					compressed_data >>= 1;
					if (compressed_data & 1) {
						decompressed_str[pos] = alpha[2];
						//printf("Found 11!\n");
						pos--;
					}
					else {
						decompressed_str[pos] = alpha[1];
						//printf("Found 01!\n");
						pos--;
					}
				}
				else
				{
					//compressed_data >>= 1;
					decompressed_str[pos] = alpha[0];
					//printf("Found 00!\n");
					pos--;
				}
				compressed_data >>= 1;

				//printf("\nYYYYYYYYYY	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);

			}
			//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
			nodes--;
		}
        break;

    case 4 :
        for (i = 0; i < str_length; i++) {
            if (compressed_data & 1) {
                compressed_data >>= 1;
                if (compressed_data & 1) {
                    decompressed_str[pos] = alpha[3];
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
                    decompressed_str[pos] = alpha[2];
                    pos--;
                }
                else {
                    decompressed_str[pos] = alpha[0];
                    pos--;
                }
            }
            compressed_data >>= 1;
            if((compressed_data==1) && (compressed_data2>0)) {
                for (i = 0; i < str_length; i++) {
                    if (compressed_data2 & 1) {
                        compressed_data2 >>= 1;
                        if (compressed_data2 & 1) {
                            decompressed_str[pos] = alpha[3];
                            pos--;
                        } else {
                            decompressed_str[pos] = alpha[1];
                            pos--;
                        }
                    } else {
                        compressed_data2 >>= 1;
                        if (compressed_data2 & 1) {
                            decompressed_str[pos] = alpha[2];
                            pos--;
                        } else {
                            decompressed_str[pos] = alpha[0];
                            pos--;
                        }
                    }
                    compressed_data2 >>= 1;
                }
            }
        }
        break;
    case 5 :
        for (i = 0; i < str_length; i++) {
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
                    if(compressed_data & 1) {
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
            if((compressed_data==1) && (compressed_data2>0)) {
                for (i = 0; i < str_length; i++) {
                    if (compressed_data2 & 1) {
                        compressed_data2 >>= 1;
                        if (compressed_data2 & 1) {
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
                        compressed_data2 >>= 1;
                        if (compressed_data2 & 1) {
                            compressed_data2 >>= 1;
                            if(compressed_data2 & 1) {
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
                    compressed_data2 >>= 1;
                }
            }
        }
        break;
    default:
        for (i = 0; i < str_length; i++) {
          if (compressed_data & 1) {                    //1
            compressed_data >>= 1;

            if (compressed_data & 1) {                  //11
              compressed_data >>= 1;

              if (compressed_data & 1) {                //111
                compressed_data >>= 1;

                if (compressed_data & 1) {              //1111
                  compressed_data >>= 1;

                  if (compressed_data & 1) {            //11111
                    compressed_data >>= 1;

                    if (compressed_data & 1) {          //111111
                      compressed_data >>= 1;
                      decompressed_str[pos] = alpha[18]; pos--;

                    }else{                              //111110
                      compressed_data >>= 1;
                      decompressed_str[pos] = alpha[17]; pos--;
                    }
                  }else{                                 //11110
                    compressed_data >>= 1;

                  }
                }else{                                   //1110
                  compressed_data >>= 1;

                }
              }else{
                compressed_data >>= 1;

              }
            }else{
              compressed_data >>= 1;

            }
          }else{                                          //0
            compressed_data >>= 1;
            if (compressed_data & 1) {                    //01
              compressed_data >>= 1;

              if (compressed_data & 1) {                  //011
                compressed_data >>= 1;

                if (compressed_data & 1) {                //0111
                  compressed_data >>= 1;

                  if (compressed_data & 1) {              //01111
                    compressed_data >>= 1;

                    if (compressed_data & 1) {            //011111
                      compressed_data >>= 1;

                    }else{                                //011110
                      compressed_data >>= 1;
                      decompressed_str[pos] = alpha[16]; pos--;
                    }
                  }else{                                  //01110
                    compressed_data >>= 1;

                  }
                }else{                                     //0110
                  compressed_data >>= 1;
                  decompressed_str[pos] = alpha[3]; pos--;

                }
              }else{                                        //010
                compressed_data >>= 1;
                decompressed_str[pos] = alpha[1]; pos--;
              }
            }else{                                          //00
              compressed_data >>= 1;
              if (compressed_data & 1){                     //001
                decompressed_str[pos] = alpha[0]; pos--;
              }
            }
          }
        }
        break;
    }

    printf("\nOriginal String:	%s	Length: %d	Original Size: %d bits		Compressed Size: %d bits\n", str, str_length, str_length*8, index);
    printf("Decompressed String:	%s\n", decompressed_str);
    //free memory...
    str = NULL;
    decompressed_str = NULL;
    free(str);
    free(decompressed_str);

    //***********OPTIMIZED

    return 0;
}