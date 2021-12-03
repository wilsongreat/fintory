import 'dart:ui';

import 'package:fintory_app/data.dart';
import 'package:fintory_app/models/model.dart';
import 'package:fintory_app/styles/styles.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      color: Styles.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      FluentIcons.building_bank_16_filled,
                      color: Styles.subTextColor.withOpacity(0.8),
                      size: 28.0,
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      "Fintory",
                      style: Styles.subTitleStyle1.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Styles.subTextColor.withOpacity(0.8),
                          letterSpacing: 1.2),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: navList.length,
                    itemBuilder: (context, int index) {
                      return _NavList(
                          navList[index].icon,
                          navList[index].navTitle,
                          Colors.white,
                          const Color(0xFFC3C5C4),
                          index);
                    }),
              ),
              // ...navList
              //     .map((e) => _NavList(e.icon, e.navTitle, () {}, Colors.white,
              //         const Color(0xFFC3C5C4)))
              //     .toList(),
            ],
          ),
          Column(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                  itemCount: navList2.length,
                  itemBuilder: (context, int index) {
                    return Column(
                      children: [
                        _NavList(
                            navList2[index].icon,
                            navList2[index].navTitle,
                            Styles.belowNavTextColor,
                            Styles.belowNavTextColor,
                            index),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 25),
                child: Divider(
                  color: Styles.subTextColor,
                  thickness: 0.2,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                ),
                child: Expanded(
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage("assets/images/images.jpg"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wilson Ekpewerechi",
                            style: Styles.subTitleStyle2.copyWith(
                                fontSize: 12,
                                color: Styles.subTextColor.withOpacity(0.7)),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Ekpewerechiebuka@gmail.com",
                            style: Styles.subTitleStyle2.copyWith(
                                color: Styles.subTextColor.withOpacity(0.7),
                                fontSize: 10),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _NavList(
      IconData icon, String title, Color color, Color textColor, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        height: 40.0,
        width: double.infinity,
        color: isSelected ? Styles.greenTileColor : Styles.bgColor,
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? Styles.bgColor : color,
              size: 20.0,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              title,
              style: Styles.subTitleStyle1
                  .copyWith(color: isSelected ? Styles.bgColor : textColor),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
// ListTile(
// tileColor:
// selectedIndex == index ? Styles.greenTileColor : Styles.bgColor,
// dense: true,
// leading: Icon(
// icon,
// color: color,
// size: 20,
// ),
// title: Text(
// title,
// style: Styles.subTitleStyle1.copyWith(color: textColor),
// overflow: TextOverflow.ellipsis,
// ),
// onTap: () => {selectedIndex = index},
// )
