import 'package:flutter/material.dart';
import 'login_input_page.dart';
import 'signup_page.dart';



class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: TabBarView(
                          children: [LoginInputScreen(), SignUpInputScreen()]),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white10,
                    boxShadow: [
                      BoxShadow(offset: Offset(0, 4), color: Colors.white)
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                height: MediaQuery.of(context).size.height * 0.4,
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/gaia.jpg",
                        width: 150,
                        height: 150,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: TabBar(
                          tabs: [
                            Tab(
                              text: "Login",
                            ),
                            Tab(
                              text: "Sign-Up",
                            )
                          ],
                          labelColor: Colors.black,
                          indicatorColor: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}