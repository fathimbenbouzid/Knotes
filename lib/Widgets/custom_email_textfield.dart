import 'package:flutter/material.dart';

class CustomEmTextField extends StatefulWidget {
  final TextEditingController _controller;
  CustomEmTextField({super.key, required TextEditingController controller})
      : _controller = controller;

  Color borderColor = Colors.grey;
  @override
  State<CustomEmTextField> createState() => _CustomEmTextFieldState();
}

class _CustomEmTextFieldState extends State<CustomEmTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget._controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: "Example: johndoe@gmail.com",
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
              borderSide: BorderSide(color: widget.borderColor))),
    );
  }
}
