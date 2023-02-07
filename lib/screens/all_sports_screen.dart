import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sphurti_app/models/sports_model.dart';
import 'package:sphurti_app/screens/sports_screen.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SportsModel> data = [
        SportsModel.basketball,
        SportsModel.badminton,
        SportsModel.cricket,
        SportsModel.football,
        SportsModel.tableTennis,
        SportsModel.volleyball,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sports"),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Sports(sports: data[index],imageUrl: data[index].thumbnail)));
            },
            child: Stack(children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Image.network(
                  data[index].thumbnail,
                  fit: BoxFit.cover,
                  color: Colors.black45,
                  colorBlendMode: BlendMode.darken,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
