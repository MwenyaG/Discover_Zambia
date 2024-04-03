import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:izambia01/components/helpers/menscollection.dart';
import 'package:izambia01/components/helpers/womenscollection.dart';
import 'package:izambia01/components/others/Tourism.dart';
import 'package:izambia01/components/pages/main.dart';
import 'package:izambia01/components/pages/resturants.dart';
import 'package:url_launcher/url_launcher.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
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
                  MaterialPageRoute(builder: (context) => ShoppingPage()));
            },
            child: ListTile(
              title: Text('Shopping'),
              leading: Icon(Icons.shopping_cart),
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




          SizedBox(
            //Use of SizedBox
            height: 30,
          ),


        ],
      )),

      body: ListView(
        //child: Stack(
        children: <Widget>[


          //here//

          //here

          //here
          SizedBox(
            //Use of SizedBox
            height: 30,
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
            height: 30,
          ),

          Footer(),
        ],
      ),

      //here
    );
  }

  Widget buildImageCard() => Card(
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
          children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage(
                'Images_Izambia/a.jpeg',
              ),
      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken,),


              //colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => WomensCollection()));
                },

              ),

              height: 350,
              fit: BoxFit.fitHeight,
            ),

            //Positioned.fill(
             // child: Opacity(
              //  opacity: 0.5,
                //child: Container(
                  //color: const Color(0xFF000000),
                //),
              //),
            //),

            //colorFilter: ColorFilters.greyscale,
            //child: InkWell(
            //onTap: () {},
            //),

            //),
            Center(
              child: Column(

                children: <Widget>[
                  Text(
                    "WOMENS COLLECTION",
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
                        foregroundColor: Colors.white, textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const WomensCollection())),
                  ),

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
                'Images_Izambia/gg.jpeg',
              ),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken,),


              //colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MensCollection()));
                },

              ),

              height: 350,
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "MENS COLLECTION",
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
                    child: Text('SHOP MEN'),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: GoogleFonts.roboto(
                          fontSize: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const MensCollection())),
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
            Text('izambia.net',
              style: GoogleFonts.roboto(
                //fontFamily: 'Roboto',
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text('Lusaka.Zambia',
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
            Text('Safe Shopping',
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
            Text('Terms of Service',
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
