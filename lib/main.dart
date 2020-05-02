import 'package:flutter/material.dart';
import 'package:image_slider/carousel_slider.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Image Slider'),
      ),
      body: Column(
        children: <Widget>[
         
          SizedBox(
            height: MediaQuery.of(context).size.width / 2.5,
            width: double.infinity,
            // width: MediaQuery.of(context).size.width,
            child: SliderCarousel1(),
          ),
           SizedBox(
            height: 10,
          ),
          Container(
            height: 170.0,
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
    );
  }
}
