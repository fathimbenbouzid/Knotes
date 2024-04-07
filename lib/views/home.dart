import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePagek(),
    const PageTwo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      debugPrint('Item tapped: $index');
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        backgroundColor: const Color(0xff6A3EA1),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: SizedBox(
        height: 84,
        child: BottomAppBar(
          elevation: 55,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 52,
                height: 64,
                child: Column(children: [
                  IconButton(
                      onPressed: () => _onItemTapped(0),
                      icon: _selectedIndex == 0
                          ? SvgPicture.asset(
                              "assets/icons/home (1).svg",
                              height: 32,
                            )
                          : SvgPicture.asset(
                              "assets/icons/home.svg",
                              height: 32,
                            )),
                  const Text("Home"),
                ]),
              ),
              SizedBox(
                  width: 52,
                  height: 64,
                  child: Column(children: [
                    IconButton(
                        onPressed: () {
                          _onItemTapped(1);
                        },
                        icon: _selectedIndex == 1
                            ? SvgPicture.asset(
                                "assets/icons/clipboard-check.svg",
                                height: 32,
                              )
                            : SvgPicture.asset(
                                "assets/icons/clipboard-check(1).svg",
                                height: 32,
                              )),
                    const Text("Finish")
                  ])),
              const SizedBox(
                width: 88,
              ),
              const SecrchIcon(),
              const SettingsIcon(),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      height: 64,
      child: Column(children: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Settings');
            },
            icon: SvgPicture.asset(
              "assets/icons/cog.svg",
              height: 32,
            )),
        const Text("Settings")
      ]),
    );
  }
}

class SecrchIcon extends StatelessWidget {
  const SecrchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      height: 64,
      child: Column(children: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Search');
            },
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              height: 32,
            )),
        const Text("Search")
      ]),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Page two appear");
    return const Center(
      child: Text(
        'Page Two',
        style: TextStyle(
          fontSize: 54,
        ),
      ),
    );
  }
}

class HomePagek extends StatelessWidget {
  const HomePagek({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("home page is showon");
    return SizedBox(
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
          const StartText(),
          const SizedBox(
            height: 16,
          ),
          const PreStartText(),
        ],
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
