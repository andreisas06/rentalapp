import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final IconData iconImg;
  final Color iconColor;
  final Color conBackColor;
  final Function() onBtnTap;

  MenuWidget({
    Key key,
    @required this.iconImg,
    @required this.iconColor,
    this.conBackColor,
    this.onBtnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: conBackColor,
        border: Border.all(
          width: 2,
          color: Color(0xFF1BB5FD),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        iconImg,
        color: iconColor,
      ),
    );
  }
}
