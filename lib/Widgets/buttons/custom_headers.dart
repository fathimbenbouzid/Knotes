import 'package:flutter/material.dart';

class HeaderLets extends StatelessWidget {
  const HeaderLets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Let’s Login",
      style: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
    );
  }
}

class HeaderTwo extends StatelessWidget {
  const HeaderTwo({super.key, required this.tittle});
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}

class EmailHeader extends StatelessWidget {
  const EmailHeader({super.key, required this.tittle});
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/Forget');
        },
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 16,
            decoration: TextDecoration.underline,
            color: Color(0xff6A3EA1),
          ),
        ));
  }
}

class DontHaveAcc extends StatelessWidget {
  DontHaveAcc({super.key, required this.tittle});
  String tittle = "";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (tittle == "Already have an account? Login here") {
            Navigator.pushReplacementNamed(context, '/Login');
          } else {
            Navigator.pushReplacementNamed(context, '/Signup');
          }
        },
        child: Text(
          tittle,
          style: const TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xff6A3EA1),
          ),
        ));
  }
}

class HeaderRegister extends StatelessWidget {
  const HeaderRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Register",
      style: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
    );
  }
}

class BackToLog extends StatelessWidget {
  const BackToLog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/Signup');
        },
        child: const Text(
          'Back to Login',
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xff6A3EA1),
          ),
        ));
  }
}

class HeaderForget extends StatelessWidget {
  const HeaderForget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Forgot Password",
      style: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
    );
  }
}
