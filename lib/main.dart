import 'package:object_oriented/developer.dart';
import 'package:object_oriented/employee.dart';
import 'package:object_oriented/manager.dart';

void main() {
  Developer dev =
  Developer('Imad', 40, 'Technical', programmingLanguage: 'PHP', years: 13);
  Employee manager = const Manager('Dina', 30, 'Marketing',
      monthlyBonus: 0.08, baseSalary: 1800);

  dev.displayDetails();
  manager.displayDetails();

  dev.setBaseSalary(2000);

  print('${dev.calculateSalary()}');
  print('${manager.calculateSalary()}');
}
