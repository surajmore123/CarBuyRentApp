import 'package:isar/isar.dart';

part 'car_sell_user.g.dart';

@Collection()
class CarSellUser 
{
  Id id = Isar.autoIncrement;
  String brand;
  String verifyCar;
  String city;
  String location;
  String carName;
  String carDescription;
  String carPrice;
  String year;
  String tyre;
  String accidental;
  String color;
  String image;
  String type;
  String typeSale;
  


  CarSellUser({ required this.brand, required this.verifyCar, required this.city,required this.location,required this.carName,required this.carDescription, required this.carPrice, required this.year,required this.tyre, required this.accidental,required this.color,required this.image,required this.type,required this.typeSale});
  
}