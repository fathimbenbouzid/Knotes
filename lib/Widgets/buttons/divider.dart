import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Or",
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
