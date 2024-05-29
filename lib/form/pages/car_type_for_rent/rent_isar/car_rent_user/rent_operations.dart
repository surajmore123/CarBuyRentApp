import 'package:isar/isar.dart';

import '../../../car_type_forsale/isar/isar_services.dart';
import 'car_rent_user.dart';


// class RentOperations {
//   final IsarService isarService;

//   RentOperations(this.isarService);

//   Future<void> saveDetails(CarRentUser user) async {
//     final isar = await isarService.db;
//     await isar.writeTxn(() async {
//       await isar.carRentUsers.put(user);
//     });
//   }


//   Stream<List<CarRentUser>> listenUser() async* {
//     final isar = await isarService.db;
//     yield* isar.carRentUsers.where().findAll().asStream().map((users) {
//       users.sort((a, b) => b.id.compareTo(a.id));
//       return users;
//     });
//   }


//   Future<List<CarRentUser>> getAllUser() async {
//     final isar = await isarService.db;
//     final users = await isar.carRentUsers.where().findAll();
//     users.sort((a, b) => b.id.compareTo(a.id));
//     return users;
//   }

//   Future<CarRentUser?> fetchDataById(Id id) async
//   {
//     final isar = await isarService.db;
//     return isar.carRentUsers.get(id);
//   }

// }




class RentOperations {
  final IsarService isarService;

  RentOperations(this.isarService);

  Future<void> saveDetails(CarRentUser user) async {
    final isar = await isarService.db;
    await isar.writeTxn(() async {
      await isar.carRentUsers.put(user);
    });
  }


  Stream<List<CarRentUser>> listenUser() async* {
    final isar = await isarService.db;
    yield* isar.carRentUsers.where().findAll().asStream().map((users) {
      users.sort((a, b) => b.id.compareTo(a.id));
      return users;
    });
  }


  Future<List<CarRentUser>> getAllUser() async {
    final isar = await isarService.db;
    final users = await isar.carRentUsers.where().findAll();
    users.sort((a, b) => b.id.compareTo(a.id));
    return users;
  }

  Future<CarRentUser?> fetchDataById(Id id,) async
  {
    // final isar = await isarService.db;
    // return isar.carRentUsers.where().filter().idEqualTo(id).typeRentEqualTo(typeRent).findFirst();    
    final isar = await isarService.db;
     return isar.carRentUsers.get(id);
  }

}