import 'package:flutter/material.dart';

import 'carousel_pro/src/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 0.0, left: 10.0, right: 10.0, bottom: 35.0),
                child: Container(
                  height: 180.0,
                  child: Carousel(
                    boxFit: BoxFit.cover,
                    dotColor: Colors.transparent,
                    dotSize: 5.5,
                    dotSpacing: 16.0,
                    dotBgColor: Colors.transparent,
                    showIndicator: false,
                    overlayShadow: false,
                    overlayShadowColors: Colors.white.withOpacity(0.9),
                    overlayShadowSize: 0.9,
                    images: [
                      AssetImage("assets/img/bannerMan1.png"),
                      AssetImage("assets/img/bannerMan2.png"),
                      AssetImage("assets/img/bannerMan3.png"),
                      AssetImage("assets/img/bannerMan4.png"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
