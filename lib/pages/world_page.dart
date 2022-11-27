import 'package:covidapp/models/world_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/world_provider.dart';

class WorldPage extends StatelessWidget {
  const WorldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List<World>> getWorld() async {
      return Provider.of<WorldProvider>(context).getWorld();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('World Data Covid'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/world.png", fit: BoxFit.contain),
            SizedBox(
              height: 16,
            ),
            FutureBuilder<List<World>>(
              future: getWorld(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<World>> snapshot) {
                // AsyncSnapshot<Your object type>
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    return Column(
                      children: snapshot.data!
                          .map((world) => WorldCard(
                              context,
                              world.TotalConfirmed,
                              world.TotalDeaths,
                              world.TotalRecovered))
                          .toList(),
                    );
                  } // snapshot.data  :- get your object which is pass from your downloadData() function
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Card WorldCard(BuildContext context, int TotalConfirmed, int TotalDeaths,
      int TotalRecovered) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Color.fromARGB(255, 255, 255, 255),
      elevation: 5,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Text("Total Confirmed : " + TotalConfirmed.toString()),
          SizedBox(
            height: 8,
          ),
          Text("Total Deaths : " + TotalDeaths.toString()),
          SizedBox(
            height: 8,
          ),
          Text("Total Recovered : " + TotalRecovered.toString()),
          SizedBox(
            height: 8,
          ),
        ]),
      ),
    );
  }
}
