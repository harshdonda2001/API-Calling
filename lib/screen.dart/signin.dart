import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_collection/controller/product_controller.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 60,
              child: Text(
                "Sign in",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 60,
              width: 350,
              padding: EdgeInsets.all(10),
              child: Text(
                "Become a member - don't miss out no deals, offers,discount and bonus vouchers.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              "* Email",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: productController.name,
              decoration: InputDecoration(hintText: "Gmail"),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: productController.password,
              decoration: InputDecoration(hintText: "Password"),
              validator: (value) {
                if (value!.isEmpty) {
                  return "password cannot be empty";
                } else if (value.length < 6) {
                  return "password atleast at 6";
                }
              },
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 20,
              width: 130,
              child: Text(
                "forgot passsword?",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () async {
                await productController.getUserData();
                await productController.getProductData(
                    productController.dataInfo?.result.id ?? "");
              },
              child: Container(
                height: 40,
                width: 250,
                alignment: Alignment.center,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
