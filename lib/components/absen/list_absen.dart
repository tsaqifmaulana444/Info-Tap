import 'package:absensi_mobile_app/components/absen/detail_absen.dart';
import 'package:absensi_mobile_app/home/home.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:absensi_mobile_app/methods/api.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AbsenComponent extends StatelessWidget {
  final bool tap;
  final String date;  
  final bool time;
  final bool status;

  const AbsenComponent({required this.tap, required this.date, required this.time, required this.status, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      margin: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () => {
                                        Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailAbsen()),
                                )
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 6.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          tap ? "Tap In" : "Tap Out",
                          style: const TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                       Expanded(
                          flex: 1,
                          child: Text(
                            "$date",
                            style: const TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            time ? "Tepat Waktu" : "Terlambat",
                            style: const TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                ),
                const Spacer(),
                 Row(
                  children: [
                    Icon(
                      status? Icons.check : Icons.close,
                      color: Color(status? 0xFF40A84A : 0xFFCC3D3D)
                      ),
                    const SizedBox(width: 7),
                    Text(
                      status? "Berhasil" : "Gagal",
                      style: TextStyle(
                          color: Color(status? 0xFF40A84A : 0xFFCC3D3D),
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AllAbsen extends StatefulWidget {
  const AllAbsen({super.key});

  @override
  State<AllAbsen> createState() => _AllAbsenState();
}

class _AllAbsenState extends State<AllAbsen> {
  String selectedValue = 'today'; // Default selected value

  void onFilterChanged(String newValue) {
    print('Selected Value: $newValue');
    // You can perform additional actions here based on the selected value
  }

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
                            "Cek Absensi",
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
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          child: DropdownButton<String>(
            value: selectedValue,
            icon: const Icon(
              Icons.sort_outlined,
              color: Color(0xFF6E6E6E),
              size: 24,
            ),
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
                onFilterChanged(selectedValue);
              });
            },
            items: <String>['today', 'yesterday', 'this week', 'last week']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    )
                          ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          const AbsenComponent(tap: true, date: "Jum'at, 2 Februari 2022", time: true, status: true),
                          const AbsenComponent(tap: false, date: "Kamis, 3 Februari 2022", time: false, status: false),
                          const AbsenComponent(tap: true, date: "Sabtu, 3 Februari 2022", time: false, status: true),
                          const AbsenComponent(tap: false, date: "minggu, 3 Februari 2022", time: false, status: false),
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
