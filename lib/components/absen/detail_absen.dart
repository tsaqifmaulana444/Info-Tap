import 'package:absensi_mobile_app/components/absen/list_absen.dart';
import 'package:flutter/material.dart';

class DetailAbsen extends StatefulWidget {
  const DetailAbsen({super.key});

  @override
  State<DetailAbsen> createState() => _DetailAbsenState();
}

class _DetailAbsenState extends State<DetailAbsen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const AllAbsen()),
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
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                          child: const Row(
                            children: [
                              Text(
                                "Detail Absensi",
                                style: TextStyle(
                                  color: Color(0xFF6E6E6E),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Tap In",
                                style: TextStyle(
                                  color: Color(0xFF3C90CF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Nama Siswa",
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: const Text(
                                      "Jamal Anthony John VII",
                                      style: TextStyle(
                                        color: Color(0xFF6E6E6E),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                      "Kelas",
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: const Text(
                                        "XII IPA 1",
                                      style: TextStyle(
                                        color: Color(0xFF6E6E6E),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Tanggal Absensi",
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: const Text(
                                      "2020-02-20",
                                      style: TextStyle(
                                        color: Color(0xFF6E6E6E),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Status",
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: const Text(
                                      "Berhasil",
                                      style: TextStyle(
                                        color: Color(0xFF6E6E6E),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Jam Tap Kartu",
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: const Text(
                                      "07:01:09",
                                      style: TextStyle(
                                        color: Color(0xFF6E6E6E),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Keterangan",
                                    style: TextStyle(
                                      color: Color(0xFF6E6E6E),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: const Text(
                                      "Tepat Waktu",
                                      style: TextStyle(
                                        color: Color(0xFF6E6E6E),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
