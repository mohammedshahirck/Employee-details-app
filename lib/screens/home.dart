import 'package:apipublic/model/employeeid.dart';
import 'package:apipublic/screens/emp_details.dart';
import 'package:flutter/material.dart';
import '../Api Services/api_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Employee>? employee;
  var isLoaded = false;
  @override
  void initState() {
    super.initState();
    getEmployee();
  }

  getEmployee() async {
    employee = await GetDate().getEmpDetails(context);
    if (employee!.isEmpty) {
      setState(() {
        isLoaded = false;
      });
    } else {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 149, 204, 216),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Employee List',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: isLoaded == false
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: employee?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          employee![index].avatar,
                        ),
                      ),
                      subtitle: Text(employee![index].email),
                      title: Text(
                        '${employee![index].firstName}\t${employee![index].lastName}',
                      ),
                      trailing: Text(
                        'ID NO: ${employee![index].id}',
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return EmployeeDetails(
                              firstname: employee![index].firstName,
                              lastname: employee![index].lastName,
                              email: employee![index].email,
                              avatar: employee![index].avatar,
                              id: employee![index].id,
                            );
                          },
                        ));
                      },
                    );
                  },
                ),
        ),
      ),
    );
  }
}
