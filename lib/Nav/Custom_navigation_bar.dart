import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBAr extends StatefulWidget {
  const CustomBottomNavBAr({super.key});

  @override
  State<CustomBottomNavBAr> createState() => _CustomBottomNavBArState();
}

class _CustomBottomNavBArState extends State<CustomBottomNavBAr> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 84, // Set the desired height of the bottom navigation bar
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
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

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page One'),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page Two'),
    );
  }
}
