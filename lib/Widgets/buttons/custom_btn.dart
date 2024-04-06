import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/Login');
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(54),
          ),
          backgroundColor: Colors.white,
        ),
        child: const Text(
          "Let’s Get Started",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            color: Color(0xff6A3EA1),
          ),
        ),
      ),
    );
  }
}

class SendCodeBtn extends StatelessWidget {
  const SendCodeBtn({super.key});
  final snackBar = const SnackBar(
    content: Text("Not yet"),
    duration: Duration(seconds: 1),
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(54),
          ),
          backgroundColor: const Color(0xff6A3EA1),
        ),
        child: const Text(
          "Send Code",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
