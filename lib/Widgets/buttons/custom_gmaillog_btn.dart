import 'package:flutter/material.dart';

class CustomEmaBtn extends StatelessWidget {
  const CustomEmaBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(54),
                side: const BorderSide(
                  color: Color(0xffC8C5CB),
                )),
            backgroundColor: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/Logo Image.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              const Text(
                "Login with Google",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff180E25),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
          )),
    );
  }
}
