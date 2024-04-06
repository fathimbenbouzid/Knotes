import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:knotesapp/Widgets/buttons/custom_btn.dart';
import 'package:knotesapp/Widgets/custom_email_textfield.dart';

import '../Widgets/buttons/custom_headers.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/Login");
          },
          icon: SvgPicture.asset(
            "assets/icons/cheveron-left.svg",
            height: 30,
            color: const Color(0xff6A3EA1),
          ),
        ),
        title: const BackToLog(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(
              height: 300,
            ),
            const HeaderForget(),
            const SizedBox(
              height: 16,
            ),
            const HeaderTwo(
                tittle:
                    "Insert your email address to receive a code for creating a new password"),
            const SizedBox(
              height: 48,
            ),
            const EmailHeader(tittle: "Email Adress"),
            CustomEmTextField(controller: _controller),
            const SizedBox(
              height: 64,
            ),
            const SendCodeBtn(),
          ],
        ),
      ),
    ));
  }
}
