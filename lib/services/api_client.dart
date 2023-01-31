import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sphurti_app/services/sports_model.dart';

class ApiClient {
  Future<void> getSportsData() async {
    List<dynamic> sportsData = [];
    Map<String, dynamic> result;
    await FirebaseFirestore.instance
        .collection('sports')
        .doc('sports')
        .get()
        .then((DocumentSnapshot snap) {
      result = snap.data() as Map<String, dynamic>;
      sportsData = result['details'];
      log(sportsData.toString());
    });

    final List<SportsModel> sportsList = [];

    for (Map<String, dynamic> element in sportsData) {
      sportsList.add(SportsModel.fromMap(element));
    }
    log(sportsList.toString());
  }
}
