import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        //empty notes page
        body: SizedBox(
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 153,
              ),
              Image.asset(
                "assets/images/homeEmpty.png",
                height: 240,
                width: 240,
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/Nav");
                  },
                  child: StartText()),
              const SizedBox(
                height: 16,
              ),
              PreStartText(),
            ],
          ),
        ),
      ),
    );
  }
}

class PreStartText extends StatelessWidget {
  const PreStartText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''
      Every big step start with small step.
      Notes your first idea and start
      your journey!
      ''',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Inter",
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class StartText extends StatelessWidget {
  const StartText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Start Your Journey",
      style: TextStyle(
        fontFamily: "Inter",
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
