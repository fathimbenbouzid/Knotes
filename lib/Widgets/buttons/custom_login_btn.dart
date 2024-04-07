import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLoginBtn extends StatelessWidget {
  final TextEditingController emcontroller;
  final TextEditingController pascontroller;
  const CustomLoginBtn(
      {super.key, required this.emcontroller, required this.pascontroller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/Home');
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(54),
            ),
            backgroundColor: const Color(0xff6A3EA1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: 102,
              ),
              SvgPicture.asset(
                'assets/icons/arrow-narrow-right.svg',
                width: 24,
                height: 24,
                color: Colors.white,
              )
            ]),
          )),
    );
  }
}
