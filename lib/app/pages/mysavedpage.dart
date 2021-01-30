import 'package:flutter/material.dart';
import 'package:rental/bloc.navigation_bloc/navigation_bloc.dart';

import 'package:rental/common_widgets/image_widget.dart';

import 'package:rental/constants.dart';

class MySavedPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, bottom: 10),
                child: Center(
                  child: Text(
                    'Listings',
                    style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Center(
                  child: Text(
                    'Saved',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Divider(
                color: Color(0xFF1BB5FD),
                thickness: 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children:
                    List.generate(Constants.propertyList.length - 4, (index) {
                  return ImageWidget(Constants.propertyList[index], index,
                      Constants.imageList);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
