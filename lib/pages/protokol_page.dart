import 'package:flutter/material.dart';

class ProtokolPage extends StatelessWidget {
  const ProtokolPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Protokol Kesehatan'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/protokol_covid2.png",
                fit: BoxFit.contain),
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
                      "Patuhi Protokol Kesehatan Untuk Mencegah Covid-19!",
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
