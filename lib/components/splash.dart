import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: Leaning(),
                    child: Container(
                      color: const Color(0xFF1842A8),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.6,
                      child: Container(
                        margin: const EdgeInsets.only(top: 70),
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                  color: Colors.green,
                                  width: 200,
                                  height: 150,
                                  child: const Center(
                                    child: Text("logo"),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                    "Starbhak Tap",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Color(0xFFFFFFFF)
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 550),
                    child: Center(
                      child: Column(
                        children: [
                          const Text(
                            "Official Mobile App",
                            style: TextStyle(fontSize: 13),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              "SMK TARUNA BHAKTI",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Leaning extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 140);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}
