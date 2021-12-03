import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Navigators {
  final IconData icon;
  final String navTitle;
  final int id;

  Navigators({
    required this.icon,
    required this.navTitle,
    required this.id,
  });
}

List<Navigators> navList = [
  Navigators(icon: FluentIcons.home_12_filled, navTitle: "Home", id: 1),
  Navigators(
      icon: FluentIcons.inprivate_account_24_filled,
      navTitle: "Accounts",
      id: 2),
  Navigators(
      icon: FluentIcons.credit_card_toolbox_20_filled,
      navTitle: "cards",
      id: 3),
  Navigators(icon: FluentIcons.payment_24_filled, navTitle: "Payment", id: 4),
  Navigators(icon: FluentIcons.people_team_16_regular, navTitle: "Team", id: 5),
  Navigators(icon: FluentIcons.settings_16_filled, navTitle: "Settings", id: 6),
];

List<Navigators> navList2 = [
  Navigators(icon: FluentIcons.chat_help_20_filled, navTitle: "Help", id: 7),
  Navigators(
      icon: FluentIcons.arrow_step_back_16_filled, navTitle: "Logout", id: 8),
];

class FinActivity {
  final String activity;
  final String status;
  final int number;
  final int? cardNumber;
  final String? expiryDate;
  final int? cvv;

  FinActivity(
      {required this.activity,
      required this.status,
      required this.number,
      this.cardNumber,
      this.expiryDate,
      this.cvv});
}

// ignore: non_constant_identifier_names
List<FinActivity> Activities = [
  FinActivity(activity: "Basic Corporate", status: "Active", number: 2),
  FinActivity(activity: "Inventory Card", status: "Active", number: 3),
  FinActivity(activity: "Software subscription", status: "Active", number: 2),
  FinActivity(activity: "Travelling Card", status: "Active", number: 1),
  FinActivity(activity: "Project Cotana", status: "Inactive", number: 0),
];

FinActivity fins = FinActivity(
    activity: "Software Subscription",
    status: "Active",
    number: 2,
    cardNumber: 5004434455098035,
    expiryDate: "03/22",
    cvv: 565);
// FinDetailsMax finMax = FinDetailsMax(FinActivity(
//     activity: FinDetailsMax.activityDetails.activity,
//     status: FinDetailsMax.activityDetails.status));
