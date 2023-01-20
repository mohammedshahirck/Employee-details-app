import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployeeDetails extends StatelessWidget {
  final String firstname;
  final String lastname;
  final String email;
  final String avatar;
  final int id;

  const EmployeeDetails(
      {super.key,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.avatar,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 149, 204, 216),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Employee Details'),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(avatar),
                ),
              ),
              Text(
                'ID NO : $id',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                firstname + lastname,
                style: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                email,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
      ),
    );
  }
}
