import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(TourismApp());
}

class TourismApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselPage(),
    );
  }
}

class CarouselPage extends StatelessWidget {
  final List<String> images = [
    'Images_Izambia/Homepage.jpg',
    'Images_Izambia/Homepage.jpg',
    'Images_Izambia/Homepage.jpg',
    'Images_Izambia/Homepage.jpg',
    'Images_Izambia/Homepage.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourism'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;

          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.02, // Adjust the percentage according to your needs
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: screenHeight * 0.3, // Adjust the percentage according to your needs
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: images.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: screenWidth,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04), // Adjust the percentage according to your needs
                  child: Text(
                    'Tourism in Zambia',
                    style: TextStyle(
                      fontSize: screenWidth * 0.07, // Adjust the percentage according to your needs
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04), // Adjust the percentage according to your needs
                  child: Text(
                    'Zambia is a country in southern Africa known for its diverse wildlife, stunning landscapes, and rich cultural heritage. With its abundant national parks, including the famous South Luangwa, Lower Zambezi, and Kafue National Parks, Zambia offers incredible opportunities for safari adventures and game viewing.',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04, // Adjust the percentage according to your needs
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    launch('https://www.zambiatourism.com/');
                  },
                  child: Text('Learn More'),
                ),
                SizedBox(
                  height: screenHeight * 0.1, // Adjust the percentage according to your needs
                ),
                Footer(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Get in Touch',
            style: TextStyle(fontSize: 34, color: Colors.white),
          ),
          SizedBox(height: 30),
          Text(
            'Mwenya Muyeba - SWE2009964',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            'Assignment 1',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 30),
          Text(
            'Terms of Service',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => launch('https://www.facebook.com'),
                child: Icon(FontAwesome.facebook, color: Colors.white),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => launch('https://www.instagram.com'),
                child: Icon(FontAwesome.instagram, color: Colors.white),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => launch('https://www.twitter.com'),
                child: Icon(FontAwesome.twitter, color: Colors.white),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => launch('https://www.linkedin.com'),
                child: Icon(FontAwesome.linkedin, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
