import 'dart:convert';

import 'package:absensi_mobile_app/home/home_guru.dart';
import 'package:absensi_mobile_app/layout/mainlayout.dart';
import 'package:absensi_mobile_app/methods/api.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool? rememberMe = false;

  Future<Map<String, dynamic>> loginUser() async {
    final data = {
      'username': username.text.toString(),
      'password': password.text.toString(),
    };

    print('NIH DATA :${data}');
    final response = await API().postRequest(route: '/login', data: data, token: '');
    final jsonData = json.decode(response.body);

    try {
      if (jsonData['success'] == true) {
        print('success');
        Map<String, dynamic> userData = jsonData['data'];
        String token = userData['token'];
        String username = userData['username'];
        String type = userData['type'];

        SharedPreferences preferences = await SharedPreferences.getInstance();
        await preferences.setString('token', token);
        await preferences.setString('username', username);


        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => type == 'siswa' ? mainLayout() : HomeGuru()));

        return jsonData;
      } else {
        print(response.body);
        throw Exception('Failed to login');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
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
                        margin: const EdgeInsets.only(top: 45),
                        child: Column(
                          children: [
                            const Text(
                              "Sign In",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 23,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 4),
                              child: const Text(
                                "Sign In Untuk Melanjutkan",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 15,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width / 1.17,
                        height: MediaQuery.of(context).size.height / 1.6,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(9),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey, // Shadow color
                              offset: Offset(0, 2), // Offset to move the shadow
                              blurRadius: 4, // Spread of the shadow
                              spreadRadius: 0, // How far the shadow extends
                            ),
                          ],
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(22, 20, 22, 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Username",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Color.fromRGBO(20, 20, 20, 0.6),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 38,
                                      child: TextFormField(
                                        controller: username,
                                        decoration: const InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  20, 20, 20, 0.2),
                                            ),
                                          ),
                                          hintText: 'Masukkan Username Anda',
                                          hintStyle: TextStyle(
                                            color:
                                                Color.fromRGBO(20, 20, 20, 0.4),
                                          ),
                                          contentPadding: EdgeInsets.fromLTRB(
                                              15, 10, 15, 10),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 22),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Password",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Color.fromRGBO(20, 20, 20, 0.6),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 38,
                                      child: TextFormField(
                                        controller: password,
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  20, 20, 20, 0.2),
                                            ),
                                          ),
                                          hintText: 'Masukkan Password Anda',
                                          hintStyle: TextStyle(
                                            color:
                                                Color.fromRGBO(20, 20, 20, 0.4),
                                          ),
                                          contentPadding: EdgeInsets.fromLTRB(
                                              15, 10, 15, 10),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(22, 15, 22, 15),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: rememberMe,
                                          onChanged: (bool? newValue) {
                                            setState(() {
                                              rememberMe = newValue;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "Remember Me",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color:
                                                Color.fromRGBO(20, 20, 20, 0.5),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "Lupa Password?",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(20, 20, 20, 0.5),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.fromLTRB(22, 0, 22, 15),
                                child: TextButton(
                                  onPressed: () {
                                    loginUser();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xFF1842A8)),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(22, 5, 22, 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 12),
                                        height: 1,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.4,
                                        color: const Color.fromRGBO(
                                            20, 20, 20, 0.5),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Atau",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(20, 20, 20, 0.5),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 12),
                                        height: 1,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.6,
                                        color: const Color.fromRGBO(
                                            20, 20, 20, 0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.fromLTRB(22, 5, 22, 15),
                                child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xFFFFFFFF)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color:
                                              Color.fromRGBO(20, 20, 20, 0.5),
                                          width: 0.5,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.ac_unit,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Sign In With Google",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color:
                                                Color.fromRGBO(20, 20, 20, 0.4),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Text("Belum Punya Akun? Sign Up")
                            ],
                          ),
                        )),
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
