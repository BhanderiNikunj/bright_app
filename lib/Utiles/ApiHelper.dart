import 'dart:convert';

import 'package:http/http.dart';

class ApiHelper {

  static ApiHelper apiHelper = ApiHelper._();
  ApiHelper._();

  Future<void> readStudent() async {
    String link = "http://192.168.29.164/Bright-Api/student/readStudent.php";

    Uri uri = Uri.parse(link);

    var response = await get(uri);

    var json = jsonDecode(response.body);


  }
}
