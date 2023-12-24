import 'package:absensi_mobile_app/components/absen/list_absen_guru.dart';
import 'package:flutter/material.dart';

class HomeGuru extends StatefulWidget {
  const HomeGuru({super.key});

  @override
  State<HomeGuru> createState() => _HomeGuruState();
}

class _HomeGuruState extends State<HomeGuru> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF5F5F5),
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xFFBE2322),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.logout_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              Spacer(),
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: const Text(
                                "Selamat Datang, Jamal VII",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 18),
                              child: const Text(
                                "Telusuri SMK Taruna Bhakti Melalui Ponselmu",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 185),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                            child: const Text(
                              "Total Kelas Diajar : 20",
                              style: TextStyle(
                                  color: Color(0xFF343434),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: const Text(
                              "Dafta Kelas Diajar",
                              style: TextStyle(
                                  color: Color(0xFF343434),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AllAbsenGuru()),
                                  );
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xFFD5D5D5),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 23),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "XII IPA 1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF141414),
                                                    fontSize: 16),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 5),
                                                child: const Text(
                                                  "Wali Kelas : Mamat Surahmat S.Ag",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFF343434),
                                                      fontSize: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                            transform:
                                                Matrix4.translationValues(
                                                    0, -5, 0),
                                            child: const Column(
                                              children: [
                                                Text(
                                                  "33",
                                                  style: TextStyle(
                                                      color: Color(0xFF40A84A),
                                                      fontSize: 29,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  "Siswa Aktif",
                                                  style: TextStyle(
                                                    color: Color(0xFF40A84A),
                                                    fontSize: 13,
                                                  ),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AllAbsenGuru()),
                                  );
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xFFD5D5D5),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 23),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "XII IPA 1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF141414),
                                                    fontSize: 16),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 5),
                                                child: const Text(
                                                  "Wali Kelas : Mamat Surahmat S.Ag",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFF343434),
                                                      fontSize: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                            transform:
                                                Matrix4.translationValues(
                                                    0, -5, 0),
                                            child: const Column(
                                              children: [
                                                Text(
                                                  "33",
                                                  style: TextStyle(
                                                      color: Color(0xFF40A84A),
                                                      fontSize: 29,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  "Siswa Aktif",
                                                  style: TextStyle(
                                                    color: Color(0xFF40A84A),
                                                    fontSize: 13,
                                                  ),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AllAbsenGuru()),
                                  );
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xFFD5D5D5),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 23),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "XII IPA 1",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF141414),
                                                    fontSize: 16),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 5),
                                                child: const Text(
                                                  "Wali Kelas : Mamat Surahmat S.Ag",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFF343434),
                                                      fontSize: 12),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                            transform:
                                                Matrix4.translationValues(
                                                    0, -5, 0),
                                            child: const Column(
                                              children: [
                                                Text(
                                                  "33",
                                                  style: TextStyle(
                                                      color: Color(0xFF40A84A),
                                                      fontSize: 29,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  "Siswa Aktif",
                                                  style: TextStyle(
                                                    color: Color(0xFF40A84A),
                                                    fontSize: 13,
                                                  ),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
