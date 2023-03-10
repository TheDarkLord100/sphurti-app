import 'package:flutter/material.dart';
import 'package:sphurti_app/screens/navigation_screen.dart';
import 'package:sphurti_app/services/api_client.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isLoading = true;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  void loadData() async {
    final ApiClient api = ApiClient();
    await api.getSportsData();
    await api.getGeneralGuidelines();
    await api.getContactDetails();
    await api.getInviteDetails();
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (isLoading) ? const Image(image: AssetImage('Assets/background/loading_splash.png'),
    fit: BoxFit.fitWidth,) :
    const NavBarScreen();
  }
}
