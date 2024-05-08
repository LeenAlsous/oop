import 'package:object_oriented/employee.dart';

class Developer extends Employee {
  final String programmingLanguage;
  final int years;
  double _baseSalary = 0.0; // made private as an example on encapsulation

  Developer(String name, int age, String department,
      {required this.programmingLanguage, required this.years})
      : super(name: name, age: age, department: department);

  void setBaseSalary(double number) {
    if (number >= 350) {
      _baseSalary = number;
    }
  }

  /* calculateSalary is made public so we can use the output
  in other transactions and processes instead of _baseSalary */
  @override
  double calculateSalary() {
    // assuming 4% increase for each year the developer has
    double bonus = (0.04 * years) * _baseSalary;
    return _baseSalary + bonus;
  }

  @override
  void displayDetails() {
    super.displayDetails();
    print("the developer use $programmingLanguage");
    print("the developer worked for $years years");
  }
}
