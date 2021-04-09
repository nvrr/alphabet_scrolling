class Employ {
  final int id;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final String email;
  final int age;
  final String contactNumber;
  final String dob;
  final double salary;
  final String address;

  Employ({this.id, this.firstName, this.lastName, this.imageUrl, this.email, this.age, this.contactNumber, this.dob, this.salary, this.address});

  factory Employ.fromJson(Map<String, dynamic> json) {
    return Employ(
     id : json['id'] ,
     firstName : json['firstName'] ,
     lastName : json['lastName'] ,
     imageUrl: json['imageUrl'],
     email : json['email'] ,
     age : json['age'] ,
     contactNumber : json['contactNumber'],
     dob : json['dob'] ,
     salary : json['salary'] ,
     address : json['address'] ,

    );
  }

}