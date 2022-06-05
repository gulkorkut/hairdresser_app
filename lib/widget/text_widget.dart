import 'package:flutter/material.dart';
class AppText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextAlign textAlign;
  const AppText(
      {required this.text, required this.color, required this.size, required this.weight, required this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(fontSize: size, color: color, fontWeight: weight),
    );
  }
}

class AppInputText extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String title;
  final bool enable;
  const AppInputText({required this.title, required this.controller, required this.hint, required this.enable});

  @override
  _AppInputTextState createState() => _AppInputTextState();
}

class _AppInputTextState extends State<AppInputText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: widget.title,
          color: Colors.black,
          size: 15,
          weight: FontWeight.w600,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          enabled: widget.enable,
          controller: widget.controller,
          decoration: InputDecoration(hintText: widget.hint),
        ),
      ],
    );
  }
}

class AppButton extends StatelessWidget {
  final String text;
  final double borderRadius;
  final Color bgColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onTap;
  const AppButton(
      {required this.text,
        required this.fontSize,
        required this.textColor,
        required this.bgColor,
        required this.onTap,
        required this.fontWeight,
        required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(borderRadius)),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor, fontSize: fontSize),
        ),
      ),
    );
  }
}