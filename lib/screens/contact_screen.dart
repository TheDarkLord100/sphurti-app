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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("CONTACT US"),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/images/Contact_BG.png"),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 135,
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
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                      width: 170,
                      margin: const EdgeInsets.all(13),
                      height: 202,
                      child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/football.png',
                          ),
                          Text(
                            "RS Chauhan",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          ),
                          Text(
                            "7031341194",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                      width: 170,
                      margin: const EdgeInsets.all(13),
                      height: 202,
                      child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/football.png',
                          ),
                          Text(
                            "RS Chauhan",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          ),
                          Text(
                            "7031341194",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                      width: 170,
                      margin: const EdgeInsets.all(13),
                      height: 202,
                      child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/football.png',
                          ),
                          Text(
                            "RS Chauhan",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          ),
                          Text(
                            "7031341194",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                      width: 170,
                      margin: const EdgeInsets.all(13),
                      height: 202,
                      child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/football.png',
                          ),
                          Text(
                            "RS Chauhan",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          ),
                          Text(
                            "7031341194",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
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
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                      width: 170,
                      margin: const EdgeInsets.all(13),
                      height: 202,
                      child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/football.png',
                          ),
                          Text(
                            "RS Chauhan",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          ),
                          Text(
                            "7031341194",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      margin: const EdgeInsets.all(13),
                      height: 202,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/football.png',
                          ),
                          Text(
                            "RS Chauhan",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          ),
                          Text(
                            "7031341194",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                      width: 170,
                      margin: const EdgeInsets.all(13),
                      height: 202,
                      child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/football.png',
                          ),
                          Text(
                            "RS Chauhan",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          ),
                          Text(
                            "7031341194",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25.0,
                          ),
                        ],
                      ),
                      width: 170,
                      margin: const EdgeInsets.all(13),
                      height: 202,
                      child: Column(
                        children: [
                          Image.asset(
                            'Assets/images/football.png',
                          ),
                          Text(
                            "RS Chauhan",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          ),
                          Text(
                            "7031341194",
                            style: TextStyle(
                                backgroundColor: Colors.black,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
