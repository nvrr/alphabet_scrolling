
import 'package:employee/models/employ.dart';
import 'package:flutter/material.dart';

class EmployeeDetails extends StatelessWidget {
  final Employ employ;

  EmployeeDetails({Key key, this.employ}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final empList = [
      'First Name:  ' + employ.firstName,
      'Last Name:  ' + employ.lastName,
      'Email: ' + employ.email,
      'Contact Number:  ' + employ.contactNumber,
      'Age:  ' + employ.age.toString(),
      'Date of Birth:  ' + employ.dob,
      'Salary:  ' + employ.salary.toString(),
      'Address:  ' + employ.address
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Employ Details')),
      body: Card(
        child: Column(
          children: [
            CircleAvatar(
                radius: 50.0, backgroundImage: NetworkImage(employ.imageUrl)),
            Expanded(
              child: ListView.builder(
                itemCount: empList.length,
                itemBuilder: (context, ind) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 50.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${empList[ind]}',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
