import 'package:bd_blood/pages/receiver_pages/receiver_sms_list.dart';
import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';

import '../donor_pages/donor_home_page.dart';
import 'account.dart';
import 'blood_list.dart';

class ReceiverPage extends StatefulWidget {
  const ReceiverPage({super.key});

  @override
  State<ReceiverPage> createState() => _ReceiverPageState();
}

class _ReceiverPageState extends State<ReceiverPage> {
  var botton = false;
  int selectedPos = 0;
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
        title: Row(
          children: [
            AllIcon.bloodIcon,
            SizedBox(width: 5),
            AllText.doneheadText,
          ],
        ),
        actions: [
          Switch(
              activeColor: AllColor.blackColor,
              value: botton,
              onChanged: (value) {
                setState(() {
                  botton = value;
                  if (botton == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => DonorHome(),
                      ),
                    );
                  }
                });
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/life.jpg",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: 170.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Center(
                      child: SizedBox(
                    height: 150,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: AllText.recciverheadText,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                AllIcon.circleIcon,
                                SizedBox(width: 5),
                                AllText.give_BloodText,
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                AllIcon.circleIcon,
                                SizedBox(width: 5),
                                AllText.give_familyText,
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100.0,
                    width: 120.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: AllColor.red_Color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Total People",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "1000",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                    width: 120.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: AllColor.red_Color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Donor People",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "400",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                    width: 120.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: AllColor.red_Color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Receiver",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "People",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "600",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CircularBottomNavigation(tabItems,
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
      }),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                currentAccountPictureSize: Size(60, 55),
                decoration: BoxDecoration(color: AllColor.red_Color),
                accountName: AllText.drawerNameText,
                accountEmail: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AllText.drawermailText,
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        AllText.drawerbloodText,
                      ],
                    ),
                  ],
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/siddik.jpg"),
                ),
              )),
          ListTile(
            leading: AllIcon.logoutIcon,
            title: AllText.logoutText,
          )
        ],
      )),
    );
  }
}
