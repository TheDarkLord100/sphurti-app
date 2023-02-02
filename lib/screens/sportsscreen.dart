import 'package:flutter/material.dart';
import 'package:sphurti_app/models/sports_model.dart';

class Sports extends StatelessWidget {
  const Sports({super.key, required this.sports});
  final SportsModel sports;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sports.sport),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Price money ${sports.prizeMoney}'),
            ),
            ListTile(
              title: Text('registration fees ${sports.registrationFees}'),
            ),
            ElevatedButton(
                onPressed: () {
                  debugPrint(sports.registrationLink);
                },
                child: Text('registration fees')),
            ListTile(
              title: Text(''),
            ),
            ListTile(
              title: Text('Guidelines'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return Text(sports.rules[index]);
              },
              itemCount: sports.rules.length,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder : (context, index) {
                return Column(
                  children: [
                    Text(sports.coordinators[index].name),
                     Text(sports.coordinators[index].phone),
                  ],
                  
                );
              },
              itemCount: sports.coordinators.length,
            ),
          ],
        ),
      ),
    );
  }
}
