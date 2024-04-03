import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:izambia01/components/others/Latitude.dart';
import 'package:izambia01/components/others/cantina.dart';
import 'package:url_launcher/url_launcher.dart';

class Resturants extends StatelessWidget {
  final List<String> images = [
    'Images_Izambia/rest1.jpg',
    'Images_Izambia/rest2.jpg',
    'Images_Izambia/rest1.jpg',
    'Images_Izambia/rest4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Famous Restaurants'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              CarouselSlider(
                items: images.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 300.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 900),
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(height: 16),
              RestaurantCard(
                name: 'Cantina',
                description:
                'Cantina is a cozy restaurant serving authentic Mexican cuisine. Enjoy delicious tacos, burritos, and margaritas in a vibrant and lively atmosphere.',
                buttonText: 'Visit Cantina',
                buttonAction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CantinaApp()),
                  );
                },
              ),
              SizedBox(height: 16),
              RestaurantCard(
                name: 'Latitude 15',
                description:
                'Latitude 15 is a fine dining restaurant offering a fusion of flavors from around the world. Indulge in exquisite dishes prepared by renowned chefs while enjoying stunning views.',
                buttonText: 'Visit Latitude 15',
                buttonAction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LatitudeApp()),
                  );
                },
              ),
              SizedBox(height: 16),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String name;
  final String description;
  final String buttonText;
  final VoidCallback buttonAction;

  RestaurantCard({
    required this.name,
    required this.description,
    required this.buttonText,
    required this.buttonAction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: buttonAction,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(description),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: buttonAction,
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Get in Touch',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 16),
          Text(
            'Mwenya Muyeba - SWE2009964',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            'Assignment 1',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 16),
          Text(
            'Terms of Service',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => launch('https://www.facebook.com'),
                child: Icon(FontAwesome.facebook, color: Colors.white),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () => launch('https://www.instagram.com'),
                child: Icon(FontAwesome.instagram, color: Colors.white),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () => launch('https://www.twitter.com'),
                child: Icon(FontAwesome.twitter, color: Colors.white),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () => launch('https://www.linkedin.com'),
                child: Icon(FontAwesome.linkedin, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Resturants(),
  ));
}
