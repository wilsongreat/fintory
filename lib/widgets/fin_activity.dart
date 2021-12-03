// ignore_for_file: unnecessary_string_interpolations

import 'package:fintory_app/styles/styles.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class FinDetails extends StatefulWidget {
  final FinActivity finDetails;
  const FinDetails({Key? key, required this.finDetails}) : super(key: key);

  @override
  State<FinDetails> createState() => _FinDetailsState();
}

class _FinDetailsState extends State<FinDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 35.0, left: 35, right: 35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5.0),
                        color: Styles.greenTileColor,
                        child: const Icon(Icons.credit_card),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.finDetails.activity,
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Manage",
                          style: Styles.subTitleStyle2.copyWith(
                              fontSize: 13,
                              color: Styles.bgColor,
                              fontWeight: FontWeight.w100),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Styles.bgColor,
                        )
                      ],
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(width: 1, color: Styles.bgColor)),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _finActivity(
                      label: "card Number",
                      title: widget.finDetails.cardNumber.toString(),
                      icon: Icons.copy),
                  _finActivity(
                    label: "Expiry Date",
                    title: widget.finDetails.expiryDate.toString(),
                  ),
                  _finActivity(
                      label: "CVV",
                      title: widget.finDetails.cvv.toString(),
                      icon: Icons.remove_red_eye_outlined),
                  _finActivity(
                    label: "STATUS",
                    title: widget.finDetails.status,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Spending Limits",
                    style: Styles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Styles.bgColor),
                  ),
                  _spendingDetails(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Divider(
                    color: Styles.subTextColor,
                    thickness: 0.2,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Divider(
                    color: Styles.subTextColor,
                    thickness: 0.2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Issued access",
                        style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Styles.bgColor),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            color: Styles.subTextColor.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(3.0)),
                        child: Center(
                          child: Text(
                            2.toString(),
                            style: Styles.subTitleStyle1.copyWith(
                                fontSize: 10,
                                color: Styles.bgColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _issuedAccess(
                    png: "assets/images/images.jpg",
                    name: "Wilson Great",
                    purchaseTitle: "Tesla electric",
                    costPerYear: "\$1,649.00/year",
                  ),
                  _issuedAccess(
                      name: "Milly Mills",
                      purchaseTitle: "Tesla electric",
                      costPerYear: "\$59.00/month"),
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Styles.subTextColor,
                    thickness: 0.2,
                  ),
                  Text(
                    "Recent Transactions",
                    style: Styles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Styles.bgColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _recentTransaction(
                      name: "DropBox",
                      date: "Dec 20 2021",
                      costPerYear: "-\$299.00",
                      subPlan: "monthly",
                      png: "assets/images/dropbox.png"),
                  _recentTransaction(
                      name: "Zendesk",
                      date: "Dec 19 2021",
                      costPerYear: "-\$1490.00",
                      subPlan: "annual",
                      png: "assets/images/Zendesk.jpg"),
                  const SizedBox(height: 30.0)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

_finActivity({required String label, required String title, IconData? icon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: Styles.subTitleStyle2,
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Text(
            title,
            style: Styles.subTitleStyle1.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
            iconSize: 20.0,
            color: Styles.bgColor,
          )
        ],
      )
    ],
  );
}

_spendingDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "DAILY TRANSACTION LIMIT",
                style: Styles.subTitleStyle2.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Stack(
                  children: [
                    Container(
                      height: 10,
                      width: double.infinity,
                      color: Styles.greenTileColor.withOpacity(0.06),
                    ),
                    Container(
                      height: 10,
                      width: 40,
                      color: Styles.cardColor,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$199.00  spent of \$2000.00",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Styles.cardColor.withOpacity(0.7)),
                    ),
                    Text("10%",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            color: Styles.cardColor.withOpacity(0.7)))
                  ],
                ),
              )
            ],
          )),
      Flexible(
          flex: 3,
          child: Container(
            height: 100,
            width: 300,
            color: Styles.greenTileColor.withOpacity(0.06),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, bottom: 10.0),
                      child: Text(
                        "Estimated amount \n\nfor this month",
                        style: Styles.headLineStyle2.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Text(
                        "\$2,920.00",
                        style: Styles.headLineStyle2
                            .copyWith(fontSize: 14, color: Styles.cardColor),
                      ),
                    )
                  ],
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Styles.greenTileColor.withOpacity(0.08),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                          )),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_outlined),
                        iconSize: 20,
                        color: Styles.cardColor,
                      ),
                    ))
              ],
            ),
          )),
    ],
  );
}

_issuedAccess({
  String? png,
  required String name,
  required String purchaseTitle,
  required String costPerYear,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  color: Styles.activityBg, shape: BoxShape.circle),
              child: png == null
                  ? Center(
                      child: Text(
                        "MM",
                        style: Styles.subTitleStyle2.copyWith(fontSize: 12.0),
                      ),
                    )
                  : ClipOval(
                      child: Image(
                        image: AssetImage(png),
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(name,
                style: Styles.headLineStyle2.copyWith(
                  fontSize: 12,
                )),
          ],
        ),
        Text(
          purchaseTitle,
          style: Styles.subTitleStyle2.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
        Row(
          children: [
            Text(
              costPerYear,
              style: Styles.headLineStyle2.copyWith(
                fontSize: 13,
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Styles.bgColor,
                ))
          ],
        )
      ],
    ),
  );
}

_recentTransaction(
    {required String name,
    required String date,
    required String costPerYear,
    required String subPlan,
    required String png}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // CircleAvatar(
            //   radius: 20,
            //   child: Image.asset(
            //     png,
            //     fit: BoxFit.fill,
            //   ),
            // ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(png),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(name,
                style: Styles.headLineStyle2.copyWith(
                  fontSize: 12,
                )),
          ],
        ),
        Row(
          children: [
            Text(
              date,
              style: Styles.subTitleStyle2.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Styles.subTextColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(3.0)),
              child: Center(
                child: Text(
                  subPlan,
                  style: Styles.subTitleStyle1.copyWith(
                      fontSize: 10,
                      color: Styles.bgColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              costPerYear,
              style: Styles.headLineStyle2.copyWith(
                fontSize: 13,
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Styles.bgColor,
                )),
          ],
        )
      ],
    ),
  );
}
