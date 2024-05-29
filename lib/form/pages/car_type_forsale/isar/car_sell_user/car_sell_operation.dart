
import 'package:isar/isar.dart';

import '../isar_services.dart';
import 'car_sell_user.dart';


// class UserOperations {
//   final IsarService isarService;

//   UserOperations(this.isarService);

//   Future<void> saveUser(CarSellUser user) async {
//     final isar = await isarService.db;
//     await isar.writeTxn(() async {
//       await isar.carSellUsers.put(user);
//     });
//   }

//   Stream<List<CarSellUser>> listenUser() async* {
//     final isar = await isarService.db;
//     yield* isar.carSellUsers.where().findAll().asStream().map((users) {
//       users.sort((a, b) => b.id.compareTo(a.id));
//       return users;
//     });
//   }

//   Future<List<CarSellUser>> getAllUser() async {
//     final isar = await isarService.db;
//     final users = await isar.carSellUsers.where().findAll();
//     users.sort((a, b) => b.id.compareTo(a.id));
//     return users;
//   }

//   Future<CarSellUser?> fetchDataById(Id id) async
//   {
//     final isar = await isarService.db;
//      return isar.carSellUsers.get(id);
//   }
// }


class UserOperations {
  final IsarService isarService;

  UserOperations(this.isarService);

  Future<void> saveUser(CarSellUser user) async {
    final isar = await isarService.db;
    await isar.writeTxn(() async {
      await isar.carSellUsers.put(user);
    });
  }

  Stream<List<CarSellUser>> listenUser() async* {
    final isar = await isarService.db;
    yield* isar.carSellUsers.where().findAll().asStream().map((users) {
      users.sort((a, b) => b.id.compareTo(a.id));
      return users;
    });
  }

  Future<List<CarSellUser>> getAllUser() async {
    final isar = await isarService.db;
    final users = await isar.carSellUsers.where().findAll();
    users.sort((a, b) => b.id.compareTo(a.id));
    return users;
  }

  // Future<CarSellUser?> fetchDataById(Id id,String typeSale) async
  // {
  //   final isar = await isarService.db;
  //    return isar.carSellUsers.where().filter().idEqualTo(id).typeSaleEqualTo(typeSale).findFirst();
  // }

    Future<CarSellUser?> fetchDataById(Id id,) async
  {
    final isar = await isarService.db;
      return isar.carSellUsers.get(id);
  }
}