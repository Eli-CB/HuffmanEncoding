#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <stdint.h>
#include <limits.h>
#include <stdbool.h>
#include <time.h>
#include <sys/time.h>

int main() {
	//  clock_t begin = clock();	
	FILE *myfile1;
	myfile1 = fopen("Performace.txt", "w");
	fprintf(myfile1, "Encoding	Decoding\n");
	fclose(myfile1);


	int sorted_freq[26] = { 0 };
	char* str = (char*)malloc(1024);

	if (str == NULL) {
		//printf("Memory allocation failed");
		return 0;
	}
	int* buffer = (int*)malloc(1024);
	if (buffer == NULL) {
		//printf("Memory allocation failed");
		return 0;
	}
	int* splitted_str_data = (int*)malloc(1024);
	if (splitted_str_data == NULL) {
		//printf("Memory allocation failed");
		return 0;
	}
	//126 bits: asasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaasasassasaassssa

	int i, j, k = 0;
	int a = 0;
	int buffer_index = 0;
	int str_index = 0;
	int compressed_data = 1;           //***********OPTIMIZED
	bool notValid = true;

	//unsigned long int not supported by 32 bit system

	do {
		notValid = true;
		printf("Enter the alphabet letters to encode: ");

		scanf("%s", str);
		//Check Input for Valid string 
		int len = strlen(str);
		for (i = 0; i < len; i++) {
			if ((str)[i] <= 96 || (str)[i] >= 123) {
				printf("%c isn't a valid input!\n", (str)[i]);
				notValid = false;
			}
		}
	} while (!notValid);
	struct timeval start, stop;
	gettimeofday(&start, NULL);
	//getFrequency(str, sorted_freq);

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
		}
		i++;
	}


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

	int safe_coe = INT_MAX >> bits_for_safe_shifting;

	//freq_sorted is now sorted
	//insertionSort(sorted_freq);
	i, j, a = 0;
	for (i = 0; i < 26; ++i) {
		for (j = i + 1; j < 26; ++j) {
			if (sorted_freq[i] < sorted_freq[j]) {
				a = sorted_freq[i];
				sorted_freq[i] = sorted_freq[j];
				sorted_freq[j] = a;
			}
		}
	}

	// 'alpha' will be set to the used letters, 'letters' is a list of all the letters
	char alpha[26] = { 0 };
	char letters[26] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
	int temp = number_of_letters;
	int str_length = strlen(str);
	int untouched_strlen = str_length;
	//printf("LETTER   | FREQUENCY");	
	// While there are still letters
	while (temp > 0) {
		for (i = 0; i < 26; i++) {
			// Only checks for letters that were typed
			if (unsorted_letterFreq[i] != 0) {
				if (sorted_freq[k] == unsorted_letterFreq[i]) {
					//printf("\nLetter %c : %d", letters[i], unsorted_letterFreq[i]);
					sorted_freq[k] = 0;
					alpha[k] = letters[i];
					temp--;
					k++;
				}

			}
		}
	}

	int codes[26] = { 0 };
	//optimal_encoding(codes, number_of_letters);
	switch (number_of_letters) {
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

	int bit_to_add = 0;

	for (i = 0; i < str_length; i++) {
		if (compressed_data >= safe_coe) {
			i--;
			buffer[buffer_index] = compressed_data;
			splitted_str_data[buffer_index] = str_index;
			str_index = 0;
			compressed_data = 1;
			//while (1);
			buffer_index++;
		}

		else {
			//printf("\nLetter: %c\n", str[i]);
			for (j = 0; j < number_of_letters; j++) {
				switch (number_of_letters) {
				case 1: {
					switch (str[i]) {
					case 1: {}

					}
					if (str[i] == alpha[j]) {
						//bit_to_add = codes[j];					
						str_index++;
						compressed_data <<= 1;
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
						//printf("Added Bit %d to data stream!!\n", bit_to_add);

					}
					break;
				}
				case 2: {
					if (str[i] == alpha[j]) {
						//while (1);
						bit_to_add = codes[j];

						str_index++;
						compressed_data <<= 1;
						compressed_data += bit_to_add;
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
						//printf("Added Bit %d to data stream!!\n", bit_to_add);


					}
					break;
				}
				case 3: {
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b0) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b11) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}
					break;
				}
				case 4: {
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b0) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b011) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b111) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}
					break;
				}
				case 5: {
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b00) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b01) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b11) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b010) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

						}
						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}
					break;
				}
				default: {
					if (str[i] == alpha[j]) {
						bit_to_add = codes[j];
						if (bit_to_add == 0b001) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b101) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b1100) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b0111) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

						}
						else if (bit_to_add == 0b1010) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b1110) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b0010) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b1011) {
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

						}
						else if (bit_to_add == 0b0011) {
							str_index++;
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

						}
						else if (bit_to_add == 0b1000) {			//codes[9]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						///////////////////////////////////////////////////



						else if (bit_to_add == 0b01111) {			//codes[10]
							str_index++;

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

						}

						else if (bit_to_add == 0b11111) {			//codes[11]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
						}
						else if (bit_to_add == 0b00100) {			//codes[12]
							str_index++;

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b10100) {			//codes[13]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");	
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");		
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b010000) {			//codes[14]
							str_index++;

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b100110) {			//codes[15]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");					
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b100000) {			//codes[16]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");					
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b000110) {			//codes[17]
							str_index++;

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");					
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b000000) {			//codes[18]
							str_index++;

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}

						else if (bit_to_add == 0b110110) {			//codes[19]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b110000) {			//codes[20]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b0010110) {			//codes[21]
							str_index++;

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");	
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b011010110) {			//codes[22]
							str_index++;

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b101010110) {			//codes[23]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");					
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

						}
						else if (bit_to_add == 0b111010110) {			//codes[24]
							str_index++;
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}
						else if (bit_to_add == 0b0001010110) {			//codes[25]
							str_index++;

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");
							compressed_data <<= 1;
							compressed_data += 1;
							//printf("Added Bit 1 to data stream!!\n");

							compressed_data <<= 1;
							//printf("Added Bit 0 to data stream!!\n");
						}

						if (i == str_length - 1) {
							//buffer_index++;
							buffer[buffer_index] = compressed_data;
							splitted_str_data[buffer_index] = str_index;
							//printf("\nXXXXXXXXXXXXXXXXXXXXXX	Encoded Data: %d, buffer_index: %d ,splitted_str_data[buffer_index]: %d\n", buffer[buffer_index], buffer_index, splitted_str_data[buffer_index]);
						}
					}
					break;

				}
				}
			}

		}
	}

	bool flag = true;

	gettimeofday(&stop, NULL);
	double diff = stop.tv_usec - start.tv_usec;
	double compTime = diff + (0.000001f * diff);
	printf("\n\nCompression time: %0.4f microseconds\n", compTime);
	//printf("Time in microseconds: %ld microseconds\n",
	//        ((stop.tv_sec - start.tv_sec)*1000000L
	//      +stop.tv_usec) - start.tv_usec
	//      );

	//	clock_t end = clock();
	//double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	//printf("\nTotal time to run compression:	%f seconds\n", time_spent);

	//clock_t beginDec = clock();

	printf("\nPress 'Enter' to Decompress...\n");
	while (flag) {
		char ch;
		flag = false;
		scanf("%c", &ch); getchar();
	}                      //***********OPTIMIZED


	struct timeval startDec, stopDec;
	gettimeofday(&startDec, NULL);

	char* decompressed_str = (char*)malloc(untouched_strlen * sizeof(*decompressed_str));

	int pos = untouched_strlen - 1;								//changed from untouched_strlen-1
	int nodes = buffer_index;
	switch (number_of_letters) {                          //***********OPTIMIZED
	case 1:                                            //Switch statements faster than if else
		for (i = 0; i < buffer_index + 1; i++) {
			for (j = 0; j < str_length; j++) {
				decompressed_str[pos] = alpha[0];
				pos--;
				compressed_data >>= 1;
			}
			nodes--;
		}
		break;
	case 2:
		for (i = 0; i < buffer_index + 1; i++) {
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
																			   //compressed_data >>= 1;
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

	printf("\nOriginal String:	%s\nLength: %d characters \nOriginal Size: %d bits\nCompressed Size: %d bits\n", str, untouched_strlen, untouched_strlen * 8, index);
	printf("Decompressed String:	%s\n", decompressed_str);

	//free memory...
	//str = NULL;
	//decompressed_str = NULL;
	//buffer = NULL;
	//splitted_str_data = NULL;


	//***********OPTIMIZED
	gettimeofday(&stopDec, NULL);
	double diffDec = stopDec.tv_usec - startDec.tv_usec;
	double compTimeDec = diffDec + (0.000001f * diffDec);
	printf("\nDecompression time: %0.4f microseconds\n", compTimeDec);

	printf("\nTotal time: %0.4f microseconds\n", compTime + compTimeDec);
	FILE *myfile2;
	myfile2 = fopen("Performace.txt", "a+");
	fprintf(myfile2, "%0.4f	%0.4f\n", compTime, compTimeDec);
	fclose(myfile2);

	//clock_t endDec = clock();
	//double time_spent_dec = 1000*(double)(endDec - beginDec) / CLOCKS_PER_SEC;
	//printf("\nTotal time to run compression:	%fms seconds\n", time_spent_dec);
	free(str);
	free(buffer);
	free(splitted_str_data);
	free(decompressed_str);
	return 0;

}
