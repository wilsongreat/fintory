import 'package:fintory_app/data.dart';
import 'package:fintory_app/styles/styles.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ActivityList extends StatefulWidget {
  const ActivityList({Key? key}) : super(key: key);

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Styles.activityBg,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Card list",
                  style: Styles.headLineStyle1,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FluentIcons.list_28_filled)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FluentIcons.add_12_filled)),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Activities.length,
                  itemBuilder: (context, int index) {
                    return _ActivityItem(
                        Activities[index].activity,
                        Activities[index].status,
                        Activities[index].number,
                        index);
                  }),
            ),
          )
          // ...Activities.map(
          //     (e) => _ActivityItem(e.activity!, e.status!, e.number!))
        ],
      ),
    );
  }

  Widget _ActivityItem(
      String activityTitle, String status, int issuedAccess, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => {
        setState(() {
          selectedIndex = index;
        })
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(left: 35.0, top: 10.0),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: isSelected ? Styles.cardColor : Styles.activityBg,
            border: Border(
              top: BorderSide(color: Styles.borderLineColor, width: 2.0),
              bottom: BorderSide(color: Styles.borderLineColor, width: 2.0),
            )),
        child: Stack(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activityTitle,
                      style: Styles.headLineStyle2.copyWith(
                          fontSize: 12,
                          color:
                              isSelected ? Styles.activityBg : Styles.bgColor),
                    ),
                    SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 2,
                          backgroundColor:
                              isSelected ? Styles.activityBg : Styles.bgColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          status,
                          style: Styles.headLineStyle2.copyWith(
                              fontSize: 10,
                              color: isSelected
                                  ? Styles.activityBg
                                  : Styles.bgColor),
                        )
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Row(
                      children: [
                        Text(
                          "Issued access :",
                          style: Styles.subTitleStyle2.copyWith(fontSize: 11),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(
                              color: Styles.subTextColor.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(3.0)),
                          child: Center(
                            child: Text(
                              issuedAccess.toString(),
                              style: Styles.subTitleStyle1.copyWith(
                                  fontSize: 10,
                                  color: isSelected
                                      ? Styles.activityBg
                                      : Styles.bgColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Positioned(
              right: 0,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 70,
                width: isSelected ? 80 : 70,
                decoration: BoxDecoration(
                    color: isSelected
                        ? Colors.white.withOpacity(.1)
                        : Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 18,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        // gradient: LinearGradient(
                        //   colors: [Colors.grey, Colors.white54],
                        //   begin: Alignment.centerLeft,
                        //   end: Alignment.centerRight,
                        // ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0),
                      child: Row(
                        children: [
                          Text(
                            "4556",
                            style: Styles.headLineStyle2.copyWith(
                                fontSize: 13,
                                color: isSelected
                                    ? Styles.activityBg
                                    : Styles.bgColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            selectedIndex == index
                ? Positioned(
                    right: 15,
                    bottom: 10,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Styles.activityBg,
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            selectedIndex == index
                ? Positioned(
                    right: 9,
                    bottom: 10,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Styles.activityBg,
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
