#include <iostream>
#include <vector>
#include <string>
#include <iomanip>

using namespace std;

// Item class to represent items in the catalog
class Item {
public:
    Item(const string& name, double price) : name(name), price(price) {}

    string getName() const {
        return name;
    }

    double getPrice() const {
        return price;
    }

private:
    string name;
    double price;
};

// Catalog class to manage items
class Catalog {
public:
    // Method to add an item to the catalog
    void addItem(const Item& item) {
        items.push_back(item);
    }

    // Method to display the catalog
    void displayCatalog() const {
        if (items.empty()) {
            cout << "Catalog is empty.\n";
        } else {
            cout << "Catalog:\n";
            for (const auto& item : items) {
                cout << item.getName() << " - $" << fixed << setprecision(2) << item.getPrice() << endl;
            }
        }
    }

    // Method to check if the catalog is empty
    bool isEmpty() const {
        return items.empty();
    }

private:
    vector<Item> items;
};

// Function to prompt the user for an item name
string promptForName() {
    string name;
    cout << "Enter item name: ";
    getline(cin, name);
    return name;
}

// Function to prompt the user for an item price
double promptForPrice() {
    double price;
    cout << "Enter item price: $";
    cin >> price;
    while (cin.fail() || price <= 0) {
        cout << "Invalid price. Please enter a positive number: $";
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(), '\n');
        cin >> price;
    }
    cin.ignore(); // Ignore newline character
    return price;
}

// Function to display menu options and get user choice
char displayMenu() {
    cout << "\nMenu:\n";
    cout << "1. Add item to catalog\n";
    cout << "2. Display catalog\n";
    cout << "3. Exit\n";
    cout << "Enter your choice: ";
    char choice;
    cin >> choice;
    cin.ignore(); // Ignore newline character
    return choice;
}

int main() {
    Catalog catalog;

    cout << "Welcome to the Catalog Engine\n";

    char choice;
    do {
        choice = displayMenu();

        switch (choice) {
            case '1': {
                string name = promptForName();
                double price = promptForPrice();
                catalog.addItem(Item(name, price));
                cout << "Item added to catalog.\n";
                break;
            }
            case '2':
                catalog.displayCatalog();
                break;
            case '3':
                cout << "Exiting...\n";
                break;
            default:
                cout << "Invalid choice. Please try again.\n";
        }
    } while (choice != '3');

    return 0;
}
