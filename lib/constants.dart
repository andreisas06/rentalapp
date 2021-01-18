import 'package:rental/models/data_model.dart';

class Constants {
  static List<Property> propertyList = [
    Property(
      id: 1,
      amount: 125,
      address: 'Jenison, MI 49428, SF',
      bedrooms: 7,
      bathrooms: 2,
      squaremeters: 76,
      garages: 2,
      kitchen: 1,
    ),
    Property(
      id: 2,
      amount: 300,
      address: 'Delhi, MI 55555, SF',
      bedrooms: 14,
      bathrooms: 4,
      squaremeters: 45,
      garages: 3,
      kitchen: 2,
    ),
    Property(
      id: 3,
      amount: 500,
      address: 'Mumbai, MI 49428, SF',
      bedrooms: 21,
      bathrooms: 2,
      squaremeters: 55,
      garages: 2,
      kitchen: 1,
    ),
    Property(
      id: 4,
      amount: 250,
      address: 'Pune, MI 55555, SF',
      bedrooms: 14,
      bathrooms: 4,
      squaremeters: 23,
      garages: 3,
      kitchen: 2,
    ),
    Property(
      id: 5,
      amount: 400,
      address: 'Rajkot, MI 49428, SF',
      bedrooms: 7,
      bathrooms: 2,
      squaremeters: 130,
      garages: 2,
      kitchen: 1,
    ),
    Property(
      id: 6,
      amount: 625,
      address: 'Bhuj, MI 55555, SF',
      bedrooms: 14,
      bathrooms: 4,
      squaremeters: 87,
      garages: 3,
      kitchen: 2,
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
