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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Image Slider'),
          ),
          body: Column(
            children: <Widget>[
              Container(
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
            ],
          ),
        ));
  }
}
