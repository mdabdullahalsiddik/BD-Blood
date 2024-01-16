import 'dart:io';

import 'package:bd_blood/pages/login_page.dart';
import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Column(
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
                                  ? AssetImage("assets/images/camera.png")
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
                                                              leading: AllIcon
                                                                  .cmeraIcon,
                                                              title: Text(
                                                                  "Camera"),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () async {
                                                              ImagePicker p =
                                                                  ImagePicker();
                                                              image = await p.pickImage(
                                                                  source: ImageSource
                                                                      .gallery);
                                                              setState(() {});
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: ListTile(
                                                              leading: AllIcon
                                                                  .photoIcon,
                                                              title: Text(
                                                                  "Gallery"),
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
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Column(
                children: [AllText.singupheadText],
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.fastNameText],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Md. Abdullah Al",
                    labelText: "Fast Name",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.personIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.lastNameText],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Siddik",
                    labelText: "Last Name",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.personIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.bloodText],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "A+/A-/O+/O-/B+/B-/AB+/AB-",
                    labelText: "Blood Group",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.bloodIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.dateText],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "10-10-2004",
                    labelText: "Date of Birth",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.dateIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.sexText],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Male / Female",
                    labelText: "Sex",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.personIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.addressText],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Lalbug,Sadar,Dinajpur-5200",
                    labelText: "Address",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.homeIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.presentText],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Lalbug,Sadar,Dinajpur-5200",
                    labelText: "Present Address",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.homeIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.phoneText],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "01737374083",
                    labelText: "Phone Number",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.phoneIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.mail_Text],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "flutter@gmail.com",
                    labelText: "Mail",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.mailIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: Row(
                  children: [AllText.password_Text],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "!@#%^*123456789",
                    labelText: "Password",
                    hintStyle: TextStyle(color: AllColor.blackColor),
                    labelStyle: TextStyle(color: AllColor.blackColor),
                    prefixIcon: AllIcon.passwordIcon,
                    suffixIcon: AllIcon.eyeIcon,
                    suffix: AllIcon.keyboardIcon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AllColor.blackColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AllColor.red_Color)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
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
                      child: Center(child: AllText.singup1Text),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (context) => LoginPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: AllText.login1Text,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
