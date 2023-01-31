import 'package:flutter/cupertino.dart';

class SportsModel {
  final String sport;
  final List<String> schedule;
  final bool registrationIsLive;
  final List<String> rules;
  final int prizeMoney;
  final String registrationLink;
  final int registrationFees;
  final List<SportsCoordinators> coordinators;

  SportsModel(
      {required this.sport,
      required this.schedule,
      required this.registrationIsLive,
      required this.rules,
      required this.prizeMoney,
      required this.registrationLink,
      required this.registrationFees,
      required this.coordinators});

  static List<String> toList(List<dynamic> list) {
    List<String> newList = [];
    for (var element in list) {
      newList.add(element.toString());
    }
    return newList;
  }

  factory SportsModel.fromMap(Map<String, dynamic> map) {
    List<SportsCoordinators> coordinators = [];
    for (Map<String, dynamic> element in map['coordinators']) {
      coordinators.add(SportsCoordinators.fromMap(element));
    }
    return SportsModel(
        sport: map['name'],
        schedule: SportsModel.toList(map['schedule']),
        registrationIsLive: map['registration_is_live'],
        rules: SportsModel.toList(map['rules']),
        prizeMoney: map['prize_money'],
        registrationLink: map['registration_link'],
        registrationFees: map['registration_fees'],
        coordinators: coordinators);
  }
}

class SportsCoordinators {
  final String name;
  final String phone;

  SportsCoordinators(this.name, this.phone);

  factory SportsCoordinators.fromMap(Map<String, dynamic> map) {
    return SportsCoordinators(map['name'], map['phone']);
  }
}
