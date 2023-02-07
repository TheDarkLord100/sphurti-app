import 'package:flutter/material.dart';
import 'package:sphurti_app/custom_widgets/background_container.dart';
class LiveResultsScreen extends StatelessWidget {
  const LiveResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backgroundContainer(
      context,
      backgroundPath: 'Assets/background/background_2.png',
      child: const Center(
        child: Text('This feature will be available soon!!'),
      )
    );
  }
}