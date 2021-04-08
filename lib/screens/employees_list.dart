
import 'package:employee/models/employ.dart';
import 'package:employee/screens/employee_details.dart';
import 'package:flutter/material.dart';


class EmployList extends StatelessWidget {
  final List<Employ> employ;

  const EmployList({Key key, this.employ}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: employ == null ? 0 : employ.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EmployeeDetails(employ: employ[index]),
              ),
            ),
            leading: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(employ[index].imageUrl),
            ),
            title: Text(employ[index].firstName + ' '+ employ[index].lastName),
          ),
        );
      },
    );
  }
}
