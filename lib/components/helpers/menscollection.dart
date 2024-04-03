import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:izambia01/components/pages/main.dart';
import 'package:izambia01/components/pages/resturants.dart';
import 'package:izambia01/components/pages/shoppingPage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../others/Tourism.dart';
import '../pages/webview.dart';

class MensCollection extends StatefulWidget {
  const MensCollection({Key? key}) : super(key: key);

  @override
  State<MensCollection> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<MensCollection> {
  _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    //const url="https://bantu.com.au/";
    if (!await launchUrl(uri, mode: LaunchMode.inAppWebView)) {
      throw 'could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
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
        //title: Text('Izambia'),
        actions: <Widget>[

          //IconButton(
          //icon: Icon(Icons.shopping_bag, color: Colors.white),
          // onPressed: () {})
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
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




        ],
      )),
      body: ListView(
        //child: Stack(
        children: <Widget>[

          SizedBox(
            //Use of SizedBox
            height: 20,
          ),
          Center(
            child: Text(
              "Collection",
              style: TextStyle(
                  fontFamily: 'AirbnbCerealBold',
                  fontSize: 28,
                  //height: 3.0,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            //Use of SizedBox
            height: 10,
          ),
          buildImageCard(),
          SizedBox(
            //Use of SizedBox
            height: 20,
          ),

          buildImageCard1(),
          SizedBox(
            //Use of SizedBox
            height: 20,
          ),

          SizedBox(
            //Use of SizedBox
            height: 20,
          ),

          buildImageCard2(),
          SizedBox(
            //Use of SizedBox
            height: 30,
          ),
          buildImageCard3(),
          SizedBox(
            //Use of SizedBox
            height: 20,
          ),

          buildImageCard4(),
          SizedBox(
            //Use of SizedBox
            height: 20,
          ),
          buildImageCard5(),
          SizedBox(
            //Use of SizedBox
            height: 20,
          ),

          buildImageCard6(),
          SizedBox(
            //Use of SizedBox
            height: 20,
          ),
          Footer(),
        ],
      ),
    );
  }

  Widget buildImageCard() => Card(
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
                'Images_Izambia/n/suits.jpeg',
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
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-suits/'),
                    ),
                  );
                },
              ),

              height: 350,
              fit: BoxFit.fitWidth,
            ),

            //colorFilter: ColorFilters.greyscale,
            //child: InkWell(
            //onTap: () {},
            //),

            //),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "SHOP SUITS",
                    style: GoogleFonts.roboto(
                        //fontFamily: 'Roboto',
                        fontSize: 34,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 5,
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 10,
                  ),
                  OutlinedButton(
                    child: Text('SHOP NOW'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: ()  {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-suits/'),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ]));

  Widget buildImageCard1() => Card(
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
                'Images_Izambia/n/pullovers.jpeg',
              ),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),

              //colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: ()  {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-pullovers-cardigans/'),
                    ),
                  );
                },
              ),

              height: 350,
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "SHOP PULLOVERS",
                    style: GoogleFonts.roboto(
                        fontSize: 34,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 5,
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 10,
                  ),
                  OutlinedButton(
                    child: Text('SHOP NOW'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-pullovers-cardigans/'),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ]));




  Widget buildImageCard2() => Card(
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
                'Images_Izambia/n/shirts.jpeg',
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
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-suits/'),
                    ),
                  );
                },
              ),

              height: 350,
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "SHOP SHIRTS",
                    style: GoogleFonts.roboto(
                        fontSize: 34,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 5,
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 10,
                  ),
                  OutlinedButton(
                    child: Text('SHOP NOW'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-suits/'),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ]));

  Widget buildImageCard3() => Card(
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
                'Images_Izambia/n/trouserss.jpeg',
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
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-trousers/'),
                    ),
                  );
                },
              ),

              height: 350,
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "SHOP TROUSERS",
                    style: GoogleFonts.roboto(
                        fontSize: 34,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 5,
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 10,
                  ),
                  OutlinedButton(
                    child: Text('SHOP NOW'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-trousers/'),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ]));



  Widget buildImageCard4() => Card(
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
                'Images_Izambia/n/acce.jpeg',
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
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://www.siku.izambia.net/men/m-accessories/'),
                    ),
                  );
                },
              ),

              height: 350,
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "SHOP ACCESSORIES",
                    style: GoogleFonts.roboto(
                        fontSize: 30,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 5,
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 10,
                  ),
                  OutlinedButton(
                    child: Text('SHOP NOW'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WebViewPage(url: 'https://www.siku.izambia.net/men/m-accessories/'),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ]));

  Widget buildImageCard5() => Card(
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
                'Images_Izambia/n/shoess.jpeg',
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
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://www.siku.izambia.net/men/m-shoes/'),
                    ),
                  );
                },
              ),

              height: 350,
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "SHOP SHOES",
                    style: GoogleFonts.roboto(
                        fontSize: 34,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 5,
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 10,
                  ),
                  OutlinedButton(
                    child: Text('SHOP NOW'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WebViewPage(url: 'https://www.siku.izambia.net/men/m-shoes/'),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ]));

  Widget buildImageCard6() => Card(
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
                'Images_Izambia/n/jack.jpeg',
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
                    MaterialPageRoute(
                      builder: (context) =>
                          WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-jackets/'),
                    ),
                  );
                },
              ),

              height: 350,
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "SHOP JACKETS",
                    style: GoogleFonts.roboto(
                        fontSize: 34,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 5,
                  ),
                  SizedBox(
                    //Use of SizedBox
                    height: 10,
                  ),
                  OutlinedButton(
                    child: Text('SHOP NOW'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-jackets/'),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ]));



  Widget buildQouteCard() => Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          border: Border.all(
            //color: Colors.white,
            width: 0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              //Use of SizedBox
              height: 20,
            ),
            Text(
              'Get in Touch',
              style: GoogleFonts.roboto(
                  //fontFamily: 'Roboto',
                  fontSize: 34,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              //Use of SizedBox
              height: 30,
            ),
            Text(
              'izambia.net',
              style: GoogleFonts.roboto(
                  //fontFamily: 'Roboto',
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Lusaka.Zambia',
              style: GoogleFonts.roboto(
                  //fontFamily: 'Roboto',
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              //Use of SizedBox
              height: 30,
            ),
            Text(
              'Safe Shopping',
              style: GoogleFonts.roboto(
                  //fontFamily: 'Roboto',
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              //Use of SizedBox
              height: 20,
            ),
            Text(
              'Terms of Service',
              style: GoogleFonts.roboto(
                  //fontFamily: 'Roboto',
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              //Use of SizedBox
              height: 30,
            ),
          ],
        ),
      ));
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
            'izambia.net',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            'Lusaka.Zambia',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 30),
          Text(
            'Safe Shopping',
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