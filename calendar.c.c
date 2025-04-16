
#include <stdio.h>

int main() {
    
    int daysInMonth[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    // Array to hold the names of the months
    char *monthNames[] = {
        "January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November", "December"
    };

    
    int year;
    printf("Enter the year: ");
    scanf("%d", &year);
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
        daysInMonth[1] = 29;
    }

    for (int month = 0; month < 12; month++) {
        printf("\n%s %d\n", monthNames[month], year);
        printf(" Sun Mon Tue Wed Thu Fri Sat\n");

        
        int startingDay = (year - 1 + (year - 1) / 4 - (year - 1) / 100 + (year - 1) / 400
            + (13 * month + 8) / 5) % 7;

        for (int i = 0; i < startingDay; i++) {
            printf("   ");
        }

        
        for (int day = 1; day <= daysInMonth[month]; day++) {
            printf("%4d", day);
            
            if ((day + startingDay) % 7 == 0 || day == daysInMonth[month]) {
                printf("\n");
            }
        }
    }

    return 0;
}
