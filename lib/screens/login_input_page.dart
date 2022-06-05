import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:salon_booking/widget/text_widget.dart';

class LoginInputScreen extends StatefulWidget {
  LoginInputScreen();

  @override
  _LoginInputScreenState createState() => _LoginInputScreenState();
}

class _LoginInputScreenState extends State<LoginInputScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: AppInputText(
                controller: emailController,
                enable: true,
                title: "Email address",
                hint: "mail@mail.com",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: AppInputText(
                controller: passwordController,
                enable: true,
                title: "Password",
                hint: "*********",
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: (){
                  },

                  child: const AppText(
                    color: Colors.blueAccent,
                    size: 17,
                    weight: FontWeight.w600,
                    text: "Forgot passcode",
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            AppButton(
                bgColor: Colors.black,
                borderRadius: 30,
                fontSize: 23,
                fontWeight: FontWeight.w600,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                text: "Login",
                textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
