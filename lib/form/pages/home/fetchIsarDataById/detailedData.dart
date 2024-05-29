// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:isar/isar.dart';
// import 'package:newcarapp/form/pages/car_type_forsale/isar/car_sell_user/car_sell_user.dart';
// import 'package:newcarapp/form/pages/car_type_forsale/isar/isar_services.dart';

// import '../../car_type_forsale/isar/car_sell_user/car_sell_operation.dart';

// class DetailedData extends StatelessWidget {
//   final Id userId;

//   const DetailedData({required this.userId});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<CarSellUser?>(
//       future: UserOperations(IsarService()).fetchDataById(userId),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Scaffold(
//             appBar: AppBar(),
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         } else {
//           if (snapshot.hasError) {
//             return Scaffold(
//               appBar: AppBar(),
//               body: Center(
//                 child: Text('Error: ${snapshot.error}'),
//               ),
//             );
//           } else {
//             final CarSellUser? carSellUser = snapshot.data;
//             if (carSellUser != null) {
//               return Scaffold(
//                   appBar: AppBar(
//                     leading: IconButton(
//                       icon: Icon(Icons.arrow_back),
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                     ),
//                   ),
//                   body: Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: SizedBox(
//                           height: MediaQuery.of(context).size.height * 0.91,
//                           width: MediaQuery.of(context).size.width * 0.93,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.9,
//                                   height: 230,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         carSellUser.carName,
//                                         style: TextStyle(
//                                             color: Colors.black, fontSize: 25),
//                                       ),
//                                       SizedBox(height: 5),
//                                       Text(
//                                         carSellUser.city,
//                                         style: TextStyle(
//                                             color: Colors.black, fontSize: 18),
//                                       ),
//                                       SizedBox(height: 5),
//                                       IntrinsicHeight(
//                                         child: Row(
//                                           children: [
//                                              Icon(
//                                             FontAwesomeIcons.calendarCheck,
//                                             size: 20,
//                                             color: Color.fromARGB(
//                                                 255, 209, 119, 15),
//                                           ),
//                                           SizedBox(width: 4),
//                                           Text(carSellUser.year),
//                                             VerticalDivider(
//                                               color: Colors.black,
//                                               thickness: 2,
//                                             ),
//                                              Icon(
//                                             Icons.tire_repair_rounded,
//                                             size: 20,
//                                             color: Color.fromARGB(
//                                                 255, 209, 119, 15),
//                                           ),
//                                           SizedBox(width: 4),
//                                           Text(carSellUser.tyre),
//                                           ],
//                                         ),
//                                       )
                                   
//                                     ],
//                                   ))
//                             ],
//                           ),
//                         ),
//                       ),


//                       Positioned(
//                           bottom: 30,
//                           left: 10,
//                           right: 10,
//                           child: SizedBox(
//                             width: MediaQuery.of(context).size.width * 0.9,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {},
//                                   child: Container(
//                                     width: MediaQuery.of(context).size.width *
//                                         0.45,
//                                     height: 45,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: Colors.grey),
//                                         borderRadius: BorderRadius.circular(4)),
//                                     child: ElevatedButton.icon(
//                                       onPressed: () {},
//                                       icon: Icon(
//                                         Icons.call_outlined,
//                                         color: Colors.white,
//                                         size: 15,
//                                       ),
//                                       label: Text(
//                                         'Call',
//                                         style: TextStyle(
//                                             color: Colors.white, fontSize: 11),
//                                       ),
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.blue,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(4),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {},
//                                   child: Container(
//                                     width: MediaQuery.of(context).size.width *
//                                         0.45,
//                                     height: 45,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: Colors.blue),
//                                         borderRadius: BorderRadius.circular(4)),
//                                     child: ElevatedButton.icon(
//                                       onPressed: () {},
//                                       icon: Icon(
//                                         FontAwesomeIcons.whatsapp,
//                                         color: Colors.blue,
//                                         size: 14,
//                                       ),
//                                       label: Text(
//                                         'WhatsApp',
//                                         style: TextStyle(
//                                             color: Colors.blue, fontSize: 11),
//                                       ),
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.white,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(4),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ))
//                     ],
//                   ));
//             } else {
//               return Scaffold(
//                 appBar: AppBar(),
//                 body: Center(
//                   child: Text('No data found'),
//                 ),
//               );
//             }
//           }
//         }
//       },
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newcarapp/form/pages/car_type_for_rent/rent_isar/car_rent_user/car_rent_user.dart';
import 'package:newcarapp/form/pages/car_type_for_rent/rent_isar/car_rent_user/rent_operations.dart';
import 'package:newcarapp/form/pages/car_type_forsale/isar/car_sell_user/car_sell_user.dart';
import 'package:newcarapp/form/pages/car_type_forsale/isar/isar_services.dart';
import 'package:newcarapp/form/pages/home/fetchIsarDataById/fetchdataById.dart';

import '../../car_type_forsale/isar/car_sell_user/car_sell_operation.dart';
import 'detailedPagearg.dart';

class DetailedData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DetailedPageArguments;

    final fetchSellRentById = FetchSellRentById(
      UserOperations(IsarService()),
      RentOperations(IsarService()),
    );

    return FutureBuilder<dynamic>(
      future: fetchSellRentById.fetchUserById(args.id, args.type),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoading();
        } else if (snapshot.hasError) {
          return _buildError(snapshot.error);
        } else {
          final user = snapshot.data;
          if (user is CarSellUser) {
            return _buildDetailScaffold(context, _buildCarSellUserDetail(user));
          } else if (user is CarRentUser) {
            return _buildDetailScaffold(context, _buildCarRentUserDetail(user));
          } else {
            return _buildNoData();
          }
        }
      },
    );
  }

  Widget _buildLoading() {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildError(Object? error) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Error: $error'),
      ),
    );
  }

  Widget _buildNoData() {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('No data found'),
      ),
    );
  }

  Scaffold _buildDetailScaffold(BuildContext context, Widget detailContent) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.91,
              width: MediaQuery.of(context).size.width * 0.93,
              child: detailContent,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarSellUserDetail(CarSellUser user) {
    return _buildUserDetail(
      user.carName,
      user.city,
      [
        _buildDetailIcon(FontAwesomeIcons.calendarCheck, user.year),
        _buildDivider(),
        _buildDetailIcon(Icons.tire_repair_rounded, user.tyre),
      ],
    );
  }

  Widget _buildCarRentUserDetail(CarRentUser user) {
    return _buildUserDetail(
      user.carName,
      user.city,
      [
        _buildDetailIcon(FontAwesomeIcons.calendarCheck, user.year),
        _buildDivider(),
        _buildDetailIcon(Icons.tire_repair_rounded, user.color),
      ],
    );
  }

  Widget _buildUserDetail(String name, String city, List<Widget> details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        SizedBox(height: 5),
        Text(
          city,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        SizedBox(height: 5),
        IntrinsicHeight(
          child: Row(children: details),
        ),
      ],
    );
  }

  Widget _buildDetailIcon(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Color.fromARGB(255, 209, 119, 15),
        ),
        SizedBox(width: 4),
        Text(text),
      ],
    );
  }

  Widget _buildDivider() {
    return VerticalDivider(
      color: Colors.black,
      thickness: 2,
    );
  }
}

