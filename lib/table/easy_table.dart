import 'package:easy_table/easy_table.dart';
import 'package:flutter/material.dart';

class Person {
  Person(this.name, this.age);

  final String name;
  final int age;
}

class EasyTablePage extends StatelessWidget {
  const EasyTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EasyTableModel<Person>? model;

    List<Person> rowsEasy = [
      Person('Landon', 19),
      Person('Sari', 22),
      Person('Julian', 37),
      Person('Carey', 39),
      Person('Cadu', 43),
      Person('Delmar', 72)
    ];

    model = EasyTableModel<Person>(rows: rowsEasy, columns: [
      EasyTableColumn(name: 'Name', stringValue: (row) => row.name),
      EasyTableColumn(name: 'Age', intValue: (row) => row.age)
    ]);
    return Container(
      color: Colors.white,
      child: EasyTable<Person>(model),
    );
  }
}
