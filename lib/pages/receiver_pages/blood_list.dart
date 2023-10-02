// ignore_for_file: unused_import

import 'package:bd_blood/pages/receiver_pages/receiver_home.dart';
import 'package:bd_blood/pages/receiver_pages/receiver_sms_page.dart';
import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'donor_list_page.dart';
import 'receiver_sms_list.dart';

class BloodList extends StatefulWidget {
  const BloodList({super.key});

  @override
  State<BloodList> createState() => _BloodListState();
}

class _BloodListState extends State<BloodList> {
  int selectedPos = 2;
  double bottomNavBarHeight = 60;
  List<TabItem> tabItems = List.of([
    TabItem(
      AllIcon.homeBarIcon,
      "Home",
      AllColor.blackColor,
      circleStrokeColor: AllColor.blackColor,
    ),
    TabItem(
      AllIcon.mailBArIcon,
      "SMS",
      AllColor.blackColor,
      circleStrokeColor: AllColor.blackColor,
    ),
    TabItem(
      AllIcon.listBarIcon,
      "List",
      AllColor.blackColor,
      circleStrokeColor: AllColor.blackColor,
    ),
    TabItem(
      AllIcon.accountBArIcon,
      "Profile",
      AllColor.blackColor,
      circleStrokeColor: AllColor.blackColor,
    ),
  ]);
  late CircularBottomNavigationController _navigationController =
      CircularBottomNavigationController(selectedPos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AllColor.red_Color,
          iconTheme: IconThemeData(color: AllColor.blackColor),
          title: AllText.doneheadText,
          leading: AllIcon.bloodIcon,
        ),
        bottomNavigationBar: CircularBottomNavigation(
          tabItems,
          circleStrokeWidth: 4,
          iconsSize: 30,
          circleSize: 55,
          barBackgroundColor: AllColor.red_Color,
          selectedPos: selectedPos,
          controller: _navigationController,
          selectedCallback: (int? selectedPos) {
            setState(() {
              this.selectedPos = selectedPos ?? 0;
              if (selectedPos == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => ReceiverPage(),
                  ),
                );
              } else if (selectedPos == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => SmslistPage(),
                  ),
                );
              } else if (selectedPos == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => BloodList(),
                  ),
                );
              }else if (selectedPos == 3) {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => RAccountPage(),
                ),
              );
            }
            });
          },
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => DonorList()));
                  },
                  child: SizedBox(
                    height: 100.0,
                    width: 150.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/bloodgroup.png"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "O +",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => DonorList()));
                  },
                  child: SizedBox(
                    height: 100.0,
                    width: 150.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/bloodgroup.png"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "O -",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => DonorList()));
                  },
                  child: SizedBox(
                    height: 100.0,
                    width: 150.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/bloodgroup.png"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "A +",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => DonorList()));
                  },
                  child: SizedBox(
                    height: 100.0,
                    width: 150.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/bloodgroup.png"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "A -",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => DonorList()));
                  },
                  child: SizedBox(
                    height: 100.0,
                    width: 150.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/bloodgroup.png"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "B +",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => DonorList()));
                  },
                  child: SizedBox(
                    height: 100.0,
                    width: 150.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/bloodgroup.png"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "B -",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => DonorList()));
                  },
                  child: SizedBox(
                    height: 100.0,
                    width: 150.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/bloodgroup.png"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "AB +",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => DonorList()));
                  },
                  child: SizedBox(
                    height: 100.0,
                    width: 150.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/bloodgroup.png"),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "AB -",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
