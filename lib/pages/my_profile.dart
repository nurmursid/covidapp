import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 56,
              backgroundImage: AssetImage('assets/images/iqbal_removebg.png'),
            ),
            Text(
              "Nurmursid Iqbal Hertanto",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "21120120140049",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                color: Colors.indigo[200],
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                      "Halo guys! Selamat datang di aplikasi Covid-19 Live Data saya. Terima kasih sudah berkunjung semoga sehat selalu!"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
