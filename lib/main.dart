import 'package:beauty/login.dart';
import 'package:flutter/material.dart';
import 'package:beauty/product.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: beauty()));
}

class beauty extends StatefulWidget {
  @override
  State<beauty> createState() => _beautyState();
}

class _beautyState extends State<beauty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image1/ai.png"), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(.3),
          ])),
          child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Brand New Perspactive",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Let's Start With Our Summer Collection",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => product(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25,left: 25),
                          child: Text("Get Start",style: TextStyle(color: Colors.black)),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60,left: 50),
                        child: Text("Create Account",style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
