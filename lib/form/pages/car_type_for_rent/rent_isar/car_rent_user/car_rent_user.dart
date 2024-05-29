
import 'package:isar/isar.dart';

part 'car_rent_user.g.dart';

@Collection()
class CarRentUser 
{
  Id id = Isar.autoIncrement;
  String brand;
  String rentFrequency;
  String city;
  String location;
  String carName;
  String details;
  String price;
  String year;
  String tyre;
  String accidental;
  String color;
  String image;
  String type;
  String typeRent;
 

  CarRentUser({required this.brand, required this.rentFrequency, required this.city, required this.location, required this.carName,required this.details, required this.price, required this.year,required this.tyre,required this.accidental, required this.color, required this.image, required this.type,required this.typeRent});
}