import 'package:absensi_mobile_app/components/absen/list_absen.dart';
import 'package:absensi_mobile_app/components/news/all_news.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                    color: const Color(0xFF1842A8),
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
                              margin: const EdgeInsets.symmetric(horizontal: 30),
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
                    // height: MediaQuery.of(context).size.height * 1.7,
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
                              "Jelajahi",
                              style: TextStyle(
                                  color: Color(0xFF343434),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 5.7,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const AllAbsen()),
                                    );
                                  },
                                  child: Container(
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: const Color(0xFF3C90CF),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 15, 10, 30),
                                          width: 39,
                                          height: 39,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0xFF3C90CF),
                                              width: 0.7,
                                            ),
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(30)),
                                          ),
                                          child: const Icon(
                                            Icons.accessibility_sharp,
                                            color: Color(0xFF3C90CF),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: const Text(
                                            "Absensi",
                                            style: TextStyle(
                                                color: Color(0xFF3C90CF),
                                                fontWeight: FontWeight.w700),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 15),
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xFFE1CD19),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 15, 10, 30),
                                        width: 39,
                                        height: 39,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFE1CD19),
                                            width: 0.7,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30)),
                                        ),
                                        child: const Icon(
                                          Icons.accessibility_sharp,
                                          color: Color(0xFFE1CD19),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: const Text(
                                          "Info SPP",
                                          style: TextStyle(
                                              color: Color(0xFFE1CD19),
                                              fontWeight: FontWeight.w700),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const AllNews()),
                                    );
                                  },
                                  child: Container(
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: const Color(0xFF767676),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 15, 10, 30),
                                          width: 39,
                                          height: 39,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0xFF767676),
                                              width: 0.7,
                                            ),
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(30)),
                                          ),
                                          child: const Icon(
                                            Icons.accessibility_sharp,
                                            color: Color(0xFF767676),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: const Text(
                                            "Berita Kita",
                                            style: TextStyle(
                                                color: Color(0xFF767676),
                                                fontWeight: FontWeight.w700),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const AllAbsen()),
                                    );
                                  },
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 15),
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: const Color(0xFF141414),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 15, 10, 30),
                                          width: 39,
                                          height: 39,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0xFF141414),
                                              width: 0.7,
                                            ),
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(30)),
                                          ),
                                          child: const Icon(
                                            Icons.accessibility_sharp,
                                            color: Color(0xFF141414),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: const Text(
                                            "Cek Absensi",
                                            style: TextStyle(
                                                color: Color(0xFF141414),
                                                fontWeight: FontWeight.w700),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: const Text(
                              "Log Absensi",
                              style: TextStyle(
                                  color: Color(0xFF343434),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
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
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 20),
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
                                              "Senin, 20 Februari 2022",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF343434),
                                                  fontSize: 14),
                                            ),
                                            Container(
                                              child: const Text(
                                                "Tap In",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF3C90CF),
                                                    fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF40A84A),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
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
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 20),
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
                                              "Senin, 20 Februari 2022",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF343434),
                                                  fontSize: 14),
                                            ),
                                            Container(
                                              child: const Text(
                                                "Tap In",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF3C90CF),
                                                    fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF40A84A),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
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
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 20),
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
                                              "Senin, 20 Februari 2022",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF343434),
                                                  fontSize: 14),
                                            ),
                                            Container(
                                              child: const Text(
                                                "Tap Out",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFFCC3D3D),
                                                    fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF40A84A),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                            child: const Text(
                              "Berita Terkini",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                                        "Ini berita keren",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                        ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 7),
                                    child: const Text(
                                        "Ini berita keren Ini berita kerenIni berita kerenIni berita kerenIni berita kerenIni berita keren Ini berita keren...",
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
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 6),
                                        child: Icon(
                                          Icons.circle,
                                          size: 7,
                                          color: Color(0xFF6D6D6D),
                                        ),
                                      ),
                                      Text(
                                        "20 Februari 2022",
                                        style: TextStyle(
                                            color: Color(0xFF6D6D6D),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
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
                                      "ini berita keren",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 7),
                                    child: const Text(
                                      "ini berita keren. ini berita keren. ini berita keren. ini...",
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
                              const Text(
                                  "Baca Lebih Lengkap Di Halaman Berita Kita",
                                style: TextStyle(
                                    color: Color(0xFF6D6D6D),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400
                                ),)
                            ],
                          )
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
