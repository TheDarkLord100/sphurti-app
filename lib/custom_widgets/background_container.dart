import 'package:flutter/material.dart';

Widget backgroundContainer(BuildContext context, {required Widget child, required String backgroundPath}) {
  return SingleChildScrollView(
    child: Container(
      width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height,
  padding: const EdgeInsets.symmetric(horizontal: 16),
  decoration: BoxDecoration(
  image: DecorationImage(
  image: AssetImage(backgroundPath),
  fit: BoxFit.cover),
  ),
  child: child,
  ));
}