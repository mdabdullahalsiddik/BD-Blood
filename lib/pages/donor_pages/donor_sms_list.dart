import 'package:bd_blood/pages/donor_pages/donor_home_page.dart';
import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'donor_sms_page.dart';
import 'my_dontion_peoplelist.dart';

class DSmslistPages extends StatefulWidget {
  const DSmslistPages({super.key});

  @override
  State<DSmslistPages> createState() => _DSmslistPagesState();
}

class _DSmslistPagesState extends State<DSmslistPages> {
  int selectedPos = 1;
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
                  builder: (context) => DonorHome(),
                ),
              );
            } else if (selectedPos == 1) {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => DSmslistPages(),
                ),
              );
            } else if (selectedPos == 2) {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => DonationList(),
                ),
              );
            }else if (selectedPos == 3) {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => DAccountPage(),
                ),
              );
            }
          });
        },
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => DSmsPage()));
                },
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/siddik.jpg"),
                  ),
                  title: AllText.drawerNameText,
                  subtitle: Text("Time"),
                ),
              ),
            );
          }),
    );
  }
}
