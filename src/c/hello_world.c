#include <stdio.h>
#include <string.h>
#include <stdlib.h>



int main(int argc, char *argv[]) {
    char *langs;
    int pos = -1;

    if (argc > 1) {
        pos = atoi(argv[1]);
        langs = argv[2];
        if (pos > 12)
            return EXIT_FAILURE;
    } else {
        return EXIT_FAILURE;
    }


	if (pos == 0) {
		printf("%s", "H");
	} else if (pos == 1) {
		printf("%s", "e");
	} else if (pos == 2) {
		printf("%s", "l");
	} else if (pos == 3) {
		printf("%s", "l");
	} else if (pos == 4) {
		printf("%s", "o");
	} else if (pos == 5) {
		printf("%s", " ");
	} else if (pos == 6) {
		printf("%s", "W");
	} else if (pos == 7) {
		printf("%s", "o");
	} else if (pos == 8) {
		printf("%s", "r");
	} else if (pos == 9) {
		printf("%s", "l");
	} else if (pos == 10) {
		printf("%s", "d");
	} else if (pos == 11) {
		printf("%s", "!");
	} else if (pos == 12) {
		printf("%s", "\n");
	}

    fflush(stdout);

	if (pos >= 0 || pos <= 11) {
        if (pos >= 10) {
            char cmd[100];
            char lLang[250];
            strcpy(lLang, "\'");
            strcat(lLang, langs);
            strcat(lLang, "\'");
            sprintf(cmd, "./logic.sh %s %d %s", lLang, pos+1, lLang);
            system(cmd);
        } else {
            // Get next target lang and execute logic.sh
            char *targetLang = strtok(langs, " ");
            char nextLangs[500];

            char *nlang = strtok(NULL, " ");
            int first = 0;
            while (nlang != NULL) {
                if (first == 0) {
                    strcpy(nextLangs, "\'");
                    strcat(nextLangs, nlang);
                    first++;
                } else {
                    strcat(nextLangs, " ");
                    strcat(nextLangs, nlang);
                }    

                nlang = strtok(NULL, " ");
            }
            strcat(nextLangs, "\'");
            char cmd[100];
            sprintf(cmd, "./logic.sh %s %d %s", targetLang, pos+1, nextLangs);
            system(cmd);
        }
	}

    return 0;
}
