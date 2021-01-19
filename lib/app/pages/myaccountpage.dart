import 'package:flutter/material.dart';
import 'package:rental/bloc.navigation_bloc/navigation_bloc.dart';

class MyAccountPage extends StatefulWidget with NavigationStates {
  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 50,
        top: 40,
        right: 50,
      ),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      // boxShadow: [
                      //   BoxShadow(
                      //     spreadRadius: 2,
                      //     blurRadius: 10,
                      //     color: Colors.black.withOpacity(0.1),
                      //     offset: Offset(0, 10),
                      //   ),
                      // ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.materialui.co/materialIcons/action/account_circle_grey_192x192.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        color: Color(0xFF1BB5FD),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            buildTextField('Full Name', 'Tom Bob', false),
            buildTextField('E-mail', 'email@email.com', false),
            buildTextField('Password', '**********', true),
            buildTextField('Location', 'Bucharest, Romania', false),
            buildTextField('Preferences', 'Event', false),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButton(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {},
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 2.2, color: Colors.black),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Color(0xFF1BB5FD),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String hintText, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
