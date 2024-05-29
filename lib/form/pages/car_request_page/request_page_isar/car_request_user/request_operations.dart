

import 'package:isar/isar.dart';

import '../../../car_type_forsale/isar/isar_services.dart';
import 'car_request_user.dart';
/*
class RequestUserOperations  extends IsarServices
{
  RequestUserOperations() : super('CarRequestUser');

  Future<void> saveDetails(CarRequestUser user) async
  {
  final isar = await db;
  await isar.writeTxn(() async
  {
    await isar.carRequestUsers.put(user);
  });
  }

   Stream<List<CarRequestUser>> listenUser() async* {
    final isar = await db;
    //Watch the user collection for changes and yield the updated user list.
    yield* isar.carRequestUsers.where().watch(fireImmediately: true);
  }
  
  //Retrieve all users from the Isar database.
  Future<List<CarRequestUser>> getAllUser() async {
    final isar = await db;
    //Find all users in the user collection and return the list.
    return await isar.carRequestUsers.where().findAll();
  }

  
}
*/

class RequestUserOperations {
  final IsarService isarService;

  RequestUserOperations(this.isarService);

  Future<void> saveDetails(CarRequestUser user) async {
    final isar = await isarService.db;
    await isar.writeTxn(() async {
      await isar.carRequestUsers.put(user);
    });
  }

  Stream<List<CarRequestUser>> listenUser() async* {
    final isar = await isarService.db;
    yield* isar.carRequestUsers.where().findAll().asStream().map((users) {
      users.sort((a, b) => b.id.compareTo(a.id));
      return users;
    });
  }

  Future<List<CarRequestUser>> getAllUser() async {
    final isar = await isarService.db;
    final users = await isar.carRequestUsers.where().findAll();
    users.sort((a, b) => b.id.compareTo(a.id));
    return users;
  }
}
