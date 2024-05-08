abstract class Employee {
  final String name;
  final int age;
  final String department;

  const Employee(
      {required this.name, required this.age, required this.department});

  void displayDetails() {
    print("employee name $name");
    print("employee age $age");
    print("employee department $department");
  }

  double calculateSalary();
}
