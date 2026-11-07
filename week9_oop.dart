// Week 9: Object-Oriented Programming in Dart (Part 1)
// Author: John Carlo Macabangon
// Course: PC16 - Mobile Development with Lab (National Teachers College)

// 1. CLASS DEFINITION: Models a real-world IT component object
class HardwareComponent {
  String brand;
  String model;
  double _price; // 3. ENCAPSULATION: Private field using an underscore

  // 2. CONSTRUCTOR: Sets initial field values when created
  HardwareComponent(this.brand, this.model, this._price);

  // Getter method to read the private price safely
  double get price => _price;

  // Setter method to update the private price safely with validation
  set price(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    } else {
      print("Error: Price must be greater than zero.");
    }
  }

  // Behavior method
  void displayDetails() {
    print("Hardware Item: $brand $model | Encapsulated Price: PHP ${_price.toStringAsFixed(2)}");
  }
}

void main() {
  print('=============================================');
  print('  PC16 Week 9: OOP Basics & Collections Test ');
  print('=============================================\n');

  // 5. CREATE AND TEST OBJECTS: Instantiating objects from the class
  HardwareComponent comp1 = HardwareComponent("AMD", "Ryzen 5 5600", 6500.00);
  HardwareComponent comp2 = HardwareComponent("MSI", "B450M-A PRO MAX II", 4200.00);
  HardwareComponent comp3 = HardwareComponent("Kingston", "Fury DDR4 16GB", 2400.00);

  // 4. USE A LIST OR MAP: Storing collection of objects in a List
  List<HardwareComponent> inventoryList = [comp1, comp2, comp3];

  print('--- Displaying Inventory Collection (List) ---');
  for (var item in inventoryList) {
    item.displayDetails();
  }

  // Testing Encapsulation Setter / Getter modification
  print('\n--- Testing Encapsulation Update ---');
  print("Old Price for ${comp1.model}: PHP ${comp1.price}");
  comp1.price = 6200.00; // Updating via setter
  print("Updated Price for ${comp1.model}: PHP ${comp1.price}");

  print('\n=============================================');
  print('            OOP Execution Complete           ');
  print('=============================================');
}
