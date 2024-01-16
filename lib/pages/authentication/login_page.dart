// ignore_for_file: override_on_non_overriding_member

import 'package:bd_blood/static/all_color.dart';
import 'package:bd_blood/static/all_icon.dart';
import 'package:bd_blood/static/all_text.dart';
import 'package:flutter/material.dart';
import 'singup_page.dart';
import '../receiver_pages/receiver_home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/siddik.jpg"),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                  child: Row(
                    children: [AllText.mail_Text],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                  child: TextField(
                    controller: mailController,
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
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                  child: Row(
                    children: [AllText.password_Text],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 8.0),
                  child: TextField(
                    controller: passwordController,
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
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (context) => ReceiverPage()));
                        },
                        child: SizedBox(
                          height: 50.0,
                          width: 330.0,
                          child: Card(
                            color: AllColor.red_Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: AllText.login_Text),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => SingupPage(),
                            ),
                          );
                        },
                        child: AllText.singupText),
                    Text("/"),
                    TextButton(onPressed: () {}, child: AllText.forgetText)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
