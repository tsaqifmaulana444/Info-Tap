import 'package:absensi_mobile_app/components/absen/detail_absen.dart';
import 'package:absensi_mobile_app/home/home_guru.dart';
import 'package:flutter/material.dart';

class AllAbsenGuru extends StatefulWidget {
  const AllAbsenGuru({super.key});

  @override
  State<AllAbsenGuru> createState() => _AllAbsenGuruState();
}

class _AllAbsenGuruState extends State<AllAbsenGuru> {
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
                            MaterialPageRoute(builder: (context) => HomeGuru()),
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
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Data Absensi Kelas",
                                style: TextStyle(
                                    color: Color(0xFF6E6E6E),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "XII IPA 1",
                                style: TextStyle(
                                    color: Color(0xFF6E6E6E),
                                    fontSize: 15,),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "2020/02/20",
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 15,),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
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
                                            "Ali Baba",
                                            style: TextStyle(
                                                color: Color(0xFF6E6E6E),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              "07:00:04",
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
                                  const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 25, 0, 5),
                                        child: Row(
                                          children: [
                                            Icon(Icons.check,
                                                color: Color(0xFF40A84A)),
                                            SizedBox(width: 7),
                                            Text(
                                              "Approve",
                                              style: TextStyle(
                                                  color: Color(0xFF40A84A),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.close,
                                              color: Color(0xFFCC3D3D)),
                                          SizedBox(width: 7),
                                          Text(
                                            "Reject",
                                            style: TextStyle(
                                                color: Color(0xFFCC3D3D),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
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
                                            "Ali Baba",
                                            style: TextStyle(
                                                color: Color(0xFF6E6E6E),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              "07:00:04",
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
                                  const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 25, 0, 5),
                                        child: Row(
                                          children: [
                                            Icon(Icons.check,
                                                color: Color(0xFF40A84A)),
                                            SizedBox(width: 7),
                                            Text(
                                              "Approve",
                                              style: TextStyle(
                                                  color: Color(0xFF40A84A),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.close,
                                              color: Color(0xFFCC3D3D)),
                                          SizedBox(width: 7),
                                          Text(
                                            "Reject",
                                            style: TextStyle(
                                                color: Color(0xFFCC3D3D),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                        ],
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
                                            "Ali Baba",
                                            style: TextStyle(
                                                color: Color(0xFF6E6E6E),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text(
                                              "07:00:04",
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
                                  const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 25, 0, 5),
                                        child: Row(
                                          children: [
                                            Icon(Icons.check,
                                                color: Color(0xFF40A84A)),
                                            SizedBox(width: 7),
                                            Text(
                                              "Approve",
                                              style: TextStyle(
                                                  color: Color(0xFF40A84A),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.close,
                                              color: Color(0xFFCC3D3D)),
                                          SizedBox(width: 7),
                                          Text(
                                            "Reject",
                                            style: TextStyle(
                                                color: Color(0xFFCC3D3D),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                        ],
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
