class Vehicle {
  String? brand;
  int? year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print("Brand: $brand, Year: $year");
  }
}

class Car extends Vehicle {
  double? _mileage;

  Car(String brand, int year, double mileage) : super(brand, year) {
    this._mileage = mileage;
  }
  double get mileage => _mileage ?? 0.0;

  set mileage(double value) {
    if (value >= 0) {
      _mileage = value;
    } else {
      print("Mileage cannot be negative!");
    }
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Mileage: $_mileage km/l");
  }
}

void main() {
  Car myCar = Car("Tesla", 2022, 15.5);

  myCar.mileage = 18.2;
  print("Updated Mileage: ${myCar.mileage} km/l");

  myCar.displayInfo();
}
