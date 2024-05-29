// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';

// import 'car_request_user/car_request_user.dart';

// class RequestIsarServices
// {
//   late Future<Isar> requestDb;

//   RequestIsarServices()
//   {
//     requestDb = openDb();
//   }

//   Future<Isar> openDb()async
//   {
//   if(Isar.instanceNames.isEmpty)
//   {
//     final dir = await getApplicationDocumentsDirectory();
//     return await Isar.open(
//         [
//           CarRequestUserSchema,
//         ],
//         directory: dir.path,
//         inspector: true,
//       );
//   }
//    return Future.value(Isar.getInstance());
//   }
// }

