import 'package:rental/models/data_model.dart';

class Constants {
  static List<Property> propertyList = [
    Property(
      id: 1,
      amount: 125,
      address: 'Jenison, MI 49428, SF',
      minBook: 7,
      squaremeters: 76,
    ),
    Property(
      id: 2,
      amount: 300,
      address: 'Delhi, MI 55555, SF',
      minBook: 14,
      squaremeters: 45,
    ),
    Property(
      id: 3,
      amount: 500,
      address: 'Mumbai, MI 49428, SF',
      minBook: 21,
      squaremeters: 55,
    ),
    Property(
      id: 4,
      amount: 250,
      address: 'Pune, MI 55555, SF',
      minBook: 14,
      squaremeters: 23,
    ),
    Property(
      id: 5,
      amount: 400,
      address: 'Rajkot, MI 49428, SF',
      minBook: 7,
      squaremeters: 130,
    ),
    Property(
      id: 6,
      amount: 625,
      address: 'Bhuj, MI 55555, SF',
      minBook: 14,
      squaremeters: 87,
    ),
  ];

  static List<String> imageList = [
    "images/spatiucomercial1.jpg",
    "images/spatiucomercial2.jpg",
    "images/spatiucomercial3.jpg",
    "images/spatiucomercial4.jpg",
    "images/spatiucomercial5.jpg",
    "images/spatiucomercial6.jpg",
    "images/spatiucomercial7.jpg",
  ];
}
