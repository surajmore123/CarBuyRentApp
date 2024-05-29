// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';

// import 'car_rent_user/car_rent_user.dart';

// class RentIsarServices
// {
//   late Future<Isar> rentDb;

//   RentIsarServices()
//   {
//     rentDb = openDb();
//   }

//   Future<Isar> openDb() async
//   {
//        if (Isar.instanceNames.isEmpty) {
//       final dir = await getApplicationDocumentsDirectory();
//       return await Isar.open(
//         [
//           CarRentUserSchema,
//         ],
//         directory: dir.path,
//         inspector: true,
//       );
//     }
//      return Future.value(Isar.getInstance());
//   }
// }

