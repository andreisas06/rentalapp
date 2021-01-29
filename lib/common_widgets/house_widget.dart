import 'package:flutter/material.dart';


class HouseWidget extends StatelessWidget {
  final String number;
  final String type;
  HouseWidget({
    this.number,
    this.type,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              18.0,
            ),
            color: Colors.white,
            border: Border.all(color: Colors.grey[300]),
          ),
          child: Center(
            child: Text(
              number,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          type,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}