import 'dart:convert';
import 'dart:io';
import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'user_model.dart';

class EnquiryLogic {
  List<UserEnquiryModel> userEnquiry = [];

  Future<void> enquiryRegister(UserEnquiryModel newEnquiry) async {

    try {
      userEnquiry.add(newEnquiry);

      File enquiryFile = File('lib/Files/enquiry.json');

      List<Map<String, dynamic>> queryData =
          userEnquiry.map((e) => e.toMap()).toList();

      print(queryData);

      enquiryFile.writeAsStringSync(jsonEncode(queryData));

      print('code reached to read logic ');

      // Load the JSON file using rootBundle
      String jsonString = await rootBundle.loadString('lib/Files/enquiry.json');

      // Parse the JSON string into a Dart object
      dynamic jsonData = json.decode(jsonString);

      print("code here");
      // Print the content
      print(jsonData);

    } catch (e) {
      print(e);
    }
  }
}



