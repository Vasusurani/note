import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "image1/Cartoon Love.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.4),
            ])),
            child: Padding(
              padding: const EdgeInsets.only(top: 100, right: 35, left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "phone number, email or username",
                        prefixIcon: Icon(Icons.person)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "password",
                        prefixIcon: Icon(Icons.password)),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
