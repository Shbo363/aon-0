
import 'dart:convert';

import 'package:http/http.dart' as http;

class Crud {

  // used in post function
  postRequest(String url, Map data) async {
    try {
      var request = await http.post(Uri.parse(url), body: data);
      if (request.statusCode == 201) {
        var result = jsonEncode(request.body.toString());
        return result;
      } else {
        return "error to get result";
      }
    } catch (e) {
      print("error1 $e");
    }
  }









}