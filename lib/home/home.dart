import 'package:absensi_mobile_app/components/absen/list_absen.dart';
import 'package:absensi_mobile_app/components/login.dart';
import 'package:absensi_mobile_app/components/news/all_news.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:absensi_mobile_app/methods/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Link extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final Widget href;

  const Link({required this.title, required this.color, required this.icon, required this.href, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => href),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: color,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 15, 10, 30),
              width: 39,
              height: 39,
              decoration: BoxDecoration(
                border: Border.all(
                  color: color,
                  width: 0.7,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title,
                style: TextStyle(
                    color: color, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogComponent extends StatelessWidget {
  final String? date;
  final bool tap;
  const LogComponent({required this.date, required this.tap, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$date",
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF343434),
                        fontSize: 14),
                  ),
                  Text(
                    tap ? "Tap In" : "Tap Out",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(tap ? 0xFF3C90CF : 0xFFCC3D3D),
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Color(tap ? 0xFF40A84A : 0xFFCC3D3D),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                tap ? Icons.check : Icons.close,
                color: Color(0xFFFFFFFF),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? username;
  String? token;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  Future<void> initialize() async {
    print('initializing...');
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? storedUsername = preferences.getString('username');
    String? storedToken = preferences.getString('token');
    setState(() {
      username = storedUsername;
      token = storedToken;
    });

    final res = await API().getRequest(route: '/absen', token: '$token');
    final jsonData = json.decode(res.body);
    try {
      print(jsonData);
      print(username);
      print(token);
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<void> logout() async {
    print('logout..');
    final res = await API()
        .postRequest(route: '/auth/logout', data: {}, token: '$token');
    final jsonData = json.decode(res.body);
    try {
      print(jsonData['success']);
      if (jsonData['success']) {
        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

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
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: logout,
                                child: const Icon(
                                  Icons.logout_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
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
                              child: Text(
                                'Selamat Datang, $username',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
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
                                Link(title: 'Absensi', color: Color(0xFF3C90CF), icon: Icons.accessibility_sharp, href: AllAbsen()),
                                Link(title: 'Info SPP', color: Color(0xFFE1CD19), icon: Icons.accessibility_sharp, href: AllAbsen()),
                                Link(title: 'Berita Kita', color: Color(0xFF767676), icon: Icons.accessibility_sharp, href: AllNews()),
                                Link(title: 'Cek Absen', color: Color(0xFF141414), icon: Icons.accessibility_sharp, href: AllNews()),
                                
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
                              LogComponent(
                                  date: 'Senin, 20 Februari 2022', tap: true),
                              LogComponent(
                                  date: 'Selasa, 21 Februari 2022', tap: true),
                              LogComponent(
                                  date: 'Rabu, 22 Februari 2022', tap: false),
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
                                    height: MediaQuery.of(context).size.height /
                                        4.8,
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
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 7),
                                    child: const Text(
                                      "Ini berita keren Ini berita kerenIni berita kerenIni berita kerenIni berita kerenIni berita keren Ini berita keren...",
                                      style: TextStyle(
                                          color: Color(0xFF6D6D6D),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6),
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
                                  height: 1),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height /
                                        4.8,
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
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 7),
                                    child: const Text(
                                      "ini berita keren. ini berita keren. ini berita keren. ini...",
                                      style: TextStyle(
                                          color: Color(0xFF6D6D6D),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6),
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
                                  height: 1),
                              const Text(
                                "Baca Lebih Lengkap Di Halaman Berita Kita",
                                style: TextStyle(
                                    color: Color(0xFF6D6D6D),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              )
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
