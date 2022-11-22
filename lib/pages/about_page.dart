import 'package:covidapp/pages/covid_information.dart';
import 'package:covidapp/pages/my_profile.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CovidInformation()));
              },
              child: Container(
                alignment: Alignment(0.0, 0.0),
                width: 500,
                height: 150,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Column(children: [
                  Image.asset(
                    "assets/images/information.png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "Covid Information",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      fontSize: 16.0,
                    ),
                  )
                ]),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 234, 219),
                    border: Border.all(
                      color: Color.fromARGB(255, 159, 117, 38),
                      width: 5,
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
              },
              child: Container(
                alignment: Alignment(0.0, 0.0),
                width: 500,
                height: 150,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Column(children: [
                  Image.asset(
                    "assets/images/man.png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "My Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      fontSize: 16.0,
                    ),
                  )
                ]),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 234, 219),
                    border: Border.all(
                      color: Color.fromARGB(255, 159, 117, 38),
                      width: 5,
                    )),
              ),
            ),
          ],
        ));
  }
}
