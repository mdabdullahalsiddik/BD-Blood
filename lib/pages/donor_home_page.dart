import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:flutter/material.dart';

class DonorHome extends StatefulWidget {
  const DonorHome({super.key});

  @override
  State<DonorHome> createState() => _DonorHomeState();
}

class _DonorHomeState extends State<DonorHome> {
  var botton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColor.orangeColor,
        leading: AllIcon.bloodIcon,
        title: AllText.doneheadText,
        actions: [
          Switch(
              activeColor: AllColor.blackColor,
              value: botton,
              onChanged: (value) {
                setState(() {
                  botton = value;
                });
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset(
                "assets/images/blood.jpg",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100.0,
                  width: 300.0,
                  color: AllColor.orangeColor,
                  child: Center(
                      child: Column(
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
                            AllText.giveBloodText,
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            AllIcon.circleIcon,
                            SizedBox(width: 5),
                            AllText.givefamilyText,
                          ],
                        ),
                      ),
                    ],
                  )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 100.0,
                    width: 100.0,
                    child: Card(
                      color: AllColor.orangeColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total"),
                          Text("People"),
                          Text("1000"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                    width: 100.0,
                    child: Card(
                      color: AllColor.orangeColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Donor"),
                          Text("People"),
                          Text("1000"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                    width: 100.0,
                    child: Card(
                      color: AllColor.orangeColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Receiver"),
                          Text("People"),
                          Text("1000"),
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
    );
  }
}
