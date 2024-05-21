// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

// class SearchbarController extends GetxController {

//   // Future<void> getHomePage() async {
//   //   try {
//   //     var url = Uri.parse("http://workdigitalllc.com/api/Index/Categories");
//   //     var response = await http.post(
//   //       url,
//   //       headers: <String, String>{
//   //         'Content-Type': 'application/json',
//   //         'charset': 'UTF-8',
//   //         'Charset': 'utf-8',
//   //         'Accept': 'application/json',
//   //         // 'Accept-Language': 'en'
//   //       },
//   //     );

//   //    // if (response.statusCode == 200) {
//   //       print(jsonDecode(response.body.toString()));
//   //    // }
//   //   } catch (e) {
//   //     print(e);
//   //   }
//   // }
// }
import 'dart:convert';
import 'package:ecoharmony/components/home/mainpage_data.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SearchbarController extends GetxController {
  HomepageModel? homeData;
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/homepage.json');
    final data = await json.decode(response);
    homeData = HomepageModel.fromJson(data);
    update();
  }
}
