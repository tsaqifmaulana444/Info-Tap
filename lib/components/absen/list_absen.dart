import 'package:absensi_mobile_app/components/absen/detail_absen.dart';
import 'package:absensi_mobile_app/home/home.dart';
import 'package:flutter/material.dart';

class AllAbsen extends StatefulWidget {
  const AllAbsen({super.key});

  @override
  State<AllAbsen> createState() => _AllAbsenState();
}

class _AllAbsenState extends State<AllAbsen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Row(
                        children: [
                          const Text(
                            "Cek Abdsadassdensi",
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Text(
                                "Filter By",
                                style: TextStyle(
                                    color: Color(0xFF6E6E6E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: const Icon(
                                  Icons.sort_outlined,
                                  color: Color(0xFF6E6E6E),
                                  size: 24,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailAbsen()),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 6.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 14),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              "Tap In",
                                              style: TextStyle(
                                                  color: Color(0xFF6E6E6E),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Text(
                                                "Jum'at, 2 Februari 2022",
                                                style: TextStyle(
                                                    color: Color(0xFF6E6E6E),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Text(
                                                "Tepat Waktu",
                                                style: TextStyle(
                                                    color: Color(0xFF6E6E6E),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    const Row(
                                      children: [
                                        Icon(Icons.check,
                                            color: Color(0xFF40A84A)),
                                        SizedBox(width: 7),
                                        Text(
                                          "Berhasil",
                                          style: TextStyle(
                                              color: Color(0xFF40A84A),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 6.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Tap Out",
                                            style: TextStyle(
                                                color: Color(0xFF6E6E6E),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              "Jum'at, 2 Februari 2022",
                                              style: TextStyle(
                                                  color: Color(0xFF6E6E6E),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              "Tepat Waktu",
                                              style: TextStyle(
                                                  color: Color(0xFF6E6E6E),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  const Row(
                                    children: [
                                      Icon(Icons.check,
                                          color: Color(0xFF40A84A)),
                                      SizedBox(width: 7),
                                      Text(
                                        "Berhasil",
                                        style: TextStyle(
                                            color: Color(0xFF40A84A),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 6.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Tap In",
                                            style: TextStyle(
                                                color: Color(0xFF6E6E6E),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              "Jum'at, 2 Februari 2022",
                                              style: TextStyle(
                                                  color: Color(0xFF6E6E6E),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              "Tepat Waktu",
                                              style: TextStyle(
                                                  color: Color(0xFF6E6E6E),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  const Row(
                                    children: [
                                      Icon(Icons.check,
                                          color: Color(0xFF40A84A)),
                                      SizedBox(width: 7),
                                      Text(
                                        "Berhasil",
                                        style: TextStyle(
                                            color: Color(0xFF40A84A),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
