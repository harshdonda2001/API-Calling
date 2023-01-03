import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ui_collection/model/data_info.dart';

class ProductController extends GetxController implements GetxService {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  DataInfo? dataInfo;

  getUserData() async {
    try {
      Uri uri = Uri.parse("login api");
      var responce = await http.post(uri, body: {
        "email": name.text,
        "password": password.text,
        "device_token": "sssssss",
        "profile_pic": "",
      });
      var result = jsonDecode(responce.body);
      dataInfo = DataInfo.fromJson(result);
      update();
    } catch (e) {
      print(e.toString());
    }
  }

  getProductData(String id) async {
    try {
      Uri uri = Uri.parse("cart items api");
      var responce = await http.post(
        uri,
        body: {
          "user_id": id,
        },
      );
      print(responce.body);
      var result = jsonDecode(responce.body);
      print("%%%%%%%%%%%%%%%%%%%%%%%" + result.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}
