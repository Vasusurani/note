import 'package:beauty/categorypage.dart';
import 'package:flutter/material.dart';
//import 'package:beauty/main.dart';
import 'package:beauty/favorite.dart';
import 'package:beauty/cart.dart';

class product extends StatefulWidget {
  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image1/new3.avif"), fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => favorite(),
                                ));
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red.shade500,
                              )),
                          SizedBox(
                            height: 100,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => cart(),
                                ));
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.black,
                              ))
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ("Our New Products"),
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: [
                                  Text(
                                    ("View More"),
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )
                                ]),
                              ]))
                    ],
                  )),
            ),
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(("Categories"),
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                      Text(
                        ("All"),
                        style: TextStyle(fontSize: 20),
                      )
                    ]),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 130,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    makecategory(
                        image: "image1/clothes.jpeg",
                        title: "cloth",
                        tag: "cloth"),
                    SizedBox(
                      width: 20,
                    ),
                    makecategory(
                        image: "image1/beauty.jpeg",
                        title: "beauty",
                        tag: "beauty"),
                    SizedBox(
                      width: 20,
                    ),
                    makecategory(
                        image: "image1/perfume2.jpeg",
                        title: "perfume",
                        tag: "perfume"),
                    SizedBox(
                      width: 20,
                    ),
                    makecategory(
                        image: "image1/goggles.jpeg",
                        title: "goggles",
                        tag: "goggles"),
                  ]),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ("Best Selling By Category"),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(("All"))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    makebestcategory(
                        image: "image1/bracelet2.jpeg",
                        title: "jewellery",
                        tag: "jewellery"),
                    SizedBox(
                      width: 20,
                    ),
                    makebestcategory(
                        image: "image1/purse.jpeg",
                        title: "purse",
                        tag: "purse"),
                    SizedBox(
                      width: 20,
                    ),
                    makebestcategory(
                        image: "image1/footwear.jpeg",
                        title: "footwear",
                        tag: "footwear"),
                    SizedBox(
                      width: 20,
                    ),
                    makebestcategory(
                        image: "image1/makeup1.jpg",
                        title: "makeup",
                        tag: "makeup"),
                  ]),
                )
              ]))
        ]),
      ),
    );
  }
  Widget makecategory({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 2 / 1.5,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => category(
                    title: title,
                    image: image,
                    tag: tag,
                  )));
        },
        child: Container(
            decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(image))),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  gradient:
                  LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.0),
                  ])),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
            )),
      ));

  }


  Widget makebestcategory({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 1.9 / 3,
        child: Container(
          decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          child: GestureDetector(
            onTap: () {
      Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => category(
                  title: title,
                  image: image,
                  tag: tag,
                )));
    },
            child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.0),
                ])),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
          ),
          ),
        ));
  }
}
