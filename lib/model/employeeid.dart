import 'dart:convert';

List<Employee> employeeFromJson(String str) => List<Employee>.from(
      json.decode(str).map(
            (x) => Employee.fromJson(x),
          ),
    );

class Employee {
  Employee({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );
}
