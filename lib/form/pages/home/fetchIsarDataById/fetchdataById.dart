import 'package:isar/isar.dart';
import 'package:newcarapp/form/pages/car_type_for_rent/rent_isar/car_rent_user/rent_operations.dart';
import 'package:newcarapp/form/pages/car_type_forsale/isar/car_sell_user/car_sell_operation.dart';

// class FetchSellRentById 
// {
//   final UserOperations userOperations;
//   final RentOperations rentOperations;

//   FetchSellRentById( this.userOperations,  this.rentOperations);
//   Future<dynamic> fetchUserById(Id userId,)async
//   {
//     CarSellUser? carSellUser = await userOperations.fetchDataById(userId);
//     CarRentUser? carRentUser = await rentOperations.fetchDataById(userId);
//     if(carSellUser != null)
//     {
//       return carSellUser;
//     }
//     else if(carRentUser != null)
//     {
//  return carRentUser;
//     }
    
   
//   }
// } 


class FetchSellRentById 
{
  final UserOperations userOperations;
  final RentOperations rentOperations;

  FetchSellRentById( this.userOperations,  this.rentOperations);
  Future<dynamic> fetchUserById(Id userId,String type)async
  {


    if(type == 'sale')
    {
   return   await userOperations.fetchDataById(userId);
    }
    else if(type == 'rent')
    {
  return  await rentOperations.fetchDataById(userId);
    }

  
   return null;
  }
}