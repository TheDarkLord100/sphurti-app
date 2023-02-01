import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sphurti_app/models/contact.dart';
import 'package:sphurti_app/models/guidelines.dart';
import 'package:sphurti_app/models/sports_model.dart';

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
    });

    for (Map<String, dynamic> element in sportsData) {
      SportsModel model = SportsModel.fromMap(element);
      switch (model.sport) {
        case 'cricket':
          SportsModel.cricket = model;
          break;
        case 'football':
          SportsModel.football = model;
          break;
        case 'basketball':
          SportsModel.basketball = model;
          break;
        case 'badminton':
          SportsModel.badminton = model;
          break;
        case 'volleyball':
          SportsModel.volleyball = model;
          break;
        case 'table Tennis':
          SportsModel.tableTennis = model;
          break;
      }
    }
  }

  Future<void> getGeneralGuidelines() async {
    await FirebaseFirestore.instance
        .collection('sports')
        .doc('guidelines')
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      Guidelines.generalGuidelines =
          Guidelines.fromList(documentSnapshot['guidelines']);
    });
  }

  Future<void> getContactDetails() async {
    await FirebaseFirestore.instance
        .collection('contact')
        .doc('faculty_contact')
        .get()
        .then((DocumentSnapshot doc) {
      log(doc.data().toString());
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      for (Map<String, dynamic> element in data['faculty_contact']) {
        Contact.facultyContact.add(Contact.fromMap(element));
      }
    });

    await FirebaseFirestore.instance
        .collection('contact')
        .doc('student_contact')
        .get()
        .then((DocumentSnapshot doc) {
      log(doc.data().toString());
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      for (Map<String, dynamic> element in data['student_contact']) {
        Contact.studentContact.add(Contact.fromMap(element));
      }
    });

    log(Contact.facultyContact.toString());
    log(Contact.studentContact.toString());

  }
}
