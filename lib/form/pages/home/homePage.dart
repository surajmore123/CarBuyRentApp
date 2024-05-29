
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../app/app_layout/main_layout.dart';
// import '../car_type_for_rent/rent_isar/car_rent_user/car_rent_user.dart';
// import '../car_type_forsale/isar/car_sell_user/car_sell_user.dart';
// import '../components/menu/bottom_menu.dart';
// import '../filterform/bloc/filter_form_bloc.dart';
// import '../filterform/bloc/filter_form_event.dart';
// import '../filterform/bloc/filter_form_state.dart';
// import 'fetchIsarDataById/detailedPagearg.dart';
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late FilterFormBloc filterFormBloc;

//   @override
//   void initState() {
//     super.initState();
//     filterFormBloc = BlocProvider.of<FilterFormBloc>(context);
//   filterFormBloc.add(ResetForm());
//     filterFormBloc.add(PerformSearch()); // Trigger the PerformSearch event
    
//   }

//     @override
//   void dispose() {
//     filterFormBloc.close();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return    Scaffold(
//       body: MainLayout(
//         bootomNavigationBar: const BottomMenu(),
//         body: BlocBuilder<FilterFormBloc, FilterFormState>(
//           bloc: filterFormBloc,
//           builder: (context, state) {
//             print('Filtered data in home: ${state.filteredData.length}');
            
//             if (state.filteredData.isNotEmpty) {
//               return ListView.builder(
//                 itemCount: state.filteredData.length,
//                 itemBuilder: (context, index) {
//                   final user = state.filteredData[index];

//                   if (user is CarSellUser) {
//                     return _buildCarSellUserCard(user, context);
//                   } else if (user is CarRentUser) {
//                    return _buildCarRentUserCard(user, context);
//                   } else {
//                     return SizedBox.shrink();
//                   }
//                 },
//               );
//             } else {
//               return Center(child: Text('No data found'));
//             }
//           },
//         ), 
//       ),
//     );
  
 
//   }

//   Widget _buildCarSellUserCard(CarSellUser carSellUser, BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onTap: () {
//        //   Navigator.of(context).pushNamed('/detailedData',arguments:carSellUser.id);
//                   Navigator.of(context).pushNamed(
//           '/detailedData',
//           arguments: DetailedPageArguments(carSellUser.id, 'sale'),); 
//           print('carsell : ${carSellUser.id}');
          
