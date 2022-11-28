import 'package:flutter/material.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            ),
            Image.asset(
              "assets/images/covid.png",
              height: 100,
              width: 100,
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.fitWidth,
            ),
            Text("Covid App",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            SizedBox(
              height: 8,
            ),
            Text("v.1.0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                      "Aplikasi ini berisi confirmed data covid-19 dari 6 negara, yaitu Indonesia, Malaysia, Thailand, Singapora, Filipina, dan Vietnam.",
                      textAlign: TextAlign.justify),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
