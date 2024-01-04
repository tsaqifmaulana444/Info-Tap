import 'package:absensi_mobile_app/components/absen/list_absen_guru.dart';
import 'package:absensi_mobile_app/components/login.dart';
import 'package:absensi_mobile_app/methods/api.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class HomeGuru extends StatefulWidget {
  const HomeGuru({super.key});

  @override
  State<HomeGuru> createState() => _HomeGuruState();
}

class KelasComponent extends StatelessWidget {
  final String? nama_kelas;
  final int? jumlah_siswa;
  const KelasComponent(
      {required this.nama_kelas, required this.jumlah_siswa, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AllAbsenGuru()),
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      '$nama_kelas',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF141414),
                          fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        "Wali Kelas : Mamat Surahmat S.Ag",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF343434),
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                  transform: Matrix4.translationValues(0, -5, 0),
                  child: Column(
                    children: [
                      Text(
                        '$jumlah_siswa',
                        style: const TextStyle(
                            color: Color(0xFF40A84A),
                            fontSize: 29,
                            fontWeight: FontWeight.w800),
                      ),
                      const Text(
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
    );
  }
}

class _HomeGuruState extends State<HomeGuru> {
  String? username;
  String? token;
  
  @override
  void initState() {
    super.initState();
    initialize();
  }

  Future<void> initialize() async{
    print('initializing...');
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? storedUsername = preferences.getString('username');
    String? storedToken = preferences.getString('token');
        setState(() {
      username = storedUsername;
      token = storedToken;
    });    
    print('initial berhasil');
    print(token);
    print(username);
  }

  Future<void> logout() async {
    print('logout..');
    final res = await API().postRequest(route: '/auth/logout', data:{}, token: '$token');
    final jsonData = json.decode(res.body);
    try {
      print(jsonData['success']);
      if(jsonData['success']){
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
                    color: const Color(0xFFBE2322),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                          child:  Row(
                            children: [
                              GestureDetector(
                                onTap: logout,
                                child: const Icon(
                                  Icons.logout_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                               Spacer(),
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
                              "Daftar Kelas Diajar",
                              style: TextStyle(
                                  color: Color(0xFF343434),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Column(
                            children: [
                              KelasComponent(nama_kelas: 'XII PPLG 1', jumlah_siswa: 37),
                              KelasComponent(nama_kelas: 'XII IPA 1', jumlah_siswa: 33),
                              KelasComponent(nama_kelas: 'XII IPS 1', jumlah_siswa: 35),
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
