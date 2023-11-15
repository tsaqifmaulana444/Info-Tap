import 'package:absensi_mobile_app/home/home.dart';
import 'package:flutter/material.dart';

import 'detail_news.dart';

class AllNews extends StatefulWidget {
  const AllNews({super.key});

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
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
                          MaterialPageRoute(builder: (context) => const Home()),
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
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: const Text(
                        "Berita Terkini",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const DetailNews()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 4.8,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "Siapapun Capresnya, Jangan Pilih Ganjar",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 7),
                              child: const Text(
                                "Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya...",
                                style: TextStyle(
                                    color: Color(0xFF6D6D6D),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 7),
                              child: const Row(
                                children: [
                                  Text(
                                    "SMK TARUNA BHAKTI",
                                    style: TextStyle(
                                        color: Color(0xFF6D6D6D),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 6),
                                    child: Icon(Icons.circle, size: 7, color: Color(0xFF6D6D6D),),
                                  ),
                                  Text(
                                    "20 Februari 2022",
                                    style: TextStyle(
                                        color: Color(0xFF6D6D6D),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          color: const Color(0xFFD5D5D5),
                          width: MediaQuery.of(context).size.width,
                          height: 1
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 4.8,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              "Siapapun Capresnya, Jangan Pilih Ganjar",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya...",
                              style: TextStyle(
                                  color: Color(0xFF6D6D6D),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Row(
                              children: [
                                Text(
                                  "SMK TARUNA BHAKTI",
                                  style: TextStyle(
                                      color: Color(0xFF6D6D6D),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Icon(Icons.circle, size: 7, color: Color(0xFF6D6D6D),),
                                ),
                                Text(
                                  "20 Februari 2022",
                                  style: TextStyle(
                                      color: Color(0xFF6D6D6D),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          color: const Color(0xFFD5D5D5),
                          width: MediaQuery.of(context).size.width,
                          height: 1
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 4.8,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              "Siapapun Capresnya, Jangan Pilih Ganjar",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Text(
                              "Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya, Jangan Pilih Ganjar. Siapapun Capresnya...",
                              style: TextStyle(
                                  color: Color(0xFF6D6D6D),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: const Row(
                              children: [
                                Text(
                                  "SMK TARUNA BHAKTI",
                                  style: TextStyle(
                                      color: Color(0xFF6D6D6D),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Icon(Icons.circle, size: 7, color: Color(0xFF6D6D6D),),
                                ),
                                Text(
                                  "20 Februari 2022",
                                  style: TextStyle(
                                      color: Color(0xFF6D6D6D),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          color: const Color(0xFFD5D5D5),
                          width: MediaQuery.of(context).size.width,
                          height: 1
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
