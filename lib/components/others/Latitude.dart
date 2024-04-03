import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(LatitudeApp());
}

class LatitudeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latitude',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CantinaHomePage(),
    );
  }
}

class CantinaHomePage extends StatelessWidget {
  final List<String> sliderImages = [
    'Images_Izambia/lat.jpg',
    'Images_Izambia/rest2.jpg',
    'Images_Izambia/rest4.jpg',
  ];

  _launchURL() async {
    const url = 'https://15.thelatitudehotels.com/#'; // Replace with your actual website URL
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
        title: Text('Latitude 15'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 350.0,
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
                  'Welcome to Latitude 15',
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
                  'Leopards Lane Kabulonga, Lusaka Zambia',
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
                  'Latitude 15° is set amidst the beautiful tree-lined avenues on the south-east corner of Lusaka, 20 minutes to the city centre and 30 minutes from Kenneth Kaunda International Airport.',
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
