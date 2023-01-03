import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 60,
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                "*Name",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                "* Surname",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                "* Password",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                "* Repeat Password",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 40,
                width: 250,
                alignment: Alignment.center,
                child: Text(
                  "Sign up",
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
          ],
        ),
      ),
    );
  }
}
