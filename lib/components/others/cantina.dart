import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(CantinaApp());
}

class CantinaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cantina',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CantinaHomePage(),
    );
  }
}

class CantinaHomePage extends StatelessWidget {
  final List<String> sliderImages = [
    'Images_Izambia/chica.jpg',
    'Images_Izambia/rest4.jpg',
    'Images_Izambia/rest1.jpg',
  ];

  _launchURL() async {
    const url = 'https://cantinalsk.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cantina'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 300.0,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enlargeCenterPage: true,
                  ),
                  items: sliderImages.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 16),
                Text(
                  'Welcome to Cantina',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  'Address:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '8818 Off Lake Road, Woodlands, Lusaka, 10101, Zambia',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  'Opening Hours:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Monday - Saturday: 9 AM - 10 PM',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Sunday: 10 AM - 8 PM',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  'About Us:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Cantina is a vibrant restaurant that offers a wide range of delicious dishes. '
                      'Our menu includes appetizers, main courses, desserts, and a variety of beverages. '
                      'We take pride in serving fresh and high-quality ingredients to ensure an excellent dining experience. '
                      'Visit us today and indulge in a culinary adventure!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _launchURL,
                  child: Text('Visit Website'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

