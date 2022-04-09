import 'package:flutter/material.dart';

class ButtonOne extends StatelessWidget {
  const ButtonOne({Key? key, required this.text, required this.onButtonPressed}) : super(key: key);

  final String text;
  final Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 320,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            primary: const Color(0xFFDFB497),
            onPrimary: Colors.white),
        onPressed: onButtonPressed,
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: 'Poppins', fontSize: 23, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
