import 'package:absensi_mobile_app/home/home.dart';
import 'package:flutter/material.dart';

class AllNews extends StatefulWidget {
  const AllNews({super.key});

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFB3B3B3),
                          width: 0.7,
                        ),
                        borderRadius: const BorderRadius.all(
                            Radius.circular(30)),
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                Container(
                  child: const Row(
                    children: [
                      Text("Berita Terkini")
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
