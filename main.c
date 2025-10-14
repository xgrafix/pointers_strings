#include <stdio.h>
//#include <stdlib.h>
//#include <string.h>

int main() {

	//const char *c = "hello";

	//const char **cp = &c;

	//for (int i = 0; i < strlen(c); ++i) 
	//	printf("%c ", *(c + i));

	//printf("\n");

	char *namesArray[] = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "November", "December" };

	size_t arrTotalBytes = sizeof(namesArray);

	printf("Total bytes occupied by namesArray: %zu\n\n", arrTotalBytes);

	for(int i = 0; i < sizeof(namesArray) / 8; ++i) {

		//printf("Size of [%s] = %ld \n", *(namesArray + i), strlen(*(namesArray + i)));
		
		//printf("%s \n", (namesArray[i]));  

		printf("Size of [");

		char* temp = namesArray[i];
		int j = 0;
		while(*(temp + j) != '\0') {
			printf("%c", *(temp + j));
			++j;
		}		
	
		printf("] = %d \n", j);	

	}
	printf("\n");

	return 0;
}
