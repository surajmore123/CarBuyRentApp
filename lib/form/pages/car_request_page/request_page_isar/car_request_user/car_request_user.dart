
import 'package:isar/isar.dart';

part 'car_request_user.g.dart';

@Collection()
class CarRequestUser
{
Id id = Isar.autoIncrement;
String details;
String price;
String city;
String phone;
CarRequestUser({required this.details, required this.price, required this.city, required this.phone});
}