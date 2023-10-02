import 'package:bd_blood/pages/receiver_pages/receiver_sms_page.dart';
import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:flutter/material.dart';

class DonorList extends StatefulWidget {
  const DonorList({super.key});

  @override
  State<DonorList> createState() => _DonorListeState();
}

class _DonorListeState extends State<DonorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: AllColor.blackColor),
        backgroundColor: AllColor.red_Color,
        title: Row(
          children: [
            AllIcon.bloodIcon,
            SizedBox(width: 5),
            AllText.bloodText,
          ],
        ),
      ),
      body: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 10,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (context) => SmsPage()));
              },
              child: Card(
                color: AllColor.red_Color,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/siddik.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("Md Abdullah Al Siddik"),
                    SizedBox(height: 10),
                    Text("Blood Group"),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
