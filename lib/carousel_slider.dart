import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class SliderCarousel1 extends StatefulWidget {
  @override
  _SliderCarousel1State createState() => _SliderCarousel1State();
}

class _SliderCarousel1State extends State<SliderCarousel1> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://flutterlibrary.page.link/banner',
    'https://flutterlibrary.page.link/banner1',
    'https://flutterlibrary.page.link/banner2',
    'https://flutterlibrary.page.link/banner3',
    'https://flutterlibrary.page.link/banner4'
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          CarouselSlider(
            height: 200.0,
            autoPlay: true,
            pauseAutoPlayOnTouch: Duration(
              seconds: 5,
            ),
            items: [
              'assets/img/bannerMan1.png',
              'assets/img/bannerMan2.png',
              'assets/img/bannerMan3.png',
              'assets/img/bannerMan1.png',
              'assets/img/bannerMan4.png',
            ].map((url) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    child: Image.asset(
                      url,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
          ),
          Positioned(
              bottom: 10,
              right: MediaQuery.of(context).size.width / 2.5,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: DotsIndicator(
                  dotsCount: imgList.length,
                  position: _current.toDouble(),
                  decorator: DotsDecorator(
                    size: const Size.square(5.0),
                    activeSize: const Size(12.0, 6.0),
                    activeColor: Colors.white,
                    color: Colors.grey[300],
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              )),
          // Positioned(
          //   bottom: 0,
          //   right: MediaQuery.of(context).size.width / 2.5,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: map<Widget>(imgList, (index, u) {
          //       return Container(
          //         width: 10,
          //         height: _current == index ? 8 : 4,
          //         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
          //         decoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             color: _current == index ? Colors.white : Colors.grey),
          //       );
          //     }),
          //   ),
          // ),

          // SizedBox(height: 20),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     OutlineButton(
          //       onPressed: gotoPrevious,
          //       child: Text("<"),
          //     ),
          //     OutlineButton(
          //       onPressed: gotoNext,
          //       child: Text(">"),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }

  gotoPrevious() {
    carouselSlider.previousPage(
        duration: Duration(microseconds: 300), curve: Curves.ease);
  }

  gotoNext() {
    carouselSlider.nextPage(
        duration: Duration(microseconds: 300), curve: Curves.decelerate);
  }
}
