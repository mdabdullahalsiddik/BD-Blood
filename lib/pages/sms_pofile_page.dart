import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:flutter/material.dart';

class SmsprofilePage extends StatefulWidget {
  const SmsprofilePage({super.key});

  @override
  State<SmsprofilePage> createState() => _SmsprofilePageState();
}

class _SmsprofilePageState extends State<SmsprofilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AllColor.blackColor),
        backgroundColor: AllColor.red_Color,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 10),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/siddik.jpg"),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: AllIcon.personIcon,
                  title: AllText.drawerNameText,
                ),
                ListTile(
                  leading: AllIcon.mailIcon,
                  title: AllText.drawermailText,
                ),
                ListTile(
                  leading: AllIcon.phoneIcon,
                  title: AllText.phonenumberText,
                ),
                ListTile(
                  leading: AllIcon.bloodIcon,
                  title: AllText.drawerbloodText,
                ),
                SizedBox(
                  height: 200,
                  child: Card(
                    color: AllColor.red_Color,
                    child: Center(child: Text("Map")),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
