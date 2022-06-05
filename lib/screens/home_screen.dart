import 'package:flutter/material.dart';
import 'package:salon_booking/Calendar/Calendar_main.dart';
import 'package:salon_booking/screens/detail_screen.dart';

const stylistData = [
  {
    'stylistName': 'Cameron Jones',
    'profession': 'For Wedding',
    'rating': '4.8',
    'rateAmount': '56',
    'imgUrl': 'assets/stylist1.png',
    'bgColor': Color(0xffFFF0EB),
  },
  {
    'stylistName': 'Max Robertson',
    'profession': 'Best Hair Cut',
    'rating': '4.7',
    'rateAmount': '80',
    'imgUrl': 'assets/stylist2.png',
    'bgColor': Color(0xffEBF6FF),
  },
  {
    'stylistName': 'Beth Watson',
    'profession': 'Makeup Artist',
    'rating': '4.7',
    'rateAmount': '70',
    'imgUrl': 'assets/stylist3.png',
    'bgColor': Color(0xffFFF3EB),
  }
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0c0c),
      appBar: AppBar(
        backgroundColor: const Color(0xff121421),
        actions: <Widget>[

          IconButton(
            onPressed: () {

            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          "Home Page",
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[

              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Hair Stylist',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        StylistCard(stylistData[0]),
                        StylistCard(stylistData[1]),
                        StylistCard(stylistData[2]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StylistCard extends StatelessWidget {
  final stylist;
  StylistCard(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: stylist['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: -30,
            child: Image.asset(
              stylist['imgUrl'],
              width: MediaQuery.of(context).size.width * 0.60,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  stylist['stylistName'],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  stylist['profession'],
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[

                  ],
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(stylist),
                    ));
                  },
                  color: Color(0xff4E295B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'View Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
