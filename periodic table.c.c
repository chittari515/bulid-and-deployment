#include <stdio.h>
#include <string.h>


struct Element {
    int atomic_number;
    char symbol[3];
    char name[20];
    float atomic_mass;
};


void displayByAtomicNumber(struct Element elements[], int num_elements) {
    printf("\nPeriodic Table by Atomic Number:\n");
    printf("----------------------------------------------\n");
    printf(" %-5s | %-5s | %-20s | %-10s\n", "Atomic", "Symbol", "Name", "Atomic Mass");
    printf(" %-5s | %-5s | %-20s | %-10s\n", "Number", "", "", "");
    printf("----------------------------------------------\n");
    for (int i = 0; i < num_elements; i++) {
        printf(" %-5d | %-5s | %-20s | %-10.2f\n", elements[i].atomic_number, elements[i].symbol, elements[i].name, elements[i].atomic_mass);
    }
    printf("----------------------------------------------\n");
}


void displayBySymbol(struct Element elements[], int num_elements) {
    printf("\nPeriodic Table by Symbol:\n");
    printf("----------------------------------------------\n");
    printf(" %-5s | %-5s | %-20s | %-10s\n", "Symbol", "Number", "Name", "Atomic Mass");
    printf("----------------------------------------------\n");
    for (int i = 0; i < num_elements; i++) {
        printf(" %-5s | %-5d | %-20s | %-10.2f\n", elements[i].symbol, elements[i].atomic_number, elements[i].name, elements[i].atomic_mass);
    }
    printf("-----------------------------------------\n");
}

int main() {
    
    struct Element elements[] = {
        {1, "H", "Hydrogen", 1.008},
        {2, "He", "Helium", 4.0026},
        {3, "Li", "Lithium", 6.94},
        {4, "Be", "Beryllium", 9.0122},
        {5, "B", "Boron", 10.81},
        // Add more elements here...
    };
    
    int num_elements = sizeof(elements) / sizeof(elements[0]);

    
    displayByAtomicNumber(elements, num_elements);

    
    displayBySymbol(elements, num_elements);

    return 0;
}
