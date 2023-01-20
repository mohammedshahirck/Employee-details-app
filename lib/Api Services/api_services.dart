import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:apipublic/model/employeeid.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetDate {
  Future<List<Employee>> getEmpDetails(BuildContext context) async {
    var client = http.Client();
    try {
      var uri = 'https://reqres.in/api/users?page=2';
      var url = Uri.parse(uri);
      var response = await client.get(url);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        Iterable list = result["data"];
        return list.map((emp) => Employee.fromJson(emp)).toList();
      }
    } on SocketException catch (e) {
      const snackBar = SnackBar(
        content: Text('No internet connection'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return [];
    } catch (e) {
      return [];
    }
    return [];
  }
}
