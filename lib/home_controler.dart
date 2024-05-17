// ignore_for_file: camel_case_types, avoid_print

import 'dart:convert';

import 'package:hoe/thing_model.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

class homecontroler extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    getdate();
  }

  things_model? thingsmodel;
  String url = "https://api-x-robot.future-developers.cloud/api/things/all";
  getdate() async {
    http.Response response = await http.get(
      Uri.parse(url),
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    thingsmodel = things_model.fromJson(data);

    print(thingsmodel!.data![0].title);
    update();
  }
}
