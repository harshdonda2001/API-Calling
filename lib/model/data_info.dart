// To parse this JSON data, do
//
//     final dataInfo = dataInfoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class DataInfo {
  DataInfo({
    required this.status,
    required this.message,
    required this.result,
  });

  String status;
  String message;
  Result result;

  factory DataInfo.fromRawJson(String str) =>
      DataInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataInfo.fromJson(Map<String, dynamic> json) => DataInfo(
        status: json["status"],
        message: json["message"],
        result: Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": result.toJson(),
      };
}

class Result {
  Result({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.address,
    required this.password,
    required this.dob,
    required this.phone,
    required this.profilePic,
    required this.deviceToken,
    required this.createDate,
  });

  String id;
  String firstName;
  String lastName;
  String email;
  String address;
  String password;
  String dob;
  String phone;
  String profilePic;
  String deviceToken;
  String createDate;

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        address: json["address"],
        password: json["password"],
        dob: json["dob"],
        phone: json["phone"],
        profilePic: json["profile_pic"],
        deviceToken: json["device_token"],
        createDate: json["create_date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "address": address,
        "password": password,
        "dob": dob,
        "phone": phone,
        "profile_pic": profilePic,
        "device_token": deviceToken,
        "create_date": createDate,
      };
}
