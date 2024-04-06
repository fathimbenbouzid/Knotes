import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:knotesapp/Widgets/buttons/custom_headers.dart';

import '../Widgets/buttons/custom_gmaillog_btn.dart';
import '../Widgets/buttons/custom_signup_btn.dart';
import '../Widgets/buttons/divider.dart';
import '../Widgets/custom_email_textfield.dart';
import '../Widgets/custom_fullname_textfield.dart';
import '../Widgets/custom_pass_textfield.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupState();
}

class _SignupState extends State<SignupView> {
  final _controllerEmail = TextEditingController();

  final _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const HeaderRegister(),
                const SizedBox(height: 16),
                const HeaderTwo(
                  tittle: 'And start taking notes',
                ),
                const SizedBox(
                  height: 32,
                ),
                const EmailHeader(tittle: 'Full Name'),
                const SizedBox(height: 12),
                const CustomNameTextField(),
                const SizedBox(
                  height: 32,
                ),
                const EmailHeader(tittle: 'Email Address'),
                const SizedBox(
                  height: 12,
                ),
                CustomEmTextField(controller: _controllerEmail),
                const SizedBox(
                  height: 32,
                ),
                const EmailHeader(tittle: 'Password'),
                const SizedBox(
                  height: 12,
                ),
                CustomPassTextField(
                  controller: _controllerPassword,
                ),
                const SizedBox(
                  height: 32,
                ),
                const EmailHeader(tittle: 'Retype Password'),
                const SizedBox(
                  height: 12,
                ),
                CustomPassTextField(
                  controller: _controllerPassword,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomSignupBtn(
                  emcontroller: _controllerEmail,
                  pascontroller: _controllerPassword,
                ),
                const SizedBox(
                  height: 16,
                ),
                const DividerWidget(),
                const SizedBox(
                  height: 16,
                ),
                const CustomEmaBtn(),
                const SizedBox(
                  height: 15,
                ),
                Center(
                    child: DontHaveAcc(
                  tittle: "Already have an account? Login here",
                )),
              ],
            ),
          )),
    );
  }
}
