#include <stdio.h>

int main() {

        char *namesArray[] = {"January", "February", "March",
                                "April", "May", "June", "July",
                                "August", "September", "November", "December" };

        size_t arrTotalBytes = sizeof(namesArray);

        printf("Total bytes occupied by namesArray: %zu\n\n", arrTotalBytes);

        for(int i = 0; i < sizeof(namesArray) / 8; ++i) {
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
