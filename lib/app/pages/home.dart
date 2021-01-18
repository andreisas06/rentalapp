import 'package:flutter/material.dart';
import 'package:rental/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:rental/color_constants.dart';
import 'package:rental/common_widgets/filter_widget.dart';
import 'package:rental/common_widgets/image_widget.dart';
import 'package:rental/common_widgets/menu_widget.dart';
import 'package:rental/constants.dart';

class Home extends StatelessWidget with NavigationStates {
  final filterArray = [
    'Retail',
    'Bar & Restaurant',
    'Event',
    'Market',
    'Shopping Center',
  ];

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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MenuWidget(
                    iconImg: Icons.filter_alt_outlined,
                    iconColor: Color(0xFF1BB5FD),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, bottom: 10),
                child: Text(
                  'City',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  'Bucharest',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Divider(
                color: Color(0xFF1BB5FD),
                thickness: 0.3,
              ),
              Container(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: filterArray.length,
                  itemBuilder: (context, index) {
                    return FilterWidget(
                      filterTxt: filterArray[index],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(Constants.propertyList.length, (index) {
                  return ImageWidget(
                      Constants.propertyList[index], index, Constants.imageList);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
