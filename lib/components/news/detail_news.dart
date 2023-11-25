import 'package:absensi_mobile_app/components/news/all_news.dart';
import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  const DetailNews({super.key});

  @override
  State<DetailNews> createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
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
                          MaterialPageRoute(builder: (context) => const AllNews()),
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
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                    ),
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
                        const Text("Ini berita keren"),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Icon(Icons.account_circle_rounded, size: 25, color: Color(0xFF6D6D6D),),
                            ),
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
                        const Text("This story come from a young boy who living in Merauke, a city in Indonesia. He has some potential in machine learning, but unfortunately his environment didn’t support him to exploring"),
                        const Text("This story come from a young boy who living in Merauke, a city in Indonesia. He has some potential in machine learning, but unfortunately his environment didn’t support him to exploring"),
                        const Text("This story come from a young boy who living in Merauke, a city in Indonesia. He has some potential in machine learning, but unfortunately his environment didn’t support him to exploring"),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 4.8,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        const Text("Doc: nothing"),
                        const Text("This story come from a young boy who living in Merauke, a city in Indonesia. He has some potential in machine learning, but unfortunately his environment didn’t support him to exploring"),
                        const Text("Baca Juga: Ular Masuk Rumah")
                      ],
                    ),
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
