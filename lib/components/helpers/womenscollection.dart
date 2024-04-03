import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:izambia01/components/pages/main.dart';
import 'package:izambia01/components/pages/resturants.dart';
import 'package:izambia01/components/pages/shoppingPage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../others/Tourism.dart';
import '../pages/webview.dart';

class WomensCollection extends StatefulWidget {
  const WomensCollection({Key? key}) : super(key: key);

  @override
  State<WomensCollection> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<WomensCollection> {
  _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    //const url="https://bantu.com.au/";
    if (!await launchUrl(uri, mode: LaunchMode.platformDefault)) {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
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
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisSize: MainAxisSize.max,

            children: <Widget>[
              CarouselSlider(
                items: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('Images_Izambia/n/scapgirl1.jpeg'),
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken,),

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('Images_Izambia/n/scapgirl2.jpeg'),
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken,),

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('Images_Izambia/n/scapgirl3.jpeg'),
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken,),

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
              SizedBox(
                //Use of SizedBox
                height: 40,
              ),
              Center(
                child: Text(
                  "Womens Latest Fashion",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      //height: 3.0,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                //Use of SizedBox
                height: 15,
              ),
              Center(
                  child: Column(children: <Widget>[
                Container(
                  width: 200,
                  height: 5,
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      " ",
                      style: GoogleFonts.roboto(
                          fontSize: 28,
                          //height: 5.0,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                  ),
                ),
              ])),
              SizedBox(
                //Use of SizedBox
                height: 15,
              ),
              Center(
                child: Text(
                  "Local Quality Designs",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      //height: 3.0,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                //Use of SizedBox

                height: 30,
                width: 300.0,
              ),
              SizedBox(
                //Use of SizedBox
                height: 10,
              ),
              Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontFamily: 'AirbnbCerealBold',
                      fontSize: 30,
                      //height: 3.0,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                //Use of SizedBox
                height: 40,
              ),
              buildImageCards11(),
              SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              buildImageCards2(),
              SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              buildImageCards3(),
              SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              buildImageCards4(),
              SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              buildImageCards5(),
              SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              buildImageCards6(),
              SizedBox(
                //Use of SizedBox
                height: 25,
              ),
              SizedBox(
                //Use of SizedBox
                height: 20,
              ),

              Footer(),
            ]));
  }

  Widget buildImageCards11() => Card(
      elevation: 8,
      color: Colors.brown[50],
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Ink.image(
                image: AssetImage(
                  'Images_Izambia/n/dress.jpeg',
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),

                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-dresses/'),
                      ),
                    );
                  },
                ),
                //colorFilter: ColorFilters.greyscale,
                height: 300,
                fit: BoxFit.cover,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "SHOP DRESSES",
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
                                WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-dresses/'),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ));

  Widget buildImageCards2() => Card(
      elevation: 8,
      color: Colors.brown[50],
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Ink.image(
                image: AssetImage(
                  'Images_Izambia/n/blouse.jpeg',
                ),

                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-blouses-tunics/'),
                      ),
                    );
                  },
                ),
                //colorFilter: ColorFilters.greyscale,
                height: 300,
                fit: BoxFit.cover,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "BLOUSES",
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
                                WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-blouses-tunics/'),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ));

  Widget buildImageCards3() => Card(
      elevation: 8,
      color: Colors.brown[50],
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Ink.image(
                image: AssetImage(
                  'Images_Izambia/a.jpeg',
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),

                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewPage(url: 'https://www.siku.izambia.net/women/w-shoes/'),
                      ),
                    );
                  },
                ),
                //colorFilter: ColorFilters.greyscale,
                height: 300,
                fit: BoxFit.cover,
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
        ],
      ));

  Widget buildImageCards4() => Card(
      elevation: 8,
      color: Colors.brown[50],
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Ink.image(
                image: AssetImage(
                  'Images_Izambia/n/skirts.jpeg',
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),

                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-skirts/'),
                      ),
                    );
                  },
                ),
                //colorFilter: ColorFilters.greyscale,
                height: 300,
                fit: BoxFit.cover,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "SHOP SKIRTS",
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
                                WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-skirts/'),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ));

  Widget buildImageCards5() => Card(
      elevation: 8,
      color: Colors.brown[50],
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Ink.image(
                image: AssetImage(
                  'Images_Izambia/n/jackets.jpeg',
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-jackets/'),
                      ),
                    );
                  },
                ),
                //colorFilter: ColorFilters.greyscale,
                height: 300,
                fit: BoxFit.cover,
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
                                WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-jackets/'),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ));



  Widget buildImageCards6() => Card(
      elevation: 8,
      color: Colors.brown[50],
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Ink.image(
                image: AssetImage(
                  'Images_Izambia/n/tousers.jpeg',
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewPage(url: 'https://www.siku.izambia.net/men/m-clothing/m-pullovers-cardigans/'),
                      ),
                    );
                  },
                ),

                //colorFilter: ColorFilters.greyscale,
                height: 300,
                fit: BoxFit.fitWidth,
              ),
              Center(
                child: Column(
                  children: <Widget>[

                    SizedBox(
                      //Use of SizedBox
                      height: 5,
                    ),
                    SizedBox(
                      //Use of SizedBox
                      height: 10,
                    ),

                  ],
                ),
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
                                WebViewPage(url: 'https://www.siku.izambia.net/women/w-clothing/w-trousers/'),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ));

  Widget buildQouteCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        border: Border.all(
          width: 0,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Get in Touch',
            style: GoogleFonts.roboto(
                fontSize: 34,
                color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'izambia.net',
            style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.white),
          ),
          Text(
            'Lusaka.Zambia',
            style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Safe Shopping',
            style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Terms of Service',
            style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ),
  );





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


