import 'package:object_oriented/employee.dart';

class Manager extends Employee {
  final double monthlyBonus;
  final double baseSalary;

  const Manager(String name, int age, String department,
      {required this.monthlyBonus, required this.baseSalary})
      : super(name: name, age: age, department: department);

  @override
  double calculateSalary() {
    return (baseSalary * monthlyBonus) + baseSalary;
  }
}