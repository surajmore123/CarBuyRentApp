// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';

// import 'car_sell_user/car_sell_user.dart';

// class IsarServices {
//   late Future<Isar> db;

//   IsarServices() {
//     db = openDB();
//   }

//   Future<Isar> openDB() async {
//     if (Isar.instanceNames.isEmpty) {
//       final dir = await getApplicationDocumentsDirectory();
//       return await Isar.open(
//         [
//           CarSellUserSchema,
//         ],
//         directory: dir.path,
//         inspector: true,
//       );
//     }
//     return Future.value(Isar.getInstance());
//   }
// }

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../car_request_page/request_page_isar/car_request_user/car_request_user.dart';
import '../../car_type_for_rent/rent_isar/car_rent_user/car_rent_user.dart';
import 'car_sell_user/car_sell_user.dart';

// class IsarService {
//   late Future<Isar> db;

//   IsarService() {
//     db = openDB();
//   }

//   Future<Isar> openDB() async {
//     if (Isar.instanceNames.isEmpty) {
//       final dir = await getApplicationDocumentsDirectory();
//       return await Isar.open(
//         [
//           CarSellUserSchema,
//           CarRentUserSchema,
//           CarRequestUserSchema,
//         ],
//         directory: dir.path,
//         inspector: true,
//       );
//     }
//     return Future.value(Isar.getInstance());
//   }
// }
class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [
          CarSellUserSchema,
          CarRentUserSchema,
          CarRequestUserSchema,
        ],
        directory: dir.path,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
