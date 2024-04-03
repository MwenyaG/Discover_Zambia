import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:izambia01/components/helpers/menscollection.dart';
import 'package:izambia01/components/helpers/womenscollection.dart';
import 'package:izambia01/components/others/Latitude.dart';
import 'package:izambia01/components/pages/resturants.dart';
import 'package:izambia01/components/pages/shoppingPage.dart';
import 'package:izambia01/components/pages/webview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../others/Tourism.dart';
//import 'package:webview_flutter_android/webview_flutter_android.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(), //declare stateful widget (components will change/load)
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    //const url="https://bantu.com.au/";
    if (!await launchUrl(uri, mode: LaunchMode.inAppWebView)) {
      throw 'could not launch';
    }
  }

  bool _showWebView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        //title: Image.asset('Images_Izambia/iz-logo.png', height: 100.0, width: 100.0),
        title: Text(
          'EXPLORE ZAMBIA',
          style: TextStyle(
            fontSize: 20,
            //fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 10.0,
        backgroundColor: Colors.lightBlueAccent,
        actions: <Widget>[],
      ),

      //Body: WebView(
      //javasciptMode: JavaScriptMode.unrestricted,
      //initialUrl: 'https://www.realestate.izambia.net/',
      //),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          //header for drawer
          UserAccountsDrawerHeader(
            accountName: Text('Mwenya Muyeba'),
            accountEmail: Text('gmuyeba2001@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('Images_Izambia/img.png'), // Replace with your asset image path
              ),

            ),
            decoration: new BoxDecoration(color: Colors.lightBlueAccent),
          ),

          //body of application

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
          ),







          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Resturants()));
            },
            child: ListTile(
              title: Text('Resturant'),
              leading: Icon(Icons.restaurant),
            ),
          ),


          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TourismApp()));
            },
            child: ListTile(
              title: Text('Tourism'),
              leading: Icon(Icons.trip_origin_sharp),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShoppingPage()));
            },
            child: ListTile(
              title: Text('Shopping'),
              leading: Icon(Icons.shopping_cart),
            ),
          ),
        ]),
      ),

      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          //this is for the imagae carousel
          //CarouselSliderExample,

          //this is for the padding
          //new Padding(
          //padding: const EdgeInsets.all(15.0),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('Images_Izambia/Homepage.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('Images_Izambia/second.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('Images_Izambia/third.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('Images_Izambia/fourth.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('Images_Izambia/fifth.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 300.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          Text(
            '\nEXPLORE\ & VISIT ',
            style: GoogleFonts.roboto(
              //fontFamily: 'AirbnbCerealBold',
                fontSize: 20,
                //fontWeight: FontWeight.bold,
                color: Colors.black),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            //Use of SizedBox
            height: 10,
          ),
          Center(
              child: Column(children: <Widget>[
                Container(
                  width: 200,
                  height: 4,
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      " ",
                      style: TextStyle(
                          fontFamily: 'AirbnbCerealBold',
                          fontSize: 28,
                          //height: 5.0,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 3,
                    ),
                  ),
                ),
              ])),
          SizedBox(
            //Use of SizedBox
            height: 10,
          ),
          Text(
            "Easily Explore the Essentials",
            style: GoogleFonts.roboto(

              //fontFamily: 'AirbnbCerealBook',
                fontSize: 13,
                color: Colors.black),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            //Use of SizedBox
            height: 15,
          ),

          //),
          //begins here
          buildImageCard1(),
          SizedBox(
            //Use of SizedBox
            height: 10,
          ),
          SizedBox(
            //Use of SizedBox
            height: 20,
          ),

          buildImageCard3(),
          SizedBox(
            //Use of SizedBox
            height: 20,
          ),
          buildImageCard(),
          SizedBox(
            //Use of SizedBox
            height: 30,
          ),

          Footer(),
        ],
      ),
    );
  }

  Widget buildImageCard() =>
      Card(
          elevation: 8,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  image: AssetImage(
                    'Images_Izambia/trend.jpg',
                  ),
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),
                    BlendMode.darken,
                  ),

                  //colorFilter: ColorFilters.greyscale,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingPage()));
                    },
                  ),

                  height: 350,
                  fit: BoxFit.cover,
                ),


                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "SHOPPING",
                        style: GoogleFonts.roboto(
                          //fontFamily: 'Roboto',
                            fontSize: 34,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      OutlinedButton(
                        child: Text('SHOP NOW'),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            textStyle: GoogleFonts.roboto(
                              fontSize: 15,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(1))),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () =>
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (
                                        context) => const ShoppingPage())),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]));

  Widget buildImageCard1() =>
      Card(
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage(
                'Images_Izambia/Homepage.jpg',
              ),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),

              //colorFilter: ColorFilters.greyscale,
              child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TourismApp()),
            );
          }),

              height: 350,
              fit: BoxFit.fitHeight,
            ),
            Center(
                child: Column(
                  children: <Widget>[
                  Text(
                  "TOURISM",
                  style: GoogleFonts.roboto(
                      fontSize: 34,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                OutlinedButton(
                  child: Text('EXPLORE'),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    textStyle: GoogleFonts.roboto(
                      fontSize: 15,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(1))),
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () =>
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TourismApp())),
                )
          ],
        ),
      )

  ,

  ]

  ,

  )

  ,

  ]

  )

  );


  Widget buildImageCard3() =>
      Card(
          elevation: 8,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  image: AssetImage(
                    'Images_Izambia/fourth.jpg',
                  ),
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),
                    BlendMode.darken,
                  ),

                  //colorFilter: ColorFilters.greyscale,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Resturants()));
                    },
                  ),

                  height: 350,
                  fit: BoxFit.fitHeight,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "RESTURANT",
                        style: GoogleFonts.roboto(
                            fontSize: 34,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      OutlinedButton(
                        child: Text('SEARCH'),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            textStyle: GoogleFonts.roboto(
                              fontSize: 15,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(1))),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () =>
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Resturants())),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]));


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
