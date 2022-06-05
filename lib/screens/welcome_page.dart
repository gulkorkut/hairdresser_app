import 'package:flutter/material.dart';
import 'package:salon_booking/widget/text_widget.dart';
import 'home_screen.dart';
import 'login_page.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/gaia.jpg"),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: AppText(
                  size: 50,
                  color: Colors.black,
                  text: "Gaia Design",
                  weight: FontWeight.w800,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 160,
            left: 20,
            right: 20,
            child: AppButton(
              text: "Login as Employee",
              bgColor: Colors.black,
              textColor: Colors.white,
              borderRadius: 30,
              fontSize: 23,
              fontWeight: FontWeight.bold,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
            ),
          ),

          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: AppButton(
              text: "Login as Customer",
              bgColor: Colors.black,
              textColor: Colors.white,
              borderRadius: 30,
              fontSize: 23,
              fontWeight: FontWeight.bold,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}