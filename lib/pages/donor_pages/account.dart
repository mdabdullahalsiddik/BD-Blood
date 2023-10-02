import 'dart:io';
import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'donor_home_page.dart';
import 'donor_sms_list.dart';
import 'my_dontion_peoplelist.dart';

class DAccountPage extends StatefulWidget {
  const DAccountPage({super.key});

  @override
  State<DAccountPage> createState() => _DAccountPageeState();
}

class _DAccountPageeState extends State<DAccountPage> {
  XFile? image;
  int selectedPos = 3;
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
            } else if (selectedPos == 3) {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100.0)),
                  ),
                  color: AllColor.red_Color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 58,
                          backgroundImage: image == null
                              ? AssetImage("assets/images/siddik.jpg")
                                  as ImageProvider
                              : FileImage(
                                  File(image!.path),
                                ),
                          child: Stack(children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.white,
                                    child: InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (builder) {
                                              return AlertDialog(
                                                content: SizedBox(
                                                  height: 120.0,
                                                  width: 100.0,
                                                  child: Column(
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          ImagePicker p =
                                                              ImagePicker();
                                                          image = await p.pickImage(
                                                              source:
                                                                  ImageSource
                                                                      .camera);
                                                          setState(() {});
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: ListTile(
                                                          leading:
                                                              AllIcon.cmeraIcon,
                                                          title: Text("Camera"),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          ImagePicker p =
                                                              ImagePicker();
                                                          image = await p.pickImage(
                                                              source:
                                                                  ImageSource
                                                                      .gallery);
                                                          setState(() {});
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: ListTile(
                                                          leading:
                                                              AllIcon.photoIcon,
                                                          title:
                                                              Text("Gallery"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      child: AllIcon.cmeraIcon,
                                    ) // change this children
                                    ))
                          ]))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.fastNameText,
                  subtitle: Text(
                    "Md Abdullah Al ",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.fastNameText,
                  subtitle: Text(
                    "siddik ",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.bloodText,
                  subtitle: Text(
                    "B +",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.dateText,
                  subtitle: Text(
                    "10-10-2004",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.sexText,
                  subtitle: Text(
                    "Male",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.addressText,
                  subtitle: Text(
                    "LAlbug,Sadar,Dinajpur-5200 ",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.presentText,
                  subtitle: Text(
                    "Lalbug,Sadar,Dinajpur_5200",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.phoneText,
                  subtitle: Text(
                    "01737374083",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.mail_Text,
                  subtitle: Text(
                    "mabdullahalsiddik@gmail.com",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: AllColor.red_Color,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: AllText.password_Text,
                  subtitle: Text(
                    "123456",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: AllIcon.editIcon,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 15.0),
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 50.0,
                    width: 330.0,
                    child: Card(
                      color: AllColor.red_Color,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            AllIcon.logoutIcon,
                            AllText.logoutText,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
