import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:flutter/material.dart';

import '../sms_pofile_page.dart';

class DSmsPage extends StatefulWidget {
  const DSmsPage({super.key});

  @override
  State<DSmsPage> createState() => _DSmsPageState();
}

class _DSmsPageState extends State<DSmsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AllColor.blackColor),
        backgroundColor: AllColor.red_Color,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/siddik.jpg"),
            ),
            SizedBox(width: 5),
            AllText.drawerNameText,
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => SmsprofilePage(),
                    ),
                  );
                },
                child: AllIcon.moreIcon),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: AllIcon.homeIcon, label: "Home"),
        BottomNavigationBarItem(icon: AllIcon.cmeraIcon, label: "camera"),
        BottomNavigationBarItem(icon: AllIcon.cmeraIcon, label: "camera"),
      ]),
    );
  }
}
