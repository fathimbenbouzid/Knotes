import 'package:flutter/material.dart';

class CustomPassTextField extends StatelessWidget {
  final TextEditingController _controller;
  const CustomPassTextField(
      {super.key, required TextEditingController controller})
      : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: "********",
          hintStyle: const TextStyle(
            fontSize: 18,
            fontFamily: "Inter",
            fontWeight: FontWeight.w400,
            color: Color(0xffC8C5CB),
          ),
          fillColor: const Color(0xffC8C5CB),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xff6A3EA1))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xffC8C5CB)))),
    );
  }
}
