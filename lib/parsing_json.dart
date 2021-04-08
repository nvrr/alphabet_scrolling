import 'dart:convert';

import 'package:employee/models/employ.dart';
import 'package:employee/screens/employees_list.dart';
import 'package:flutter/material.dart';

class ParsingJson extends StatelessWidget {
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Employee List', style: TextStyle(color: Colors.white))),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/employees.json'),
            builder: (context, snapshot) {
              List<Employ> employees = parseJson(snapshot.data);
              return employees.isNotEmpty
                  ? EmployList(employ: employees)
                  : Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }

  List<Employ> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed = json.decode(response).cast<Map<String, dynamic>>();
    return parsed.map<Employ>((json) => Employ.fromJson(json)).toList();
  }
}
