import 'package:flutter/material.dart';
import 'package:knotesapp/Widgets/buttons/divider.dart';

import '../Widgets/buttons/custom_gmaillog_btn.dart';
import '../Widgets/buttons/custom_login_btn.dart';
import '../Widgets/custom_pass_textfield.dart';
import '../Widgets/buttons/custom_headers.dart';
import '../Widgets/custom_email_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(
                height: 133,
              ),
              const HeaderLets(),
              const SizedBox(height: 12),
              const HeaderTwo(tittle: 'And notes your idea'),
              const SizedBox(
                height: 32,
              ),
              const EmailHeader(tittle: "Email Address"),
              const SizedBox(height: 12),
              CustomEmTextField(controller: _controllerEmail),
              const SizedBox(
                height: 32,
              ),
              const EmailHeader(tittle: "Password"),
              const SizedBox(height: 12),
              CustomPassTextField(
                controller: _controllerPassword,
              ),
              const SizedBox(height: 12),
              const ForgetPassword(),
              const SizedBox(height: 40),
              CustomLoginBtn(
                  emcontroller: _controllerEmail,
                  pascontroller: _controllerPassword),
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
                      tittle: "Don’t have any account? Register here,")),
            ],
          ),
        ),
      ),
    );
  }
}
