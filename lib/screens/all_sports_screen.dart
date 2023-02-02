import 'package:flutter/material.dart';
import 'package:sphurti_app/models/sports_model.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> sportsImages = [
      'Assets/images/basketball.png',
      'Assets/images/badminton.png',
      'Assets/images/cricket.png',
      'Assets/images/football.png',
      'Assets/images/table_tennis.jpg',
      'Assets/images/volleyball.png'
    ];
    // final List<SportsModel> data = [
    //   SportsModel.basketball,
    //   SportsModel.badminton,
    //   SportsModel.cricket,
    //   SportsModel.football,
    //   SportsModel.tableTennis,
    //   SportsModel.volleyball,
    // ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sports"),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Stack(
            children: [Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Image.asset(
                sportsImages[index],
                fit: BoxFit.cover,
                color: Colors.black45,
                colorBlendMode: BlendMode.darken,
                height: 250,
                width: MediaQuery.of(context).size.width,
              ),
            ),]
          );
        },
      ),
    );
  }
}
