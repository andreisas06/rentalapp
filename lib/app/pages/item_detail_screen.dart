import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
// import 'package:realestateapp/common/color_constants.dart';
// import 'package:realestateapp/custom_widgets/floating_widget.dart';
// import 'package:realestateapp/custom_widgets/house_widget.dart';
// import 'package:realestateapp/custom_widgets/menu_widget.dart';
// import 'package:realestateapp/models/data_model.dart';
import 'package:rental/common_widgets/floating_widget.dart';
import 'package:rental/common_widgets/house_widget.dart';
import 'package:rental/common_widgets/menu_widget.dart';
import 'package:rental/models/data_model.dart';

class ItemDetailScreen extends StatelessWidget {
  Property property;
  List<String> imageList;
  int imgpath_index;
  ItemDetailScreen(
    this.property,
    this.imgpath_index,
    this.imageList,
  );
  final propertyArray = [
    "1.416",
    "4",
    "2",
    "2",
    "3",
  ];
  final typeArray = [
    "Square meters",
    "Bedrooms",
    "Bedrooms",
    "Garage",
    "Kitchen",
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final oCcy = new NumberFormat("##,##,###", "en_INR");
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 0,
        ),
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingWidget(
              leadingIcon: Icons.mail,
              txt: "Message",
            ),
            FloatingWidget(
              leadingIcon: Icons.phone,
              txt: "Call",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 0, bottom: 10),
                    child: SizedBox(
                      height: 200.0,
                      width: screenWidth,
                      child: Carousel(
                        images: [
                          ExactAssetImage(imageList[imgpath_index]),
                          ExactAssetImage(imageList[0]),
                          ExactAssetImage(imageList[1]),
                          ExactAssetImage(imageList[2]),
                          ExactAssetImage(imageList[3]),
                          ExactAssetImage(imageList[4]),
                          ExactAssetImage(imageList[5]),
                        ],
                        showIndicator: true,
                        borderRadius: false,
                        moveIndicatorFromBottom: 180.0,
                        noRadiusForIndicator: true,
                        overlayShadow: false,
                        overlayShadowColors: Colors.white,
                        overlayShadowSize: 0.7,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 15,
                      left: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MenuWidget(
                            iconImg: Icons.arrow_back,
                            iconColor: Colors.white,
                            conBackColor: Colors.transparent,
                            onBtnTap: () {
                              Navigator.of(context).pop();
                            }),
                        MenuWidget(
                          iconImg: Icons.favorite_border,
                          iconColor: Colors.white,
                          conBackColor: Colors.transparent,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$' + "${oCcy.format(property.amount)}" + '\/day',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            property.address,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.grey[200],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "23 hours ago",
                            style: Theme.of(context).textTheme.caption.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 15,
                ),
                child: Text(
                  "House Information",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 110,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: propertyArray.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: HouseWidget(
                        type: typeArray[index],
                        number: propertyArray[index].toString(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 20,
                  bottom: 20,
                ),
                child: Text(
                  "Occupying a prominent corner spot on Peter Street and the recently redeveloped Walker’s Court – home to Soho’s newest venue, the Boulevard Theatre – this refurbished, white-boxed shop to let is ideal for brands wanting to launch in front of Soho’s stylish young crowd. Over the road, Supreme still gets people queuing round the block for its weekly new collection releases and cult brands such as MC Overalls, Champion and Folk all call this area home, so this space would work well for streetwear ideas, or fashion and accessory ideas that will appeal to young consumers.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