//         },
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width * 0.95,
//           child: Card(
//             elevation: 20,
//             child: Container(
//               height: 230,
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           carSellUser.carPrice,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(width: 4),
//                         Text(
//                           'INR',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Icon(
//                           FontAwesomeIcons.solidSquareCheck,
//                           size: 20,
//                           color: Color.fromARGB(255, 209, 119, 15),
//                         ),
//                         SizedBox(width: 4),
//                         Text(
//                           carSellUser.carName,
//                           style: TextStyle(color: Colors.blue, fontSize: 20),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       carSellUser.brand,
//                       style: TextStyle(color: Colors.grey, fontSize: 20),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       carSellUser.city,
//                       style: TextStyle(color: Colors.black, fontSize: 18),
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Icon(
//                           FontAwesomeIcons.car,
//                           size: 20,
//                           color: Color.fromARGB(255, 209, 119, 15),
//                         ),
//                         SizedBox(width: 4),
//                         Text(carSellUser.color),
//                         SizedBox(width: 10),
//                         Icon(
//                           FontAwesomeIcons.calendarCheck,
//                           size: 20,
//                           color: Color.fromARGB(255, 209, 119, 15),
//                         ),
//                         SizedBox(width: 4),
//                         Text(carSellUser.year),

                        
//                       ],
//                     ),
                    
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCarRentUserCard(CarRentUser carRentUser, BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onTap: () {
//                        Navigator.of(context).pushNamed(
//           '/detailedData',
//           arguments: DetailedPageArguments(carRentUser.id, 'rent'),);
//            print('carrell : ${carRentUser.id}');
//         },
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width * 0.95,
//           child: Card(
//             elevation: 20,
//             child: Container(
//               height: 230,
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           carRentUser.price,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(width: 4),
//                         Text(
//                           'INR',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Icon(
//                           FontAwesomeIcons.solidSquareCheck,
//                           size: 20,
//                           color: Color.fromARGB(255, 209, 119, 15),
//                         ),
//                         SizedBox(width: 4),
//                         Text(
//                           carRentUser.carName,
//                           style: TextStyle(color: Colors.blue, fontSize: 20),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       carRentUser.brand,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       carRentUser.city,
//                       style: TextStyle(color: Colors.black, fontSize: 18),
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Icon(
//                          FontAwesomeIcons.car,
//                           size: 20,
//                           color: Color.fromARGB(255, 209, 119, 15),
//                         ),
//                         SizedBox(width: 4),
//                         Text(carRentUser.color),
//                         SizedBox(width: 10),
//                         Icon(
//                           FontAwesomeIcons.calendarCheck,
//                           size: 20,
//                           color: Color.fromARGB(255, 209, 119, 15),
//                         ),
//                         SizedBox(width: 4),
//                         Text(carRentUser.year),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// }




import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app/app_layout/main_layout.dart';
import '../car_type_for_rent/rent_isar/car_rent_user/car_rent_user.dart';
import '../car_type_forsale/isar/car_sell_user/car_sell_user.dart';
import '../components/menu/bottom_menu.dart';
import '../filterform/bloc/filter_form_bloc.dart';
import '../filterform/bloc/filter_form_event.dart';
import '../filterform/bloc/filter_form_state.dart';
import 'fetchIsarDataById/detailedPagearg.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FilterFormBloc filterFormBloc;
// late List<dynamic> allData;

  @override
  void initState() {
    super.initState();
    filterFormBloc = BlocProvider.of<FilterFormBloc>(context);
  filterFormBloc.add(ResetForm());
    filterFormBloc.add(PerformSearch()); // Trigger the PerformSearch event
   filterFormBloc.allData =[];
   filterFormBloc.getAllData();
  }

    @override
  void dispose() {
    filterFormBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: MainLayout(
        bootomNavigationBar: const BottomMenu(),
        body: BlocBuilder<FilterFormBloc, FilterFormState>(
          bloc: filterFormBloc,
          builder: (context, state) {
            print('Filtered data in home: ${state.filteredData.length}');
            
            if (state.filteredData.isNotEmpty) {
            
           filterFormBloc.allData = state.filteredData;
              
              return ListView.builder(
                itemCount:filterFormBloc.allData.length,
                itemBuilder: (context, index) {
                  final user = filterFormBloc.allData[index];

                  if (user is CarSellUser) {
                    return _buildCarSellUserCard(user, context);
                  } else if (user is CarRentUser) {
                   return _buildCarRentUserCard(user, context);
                  } else {
                    return SizedBox.shrink();
                  }
                },
              );
            } else {
              return Center(child: Text('No data found'));
            }
          },
        ), 
      ),
    );
  
 
  }

  Widget _buildCarSellUserCard(CarSellUser carSellUser, BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
       //   Navigator.of(context).pushNamed('/detailedData',arguments:carSellUser.id);
                  Navigator.of(context).pushNamed(
          '/detailedData',
          arguments: DetailedPageArguments(carSellUser.id, 'sale'),); 
          print('carsell : ${carSellUser.id}');
          
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Card(
            elevation: 20,
            child: Container(
              height: 230,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          carSellUser.carPrice,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'INR',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.solidSquareCheck,
                          size: 20,
                          color: Color.fromARGB(255, 209, 119, 15),
                        ),
                        SizedBox(width: 4),
                        Text(
                          carSellUser.carName,
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      carSellUser.brand,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      carSellUser.city,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.car,
                          size: 20,
                          color: Color.fromARGB(255, 209, 119, 15),
                        ),
                        SizedBox(width: 4),
                        Text(carSellUser.color),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.calendarCheck,
                          size: 20,
                          color: Color.fromARGB(255, 209, 119, 15),
                        ),
                        SizedBox(width: 4),
                        Text(carSellUser.year),

                        
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCarRentUserCard(CarRentUser carRentUser, BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
                       Navigator.of(context).pushNamed(
          '/detailedData',
          arguments: DetailedPageArguments(carRentUser.id, 'rent'),);
           print('carrell : ${carRentUser.id}');
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Card(
            elevation: 20,
            child: Container(
              height: 230,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          carRentUser.price,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'INR',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.solidSquareCheck,
                          size: 20,
                          color: Color.fromARGB(255, 209, 119, 15),
                        ),
                        SizedBox(width: 4),
                        Text(
                          carRentUser.carName,
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      carRentUser.brand,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      carRentUser.city,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                         FontAwesomeIcons.car,
                          size: 20,
                          color: Color.fromARGB(255, 209, 119, 15),
                        ),
                        SizedBox(width: 4),
                        Text(carRentUser.color),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.calendarCheck,
                          size: 20,
                          color: Color.fromARGB(255, 209, 119, 15),
                        ),
                        SizedBox(width: 4),
                        Text(carRentUser.year),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}

