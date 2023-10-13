import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class category extends StatefulWidget {
  final String title;
  final String image;
  final String tag;
  const category(
      {super.key, required this.title, required this.image, required this.tag});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Hero(
            tag: widget.tag,
            child: Material(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), )),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.5),
                              Colors.black.withOpacity(.0),
                            ])),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          widget.title,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Product"),
                  Row(
                    children: [
                      Text("View More", style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              makecategory(
                  image: "image1/beauty.png", title: "beauty", price: 100),SizedBox(height: 30,),
              makecategory(
                  image: "image1/ai.png", title: "beauty", price: 100),SizedBox(height: 30,),
              makecategory(
                  image: "image1/beauty.png", title: "beauty", price: 100),SizedBox(height: 30,),
              makecategory(
                  image: "image1/beauty.png", title: "beauty", price: 100),SizedBox(height: 30,),
              makecategory(
                  image: "image1/beauty.png", title: "beauty", price: 100),SizedBox(height: 30,),
            ]),
          )
        ]),
      ),
    );
  }

  Widget makecategory({image, title, price}) {
    return Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          height: 200,
          // margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ])),
        ));
  }
}
