import 'package:absensi_mobile_app/components/absen/detail_absen.dart';
import 'package:absensi_mobile_app/components/absen/list_absen.dart';
import 'package:absensi_mobile_app/components/news/all_news.dart';
import 'package:absensi_mobile_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// file
import '../home/home.dart';

class mainLayout extends StatefulWidget {
  const mainLayout({super.key});

  @override
  State<mainLayout> createState() => _mainLayoutState();
}

class _mainLayoutState extends State<mainLayout> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    WidgetsBinding.instance!.addObserver(this);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  int _currentIndex = 0;

  final List<String> _titles = [
    'Home',
    'Opsi 2',
    'Opsi 3',
    'Opsi 4',
  ];

  final List<Widget> _screens = [
    const Home(),
    const AllAbsen(),
    const AllNews(),
    const DetailAbsen(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(kBottomNavigationBarHeight + 5),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels:
                  true,
              showUnselectedLabels:
                  false, 
              selectedItemColor: Colors.blue, 
              unselectedItemColor: Colors.grey,
              selectedLabelStyle: GoogleFonts.mulish(
                color: Colors.blue,
                fontSize: 12,
              ),
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              currentIndex: _currentIndex,
              items: List.generate(
                _screens.length,
                (index) {
                  return BottomNavigationBarItem(
                    icon: Icon(
                      listOfIcons[index],
                      color: _currentIndex == index ? Colors.blue : Colors.grey,
                    ),
                    label: _titles[index],
                  );
                },
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(
                  milliseconds: 300), // Adjust duration as needed
              left: _currentIndex *
                      (MediaQuery.of(context).size.width / _screens.length) +
                  24.0, // Account for margin
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width / _screens.length -
                    50.0, // Account for margin
                height: 2, // Height of the underline
                color: Colors.blue, // Color of the underline
              ),
            ),
          ],
        ),
      ),
    );
  }
}
