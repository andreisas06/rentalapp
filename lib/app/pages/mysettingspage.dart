import 'package:flutter/material.dart';
import 'package:rental/bloc.navigation_bloc/navigation_bloc.dart';

class MySettingsPage extends StatefulWidget with NavigationStates {
  @override
  _MySettingsPageState createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              top: 40,
              right: 16,
            ),
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFF1BB5FD),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Divider(
              height: 15,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                buildAccountOptionRow(context, 'Change password'),
                buildAccountOptionRow(context, 'Content Settings'),
                buildAccountOptionRow(context, 'Social'),
                buildAccountOptionRow(context, 'Language'),
                buildAccountOptionRow(context, 'Privacy and Security'),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.volume_up_outlined,
                        color: Color(0xFF1BB5FD),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: Divider(
                    height: 15,
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                buildNotificationOptionRow('New for you', true),
                buildNotificationOptionRow('Account activity', true),
                buildNotificationOptionRow('Opportunity', false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        Switch(
          value: isActive,
          onChanged: (bool val) {},
        ),
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Option 1'),
                    Text('Option 2'),
                    Text('Option 3'),
                  ],
                ),
                actions: [
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  )
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
