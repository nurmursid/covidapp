import 'package:flutter/material.dart';

class IdData extends StatelessWidget {
  const IdData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 120,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(width: 6),
              ),
              child: Image.asset("assets/images/indonesian_flag.png",
                  height: 130,
                  width: 160,
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fill),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            ),
            Text("Indonesia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            SizedBox(
              height: 2,
            ),
            Text("Covid-19 Data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
            SizedBox(
              height: 6,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Text(
                                    "Terkonfirmasi",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  Text("6.650.244",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Color.fromARGB(
                                              255, 162, 161, 73))),
                                ],
                              )),
                        ),
                        Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Text(
                                    "Dirawat",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  Text("60.581",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Color.fromARGB(
                                              255, 65, 109, 192))),
                                ],
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Text(
                                    "Sembuh",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  Text("6.429.987",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Color.fromARGB(
                                              255, 76, 168, 86))),
                                ],
                              )),
                        ),
                        Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Text(
                                    "Meninggal",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  Text("159.676",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Color.fromARGB(
                                              255, 162, 75, 75))),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
