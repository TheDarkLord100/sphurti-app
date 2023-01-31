import 'package:flutter/material.dart';
import 'package:sphurti_app/screens/navigation_screen.dart';
import 'package:sphurti_app/services/api_client.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  void loadData(BuildContext context) async {
    final ApiClient api = ApiClient();
    await api.getSportsData();
    //ignore:use_build_context_synchronously
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const NavBarScreen()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    loadData(context);
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
