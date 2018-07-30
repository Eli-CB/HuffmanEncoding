////////////////////////////////////////////////
//Standard C libraries
////////////////////////////////////////////////
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <ctype.h>

////////////////////////////////////////////////
//Standard C timing libraries for performance benchmark
////////////////////////////////////////////////
#include <time.h>
#include <sys/time.h>

int main() {
	////////////////////////////////////////////////
	//Create a file, Performance.txt to store performance benchmark data
	////////////////////////////////////////////////
	FILE *myfile1;
	myfile1 = fopen("Performance.txt", "w");
	fputs("Encoding	Decoding\n", myfile1);
	fclose(myfile1);

	////////////////////////////////////////////////
	//Allocating Memory for large elements
	////////////////////////////////////////////////
	int MAX_CAP = 1024;
	char* restrict str = (char*)malloc(MAX_CAP);
	char* restrict decompressed_str = (char*)malloc(MAX_CAP);
	int* restrict buffer = (int*)malloc(MAX_CAP);
	int* restrict splitted_str_data = (int*)malloc(MAX_CAP);
	int i = 0;
	int j = 0;
	int k = 0;
	int a = 0;
	int buffer_index = 0;
	int compressed_data = 0;           //***********OPTIMIZED
	short sorted_freq[27] = { 0 };
	unsigned int str_index = 0;
	bool notValid = true;


	do {
		notValid = true;
		printf("Enter the alphabet letters to encode: ");
		scanf(" %[^\n]s", str);
		//Check Input for Valid string 
		int len = strlen(str);
		if (len > MAX_CAP) {
			printf("\nWarning!!!! Input is longer than 1024 characters!\n");
			notValid = false;
		}
		else {
			for (i = 0; i < len; i++) {
				if (!(islower(str[i]) || isspace(str[i]))) {
					printf("%c isn't a valid input!\n", (str)[i]);
					notValid = false;
				}
			}
		}		
	} while (!notValid);
	////////////////////////////////////////////////
	//Timer Started
	////////////////////////////////////////////////
	struct timeval start, stop;
	gettimeofday(&start, NULL);
	//Resizing variable 'str' and 'decompressed_str' to appropriate memory size
	int len = strlen(str);

	str = (char *)realloc(str, len + 1);
	decompressed_str = realloc(decompressed_str, len + 1);
	
	//Determine character appear frequency 
	i = 0;
	while (str[i] != '\0') {
		switch (str[i]) {
		case 'a':
			sorted_freq[0]++;
			break;
		case 'b':
			sorted_freq[1]++;
			break;
		case 'c':
			sorted_freq[2]++;
			break;
		case 'd':
			sorted_freq[3]++;
			break;
		case 'e':
			sorted_freq[4]++;
			break;
		case 'f':
			sorted_freq[5]++;
			break;
		case 'g':
			sorted_freq[6]++;
			break;
		case 'h':
			sorted_freq[7]++;
			break;
		case 'i':
			sorted_freq[8]++;
			break;
		case 'j':
			sorted_freq[9]++;
			break;
		case 'k':
			sorted_freq[10]++;
			break;
		case 'l':
			sorted_freq[11]++;
			break;
		case 'm':
			sorted_freq[12]++;
			break;
		case 'n':
			sorted_freq[13]++;
			break;
		case 'o':
			sorted_freq[14]++;
			break;
		case 'p':
			sorted_freq[15]++;
			break;
		case 'q':
			sorted_freq[16]++;
			break;
		case 'r':
			sorted_freq[17]++;
			break;
		case 's':
			sorted_freq[18]++;
			break;
		case 't':
			sorted_freq[19]++;
			break;
		case 'u':
			sorted_freq[20]++;
			break;
		case 'v':
			sorted_freq[21]++;
			break;
		case 'w':
			sorted_freq[22]++;
			break;
		case 'x':
			sorted_freq[23]++;
			break;
		case 'y':
			sorted_freq[24]++;
			break;
		case 'z':
			sorted_freq[25]++;
			break;
		case ' ':
			sorted_freq[26]++;
			break;
		}
		i++;
	}
	////////////////////////////////////////////////
	//Counting unique character, and filtering unused characters
	////////////////////////////////////////////////
	int unsorted_letterFreq[27] = { 0 };
	int number_of_diff_letters = 0;
	for (i = 0; i < 27; i++) {
		if (sorted_freq[i] != 0) {
			number_of_diff_letters++;
		}
		unsorted_letterFreq[i] = sorted_freq[i];
	}
	////////////////////////////////////////////////
	//If tree for determing variable bits_for_safe_shifting
	//Saved for later use
	////////////////////////////////////////////////
	int bits_for_safe_shifting;
	if (number_of_diff_letters == 1 || 2) {
		bits_for_safe_shifting = 1;
	}
	else if (number_of_diff_letters == 3) {
		bits_for_safe_shifting = 2;
	}
	else if (number_of_diff_letters == 4 || 5) {
		bits_for_safe_shifting = 3;
	}
	else if (number_of_diff_letters < 14) {
		bits_for_safe_shifting = 5;
	}
	else if (number_of_diff_letters >= 14 || number_of_diff_letters <= 20) {
		bits_for_safe_shifting = 6;
	}
	else {
		bits_for_safe_shifting = 10;
	}
	////////////////////////////////////////////////
	//Upbound for variable compressed_data
	//Safty coefficient is used to prevent overflow
	////////////////////////////////////////////////
	int safe_coe = 2147483647 >> bits_for_safe_shifting;

	////////////////////////////////////////////////
	//Insertion Sort
	//High frequency ---> Low frequency
	////////////////////////////////////////////////
	for (i = 0; i < 27; ++i) {
		for (j = i + 1; j < 27; ++j) {
			if (sorted_freq[i] < sorted_freq[j]) {
				a = sorted_freq[i];
				sorted_freq[i] = sorted_freq[j];
				sorted_freq[j] = a;
			}
		}
	}
	////////////////////////////////////////////////
	//Character Classification
	// 'alpha' will be set to the used letters, 'letters' is a list of all the letters
	////////////////////////////////////////////////
	char alpha[27] = { 0 };
	char letters[27] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ' };
	int temp = number_of_diff_letters;
	int str_length = strlen(str);
	int untouched_strlen = str_length;
	while (temp > 0) {
		for (i = 0; i < 27; i++) {
			// Only checks for letters that were typed
			if (unsorted_letterFreq[i] != 0) {
					//printf("\nLetter %c : %d", letters[i], unsorted_letterFreq[i]);
					sorted_freq[k] = 0;
					alpha[k] = letters[i];
					temp--;
					k++;
			}
		}
	}
	////////////////////////////////////////////////
	//Huffman Encoding Lookup Table
	////////////////////////////////////////////////
	int codes[27] = { 0 };
	switch (number_of_diff_letters) {
	case 1:
		break;
	case 2:
		//codes[0] = 0b0;
		codes[1] = 0b1;
		break;
	case 3:
		//codes[0] = 0b0;
		codes[1] = 0b01;
		codes[2] = 0b11;
		break;
	case 4:
		//codes[0] = 0b0;
		codes[1] = 0b01;
		codes[2] = 0b011;
		codes[3] = 0b111;
		break;
	case 5:
		//codes[0] = 0b00;
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
		codes[26] = 0b1001010110;
		break;
	}

	////////////////////////////////////////////////
	//Huffman Encoding Process Begin
	////////////////////////////////////////////////
	int bit_to_add = 0;
	//printf("\nCompressed String: ");    //Uncomment this and the printf statements inside switch case statements to see the compressed string.
	for (i = 0; i < str_length; i++) {
		////////////////////////////////////////////////
		//Overflow Handler
		//If variable compressed_data is going to overflow
		//Roll back one iteration, and save the existing data into buffer
		//Continue once variable compressed_data has been reset
		////////////////////////////////////////////////
		if (compressed_data >= safe_coe) {
			i--;
			buffer[buffer_index] = compressed_data;
			splitted_str_data[buffer_index] = str_index;
			str_index = 0;
			compressed_data = 1;
			buffer_index++;
		}

		else {

			//Switch cases (Based on the total number of unique characters)
			for (j = 0; j < number_of_diff_letters; j++) {
				switch (number_of_diff_letters) {
				case 1: {
					//1 unique character
					//data is encoding into str_index
					if (str[i] == alpha[j]) {
						str_index++;
						//if overflow does not occur, save data into buffer
						if (i == str_length - 1) {
							buffer[buffer_index] = str_index;
							splitted_str_data[buffer_index] = str_index;
						}
					}
					break;
				}
				case 2: {
					//2 unique characters
					//data is encoding based on the encoding lookup table
					//Data is then saved into compressed_data
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						str_index++;
						compressed_data <<= 1;
						compressed_data += bit_to_add;
						//if overflow does not occur, save data into buffer
						if (i == str_length - 1) {
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
						}
					}
					break;
				}
				case 3: {
					//3 unique characters
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						//Add bit 0 into data stream, then shift data 1 bit to the left
						if (bit_to_add == 0b0) {
							str_index++;
							compressed_data <<= 1;
							//printf("0");
						}
						//Add bit 01 into data stream, shifting data 2 bit to the left
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("01");
						}
						//Add bit 11 into data stream, shifting data 2 bit to the left
						else if (bit_to_add == 0b11) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("11");
						}
						//if overflow does not occur, save data into buffer
						if (i == str_length - 1) {
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
						}
					}
					break;
				}
				case 4: {
					//4 unique characters
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						//Add bit 0 into data stream, then shift data 1 bit to the left
						if (bit_to_add == 0b0) {
							str_index++;
							compressed_data <<= 1;
						}
						//Add bit 01 into data stream, shifting data 2 bit to the left

						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 011 into data stream, shifting data 3 bit to the left

						else if (bit_to_add == 0b011) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 111 into data stream, shifting data 3 bit to the left
						else if (bit_to_add == 0b111) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//if overflow does not occur, save data into buffer
						if (i == str_length - 1) {
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
						}
					}
					break;
				}
				case 5: {
					//5 unique characters
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						//Add bit 00 into data stream, then shift data 2 bit to the left
						if (bit_to_add == 0b00) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 01 into data stream, then shift data 2 bit to the left
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 11 into data stream, then shift data 2 bit to the left
						else if (bit_to_add == 0b11) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 010 into data stream, then shift data 3 bit to the left
						else if (bit_to_add == 0b010) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//Add bit 110 into data stream, then shift data 3 bit to the left
						else if (bit_to_add == 0b110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;

						}
						//if overflow does not occur, save data into buffer
						if (i == str_length - 1) {
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
						}
					}
					break;
				}
				default: {
					//6+ unique characters
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b001) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 101 into data stream, then shift data 3 bit to the left
						else if (bit_to_add == 0b101) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 1100 into data stream, then shift data 4 bit to the left
						else if (bit_to_add == 0b1100) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 0111 into data stream, then shift data 4 bit to the left
						else if (bit_to_add == 0b0111) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;

						}
						//Add bit 1010 into data stream, then shift data 4 bit to the left
						else if (bit_to_add == 0b1010) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;

						}
						//Add bit 1110 into data stream, then shift data 4 bit to the left
						else if (bit_to_add == 0b1110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;

						}
						//Add bit 0010 into data stream, then shift data 4 bit to the left
						else if (bit_to_add == 0b0010) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;

						}
						//Add bit 1011 into data stream, then shift data 4 bit to the left
						else if (bit_to_add == 0b1011) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;

						}
						//Add bit 0011 into data stream, then shift data 4 bit to the left
						else if (bit_to_add == 0b0011) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 1000 into data stream, then shift data 4 bit to the left
						else if (bit_to_add == 0b1000) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 01111 into data stream, then shift data 5 bit to the left
						else if (bit_to_add == 0b01111) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 11111 into data stream, then shift data 5 bit to the left
						else if (bit_to_add == 0b11111) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
						}
						//Add bit 00100 into data stream, then shift data 5 bit to the left
						else if (bit_to_add == 0b00100) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 10100 into data stream, then shift data 5 bit to the left
						else if (bit_to_add == 0b10100) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 010000 into data stream, then shift data 6 bit to the left
						else if (bit_to_add == 0b010000) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 100110 into data stream, then shift data 6 bit to the left
						else if (bit_to_add == 0b100110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//Add bit 100000 into data stream, then shift data 6 bit to the left
						else if (bit_to_add == 0b100000) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 000110 into data stream, then shift data 6 bit to the left
						else if (bit_to_add == 0b000110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//Add bit 000000 into data stream, then shift data 6 bit to the left
						else if (bit_to_add == 0b000000) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 110110 into data stream, then shift data 6 bit to the left
						else if (bit_to_add == 0b110110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//Add bit 110000 into data stream, then shift data 6 bit to the left
						else if (bit_to_add == 0b110000) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
						}
						//Add bit 0010110 into data stream, then shift data 7 bit to the left
						else if (bit_to_add == 0b0010110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//Add bit 011010110 into data stream, then shift data 9 bit to the left
						else if (bit_to_add == 0b011010110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//Add bit 101010110 into data stream, then shift data 9 bit to the left
						else if (bit_to_add == 0b101010110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//Add bit 111010110 into data stream, then shift data 9 bit to the left
						else if (bit_to_add == 0b111010110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//Add bit 0001010110 into data stream, then shift data 10 bit to the left
						else if (bit_to_add == 0b0001010110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						else if (bit_to_add == 0b1001010110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
							compressed_data += 1;
							compressed_data <<= 1;
						}
						//if overflow does not occur, save data into buffer
						if (i == str_length - 1) {
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
						}
					}
					break;
				}
				}
			}
		}
	}
	////////////////////////////////////////////////
	//Timer Stopped
	//Encoding time (us) is printed on the console
	////////////////////////////////////////////////
	gettimeofday(&stop, NULL);
	double diff = stop.tv_usec - start.tv_usec;
	double compTime = diff + (0.000001f * diff);
	printf("\n\nCompression time: %0.4f microseconds\n", compTime);
	//Waiting for input to begin Decompress process
	printf("\nPress 'Enter' to Decompress...\n");
	bool flag = true;
	while (flag) {
		char ch;
		flag = false;
		scanf("%c", &ch); getchar();
	}                      
	////////////////////////////////////////////////
	//Timer Strated
	////////////////////////////////////////////////
	struct timeval startDec, stopDec;
	gettimeofday(&startDec, NULL);

	//Perpare Environment for HuffmanDecoding
	int pos = untouched_strlen - 1;								
	int nodes = buffer_index;
	//Checks the number of different letters 
	switch (number_of_diff_letters) {                          
	case 1:                                            
		for (i = 0; i < buffer_index + 1; i++) {			//Iterates through all the buffers
			for (j = 0; j < str_length; j++) {				//Iterates through the string length
				decompressed_str[pos] = alpha[0];			//Sets decompressed array to appropriate compressed character
				pos--;
			}
			//nodes--;
		}
		break;
	case 2:
		for (i = 0; i < buffer_index + 1; i++) {
			str_length = splitted_str_data[nodes];
			compressed_data = buffer[nodes];
			//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Str_length: %d, compressed_data: %d, current_buffer_index: %d\n", str_length, compressed_data, nodes);
			for (j = 0; j < str_length; j++) {
				if (compressed_data & 1) {					//Checks if value is a 1
					decompressed_str[pos] = alpha[1];		//If so, adds 1 to decompressed string
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
	//Pattern shown in case 1 and case 2 repeat themselves for each other case
	case 3:
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

	case 4:
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

	case 5:
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
							}
							else { // 0110
								compressed_data >>= 1;
								if (compressed_data & 1) { // 10110
									compressed_data >>= 1;
									if (compressed_data & 1) { // 110110
										decompressed_str[pos] = alpha[19];
										pos--;
										compressed_data >>= 1;
										continue;
									}
									else { // 010110
										compressed_data >>= 1;
										if (compressed_data & 1) { // 1010110
											compressed_data >>= 1;
											if (compressed_data & 1) { // 11010110
												compressed_data >>= 1;
											}
											else { // 01010110
												compressed_data >>= 1;
												if (compressed_data & 1) { // 101010110
													decompressed_str[pos] = alpha[23];
													pos--;
													compressed_data >>= 1;
													continue;
												}
												else { // 001010110
													compressed_data >>= 1;
													if (compressed_data & 1) { // 1001010110
														decompressed_str[pos] = alpha[26];
														pos--;
														compressed_data >>= 1;
														continue;
													}
													else { // 0001010110
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
											}
											else { // 011010110
												decompressed_str[pos] = alpha[22];
												pos--;
												compressed_data >>= 1;
												continue;
											}
										}
										else { // 0010110
											decompressed_str[pos] = alpha[21];
											pos--;
											compressed_data >>= 1;
											continue;
										}
									}
								}
								else { // 00110
									compressed_data >>= 1;
									if (compressed_data & 1) { // 100110
										decompressed_str[pos] = alpha[15];
										pos--;
										compressed_data >>= 1;
										continue;
									}
									else { // 000110
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
							}
							else { // 0100
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
							}
							else { // 0000
								compressed_data >>= 1;
								if (compressed_data & 1) { // 10000
									compressed_data >>= 1;
									if (compressed_data & 1) { // 110000
										decompressed_str[pos] = alpha[20];
										pos--;
										compressed_data >>= 1;
										continue;
									}
									else { // 010000
										decompressed_str[pos] = alpha[14];
										pos--;
										compressed_data >>= 1;
										continue;
									}
								}
								else { // 00000
									compressed_data >>= 1;
									if (compressed_data & 1) { // 100000
										decompressed_str[pos] = alpha[16];
										pos--;
										compressed_data >>= 1;
										continue;
									}
									else { // 000000
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
	decompressed_str[len] = '\0';

	printf("\nOriginal String:	%s\nLength: %d characters \nOriginal Size: %d bits\n", str, untouched_strlen, untouched_strlen << 3);
	printf("Decompressed String:	%s\n", decompressed_str);
	////////////////////////////////////////////////
	//Timer Strated
	//Decoding time (us) is printed on the console
	//Total Time is also calculated and printed on the console
	//Program performance is saved into file Performance.txt
	////////////////////////////////////////////////
	gettimeofday(&stopDec, NULL);
	double diffDec = stopDec.tv_usec - startDec.tv_usec;
	double compTimeDec = diffDec + (0.000001f * diffDec);
	printf("\nDecompression time: %0.4f microseconds\n", compTimeDec);
	printf("\nTotal time: %0.4f microseconds\n", compTime + compTimeDec);
	FILE *myfile2;
	myfile2 = fopen("Performance.txt", "a+");
	fprintf(myfile2, "%0.4f	%0.4f\n", compTime, compTimeDec);
	fclose(myfile2);
	////////////////////////////////////////////////
	//Free Memories
	////////////////////////////////////////////////
	free(buffer);
	free(splitted_str_data);
	free(str);
	free(decompressed_str);
	return 0;
}
