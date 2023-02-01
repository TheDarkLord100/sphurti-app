import 'package:flutter/material.dart';
import 'package:sphurti_app/models/sports_model.dart';
class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(SportsModel.cricket.sport));
    
  }
}