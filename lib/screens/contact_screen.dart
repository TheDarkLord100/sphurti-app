import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
        title: Text("CONTACTUS"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Faculty:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'Assets/images/football.png',
                        width: 200,
                        height: 150,
                      ),
                      Text("RS Chauhan"),
                      Text("7031341194")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'Assets/images/table_tennis.jpg',
                        width: 180,
                        height: 150,
                      ),
                      Text("RS Chauhan"),
                      Text("7031341194")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'Assets/images/football.png',
                        width: 200,
                        height: 150,
                      ),
                      Text("RS Chauhan"),
                      Text("7031341194")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'Assets/images/table_tennis.jpg',
                        width: 180,
                        height: 150,
                      ),
                      Text("RS Chauhan"),
                      Text("7031341194")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Student Coordinators",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'Assets/images/football.png',
                        width: 200,
                        height: 150,
                      ),
                      Text("RS Chauhan"),
                      Text("7031341194")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'Assets/images/table_tennis.jpg',
                        width: 180,
                        height: 150,
                      ),
                      Text("RS Chauhan"),
                      Text("7031341194")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'Assets/images/football.png',
                        width: 200,
                        height: 150,
                      ),
                      Text("RS Chauhan"),
                      Text("7031341194")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'Assets/images/table_tennis.jpg',
                        width: 180,
                        height: 150,
                      ),
                      Text("RS Chauhan"),
                      Text("7031341194")
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
