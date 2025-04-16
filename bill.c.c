#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_PRODUCTS 100
#define MAX_NAME_LENGTH 50
struct Product {
    char name[MAX_NAME_LENGTH];
    float price;
    int quantity;
};


struct Bill {
    struct Product products[MAX_PRODUCTS];
    int count; // number of products in the bill
    float total_amount;
};

void addProduct(struct Product inventory[], int *count) {
    if (*count >= MAX_PRODUCTS) {
        printf("Inventory full. Cannot add more products.\n");
        return;
    }
    
    printf("Enter product name: ");
    scanf(" %[^\n]s", inventory[*count].name);
    printf("Enter price: ");
    scanf("%f", &inventory[*count].price);
    printf("Enter quantity: ");
    scanf("%d", &inventory[*count].quantity);
    
    (*count)++;
    printf("Product added successfully.\n");
}


void displayInventory(struct Product inventory[], int count) {
    printf("\nCurrent Inventory:\n");
    printf("--------------------------------------------------\n");
    printf(" %-20s %-10s %-10s \n", "Name", "Price", "Quantity");
    printf("--------------------------------------------------\n");
    for (int i = 0; i < count; i++) {
        printf(" %-20s %-10.2f %-10d \n", inventory[i].name, inventory[i].price, inventory[i].quantity);
    }
    printf("--------------------------------------------------\n");
}


void generateBill(struct Product inventory[], int count) {
    struct Bill bill;
    bill.count = 0;
    bill.total_amount = 0.0;
    char choice = 'y';

    do {
        printf("Enter product name to purchase: ");
        char name[MAX_NAME_LENGTH];
        scanf(" %[^\n]s", name);

        
        int found = 0;
        for (int i = 0; i < count; i++) {
            if (strcmp(inventory[i].name, name) == 0) {
                found = 1;
                printf("Enter quantity to purchase: ");
                int quantity;
                scanf("%d", &quantity);

                if (inventory[i].quantity >= quantity) {
                    
                    strcpy(bill.products[bill.count].name, inventory[i].name);
                    bill.products[bill.count].price = inventory[i].price;
                    bill.products[bill.count].quantity = quantity;
                    bill.total_amount += inventory[i].price * quantity;

                    
                    inventory[i].quantity -= quantity;

                    bill.count++;
                    printf("Product added to bill.\n");
                } else {
                    printf("Insufficient quantity in inventory.\n");
                }
                break;
            }
        }

        if (!found) {
            printf("Product not found in inventory.\n");
        }

        printf("Do you want to purchase another product? (y/n): ");
        scanf(" %c", &choice);
    } while (choice == 'y' || choice == 'Y');

    // Display the bill
    printf("\n\n");
    printf("--------------------------------------------------\n");
    printf(" %-20s %-10s %-10s %-10s\n", "Name", "Price", "Quantity", "Total");
    printf("--------------------------------------------------\n");
    for (int i = 0; i < bill.count; i++) {
        printf(" %-20s %-10.2f %-10d %-10.2f\n", bill.products[i].name, bill.products[i].price, bill.products[i].quantity, bill.products[i].price * bill.products[i].quantity);
    }
    printf("--------------------------------------------------\n");
    printf(" Total: %.2f\n", bill.total_amount);
    printf("--------------------------------------------------\n");
}

// Main function
int main() {
    struct Product inventory[MAX_PRODUCTS];
    int inventory_count = 0;
    int choice;

    do {
        printf("\nWelcome to the Billing System\n");
        printf("1. Add Product to Inventory\n");
        printf("2. Display Inventory\n");
        printf("3. Generate Bill\n");
        printf("4. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                addProduct(inventory, &inventory_count);
                break;
            case 2:
                displayInventory(inventory, inventory_count);
                break;
            case 3:
                generateBill(inventory, inventory_count);
                break;
            case 4:
                printf("Exiting the program.\n");
                break;
            default:
                printf("Invalid choice. Please enter a valid choice.\n");
        }
    } while (choice != 4);

    return 0;
}
 