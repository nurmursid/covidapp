import 'package:flutter/material.dart';

class CovidInformation extends StatelessWidget {
  const CovidInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Information'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            ),
            Icon(
              Icons.coronavirus,
              size: 100,
              color: Colors.red,
            ),
            SizedBox(
              height: 8,
            ),
            Text("Apa itu Covid-19",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                color: Colors.indigo[200],
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Corona Virus Disease 2019 atau yang biasa disingkat COVID-19 adalah penyakit menular yang disebabkan oleh SARS-CoV-2, salah satu jenis koronavirus. Penderita COVID-19 dapat mengalami demam, batuk kering, dan kesulitan bernafas.",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
