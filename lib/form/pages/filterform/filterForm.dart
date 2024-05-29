// import 'package:carsell/form/pages/filterform/personalOrTransport/personalForm.dart';
// import 'package:carsell/form/pages/filterform/personalOrTransport/transportForm.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'bloc/filter_form_bloc.dart';
// import 'bloc/filter_form_event.dart';
// import 'bloc/filter_form_state.dart';

// class FilterForm extends StatelessWidget {
//   @override
//   //final FilterFormBloc filterFormBloc = FilterFormBloc();
//   Widget build(BuildContext context) {
//     final filterFormBloc = BlocProvider.of<FilterFormBloc>(context);

//     return Scaffold(
//       body: BlocBuilder<FilterFormBloc, FilterFormState>(
//         bloc: filterFormBloc,
//         builder: (context, state) {
//           return SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height - 30,
//                   child: CustomScrollView(
//                     slivers: [
//                       SliverAppBar(
//                         automaticallyImplyLeading: false,
//                         backgroundColor: Colors.white,
//                         pinned: true,
//                         elevation: 5,
//                         title: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             IconButton(
//                               onPressed: () {
//                                 Navigator.of(context).pushNamed('/');
//                               },
//                               icon: Icon(Icons.close, color: Colors.black),
//                             ),
//                             Text('Filter', style: TextStyle(color: Colors.black)),
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(Icons.refresh, color: Colors.black),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SliverList(
//                         delegate: SliverChildBuilderDelegate(
//                           (context, index) {
//                             return SingleChildScrollView(
//                               child: Column(
//                                 children: [
//                                   SizedBox(height: 20),
//                                   Container(
//                                     height: 55,
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           width: 150,
//                                           height: 55,
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border.all(
//                                                   color: const Color.fromARGB(
//                                                       255, 216, 214, 214)),
//                                               borderRadius: BorderRadius.circular(5)),
//                                           child: ElevatedButton(
//                                             onPressed: () {
//                                               filterFormBloc.add(UpdateBuyRentButton('Buy'));
//                                             },
//                                             style: ElevatedButton.styleFrom(
//                                               backgroundColor: filterFormBloc.state.selectedButton == 'Buy'
//                                                   ? Colors.blue
//                                                   : Colors.white,
//                                             ),
//                                             child: Text(
//                                               'Buy',
//                                               style: TextStyle(
//                                                 color: filterFormBloc.state.selectedButton == 'Buy'
//                                                     ? Colors.white
//                                                     : Colors.black,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(width: 10),
//                                         Container(
//                                           width: 150,
//                                           height: 55,
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               border: Border.all(
//                                                   color: const Color.fromARGB(
//                                                       255, 216, 214, 214)),
//                                               borderRadius: BorderRadius.circular(5)),
//                                           child: ElevatedButton(
//                                             onPressed: () {
//                                               filterFormBloc.add(UpdateBuyRentButton('Rent'));
//                                             },
//                                             style: ElevatedButton.styleFrom(
//                                               backgroundColor: filterFormBloc.state.selectedButton == 'Rent'
//                                                   ? Colors.blue
//                                                   : Colors.white,
//                                             ),
//                                             child: Text(
//                                               'Rent',
//                                               style: TextStyle(
//                                                 color: filterFormBloc.state.selectedButton == 'Rent'
//                                                     ? Colors.white
//                                                     : Colors.black,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(height: 20),
//                                   SizedBox(
//                                     height: 35,
//                                     child: ListView.builder(
//                                       scrollDirection: Axis.horizontal,
//                                       itemCount: filterFormBloc.cities.length,
//                                       itemBuilder: (context, index) {
//                                         return StatefulBuilder(
//                                           builder: (context, StateSetter setState) {
//                                             return Row(
//                                               children: [
//                                                 SizedBox(width: 5),
//                                                 Container(
//                                                   decoration: BoxDecoration(
//                                                       color: Colors.white,
//                                                       border: Border.all(
//                                                           color: const Color.fromARGB(
//                                                               255, 216, 214, 214)),
//                                                       borderRadius: BorderRadius.circular(5)),
//                                                   child: ElevatedButton(
//                                                     onPressed: () {
//                                                       filterFormBloc.add(UpdateCityButton(filterFormBloc.cities[index]));
//                                                     },
//                                                     style: ElevatedButton.styleFrom(
//                                                       backgroundColor: filterFormBloc.state.selectedCityButton ==
//                                                               filterFormBloc.cities[index]
//                                                           ? Colors.blue
//                                                           : Colors.white,
//                                                     ),
//                                                     child: Text(
//                                                       filterFormBloc.cities[index],
//                                                       style: TextStyle(
//                                                         color: filterFormBloc.state.selectedCityButton ==
//                                                                 filterFormBloc.cities[index]
//                                                             ? Colors.white
//                                                             : Colors.black,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             );
//                                           },
//                                         );
//                                       },
//                                     ),
//                                   ),

//                                       SizedBox(height: 20),
//                                 SizedBox(
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.8,
//                                   child: TextField(
//                                     onChanged: (text) {
//                                       if (text.isNotEmpty) {
//                                         filterFormBloc.showCityDropDown(
//                                             context, text, filterFormBloc);
//                                       }
//                                     },
//                                     cursorColor: Colors.grey,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(5),
//                                         borderSide:
//                                             BorderSide(color: Colors.grey),
//                                       ),
//                                       hintText: 'Location',
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 if (state.selectedCityButton != 'All Cities')
//                                   StatefulBuilder(
//                                       builder: (context, StateSetter setState) {
//                                     return Chip(
//                                       backgroundColor: Colors.blue,
//                                       label: Text(
//                                         state.selectedCityButton,
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       deleteIcon: Icon(
//                                         Icons.close,
//                                         color: Colors.white,
//                                       ),
//                                       onDeleted: () {
//                                         setState(() {
//                                           filterFormBloc
//                                               .add(ClearSelectedCity());
//                                         });
//                                       },
//                                     );
//                                   }),

//                                       Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 20, right: 20),
//                                   child: Divider(
//                                     color: Colors.grey,
//                                     thickness: 1.5,
//                                   ),
//                                 ),
//                                 SizedBox(height: 15),
//                                 Container(
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.97,
//                                   height: 40,
//                                   child: Row(
//                                     children: const [
//                                       Icon(Icons.directions_car_outlined),
//                                       SizedBox(width: 10),
//                                       Text(
//                                         'Car Type',
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 23,
//                                             fontWeight: FontWeight.w500),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(height: 20),
//                                 Container(
//                                   height: 55,
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         width: 150,
//                                         height: 55,
//                                         color: Colors.white,
//                                         child: ElevatedButton(
//                                           onPressed: () {
//                                             filterFormBloc.add(
//                                                 UpdateFormType('Personal'));
//                                             // print('personal');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 state.selectedFormType ==
//                                                         'Personal'
//                                                     ? Colors.blue
//                                                     : Colors.white,
//                                           ),
//                                           child: Text(
//                                             'Personal',
//                                             style: TextStyle(
//                                               color: state.selectedFormType ==
//                                                       'Personal'
//                                                   ? Colors.white
//                                                   : Colors.black,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(width: 10),
//                                       Container(
//                                         width: 150,
//                                         height: 55,
//                                         color: Colors.white,
//                                         child: ElevatedButton(
//                                           onPressed: () {
//                                             // print('Transport');
//                                             filterFormBloc.add(
//                                                 UpdateFormType('Transport'));
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 state.selectedFormType ==
//                                                         'Transport'
//                                                     ? Colors.blue
//                                                     : Colors.white,
//                                           ),
//                                           child: Text('Transport',
//                                               style: TextStyle(
//                                                 color: state.selectedFormType ==
//                                                         'Transport'
//                                                     ? Colors.white
//                                                     : Colors.black,
//                                               )),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 if (state.selectedFormType == 'Personal')
//                                   PersonalForm(),
//                                 if (state.selectedFormType == 'Transport')
//                                   TransportForm(),

//                                 ],
//                               ),
//                             );
//                           },
//                           childCount: 1,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: Container(
//         height: 50,
//         width: MediaQuery.of(context).size.width * 0.75,
//         child: ElevatedButton(
//           onPressed: () {

//             filterFormBloc.add(PerformSearch());
//             print('Filtered data in filterform: ${filterFormBloc.state.filteredData.length}');
//             Navigator.of(context).pop();
//           //  Navigator.of(context).pushNamed('/');

//           },
//           child: const Text(
//             'Search',
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/filter_form_bloc.dart';
import 'bloc/filter_form_event.dart';
import 'bloc/filter_form_state.dart';
import 'personalOrTransport/personalForm.dart';
import 'personalOrTransport/transportForm.dart';

class FilterForm extends StatefulWidget {
  @override
  _FilterFormState createState() => _FilterFormState();
}

class _FilterFormState extends State<FilterForm> {
  late FilterFormBloc filterFormBloc;
  @override
  void initState() {
    super.initState();
    filterFormBloc = BlocProvider.of<FilterFormBloc>(context);
    filterFormBloc.add(ResetForm());
  }

  @override
  Widget build(BuildContext context) {
    // final filterFormBloc = BlocProvider.of<FilterFormBloc>(context);

    return Scaffold(
      body: BlocBuilder<FilterFormBloc, FilterFormState>(
        bloc: filterFormBloc,
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 30,
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        automaticallyImplyLeading: false,
                        backgroundColor: Colors.white,
                        pinned: true,
                        elevation: 5,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/');
                              },
                              icon: Icon(Icons.close, color: Colors.black),
                            ),
                            Text('Filter',
                                style: TextStyle(color: Colors.black)),
                            IconButton(
                              onPressed: () {
                                filterFormBloc.add(ResetForm());
                              },
                              icon: Icon(Icons.refresh, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  Container(
                                    height: 55,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 55,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 216, 214, 214)),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              filterFormBloc.add(
                                                  UpdateBuyRentButton('Buy'));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: filterFormBloc
                                                          .state
                                                          .selectedButton ==
                                                      'Buy'
                                                  ? Colors.blue
                                                  : Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                            ),
                                            child: Text(
                                              'Buy',
                                              style: TextStyle(
                                                color: filterFormBloc.state
                                                            .selectedButton ==
                                                        'Buy'
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          width: 150,
                                          height: 55,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 216, 214, 214)),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              filterFormBloc.add(
                                                  UpdateBuyRentButton('Rent'));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: filterFormBloc
                                                          .state
                                                          .selectedButton ==
                                                      'Rent'
                                                  ? Colors.blue
                                                  : Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                            ),
                                            child: Text(
                                              'Rent',
                                              style: TextStyle(
                                                color: filterFormBloc.state
                                                            .selectedButton ==
                                                        'Rent'
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    height: 35,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: filterFormBloc.cities.length,
                                      itemBuilder: (context, index) {
                                        return StatefulBuilder(
                                          builder:
                                              (context, StateSetter setState) {
                                            return Row(
                                              children: [
                                                SizedBox(width: 5),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                          color: const Color
                                                              .fromARGB(255,
                                                              216, 214, 214)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      filterFormBloc.add(
                                                          UpdateCityButton(
                                                              filterFormBloc
                                                                      .cities[
                                                                  index]));
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor: filterFormBloc
                                                                  .state
                                                                  .selectedCityButton ==
                                                              filterFormBloc
                                                                  .cities[index]
                                                          ? Colors.blue
                                                          : Colors.white,
                                                            shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                                    ),
                                                    child: Text(
                                                      filterFormBloc
                                                          .cities[index],
                                                      style: TextStyle(
                                                        color: filterFormBloc
                                                                    .state
                                                                    .selectedCityButton ==
                                                                filterFormBloc
                                                                        .cities[
                                                                    index]
                                                            ? Colors.white
                                                            : Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: TextField(
                                      onChanged: (text) {
                                        if (text.isNotEmpty) {
                                          filterFormBloc.showCityDropDown(
                                              context, text, filterFormBloc);
                                        }
                                      },
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                        hintText: 'Location',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  if (state.selectedCityButton != 'All Cities')
                                    StatefulBuilder(builder:
                                        (context, StateSetter setState) {
                                      return Chip(
                                        backgroundColor: Colors.blue,
                                        label: Text(
                                          state.selectedCityButton,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        deleteIcon: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                        onDeleted: () {
                                          setState(() {
                                            filterFormBloc
                                                .add(ClearSelectedCity());
                                          });
                                        },
                                      );
                                    }),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Divider(
                                      color: Colors.grey,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.97,
                                    height: 40,
                                    child: Row(
                                      children: const [
                                        Icon(Icons.directions_car_outlined),
                                        SizedBox(width: 10),
                                        Text(
                                          'Car Type',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 23,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    height: 55,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 55,
                                          color: Colors.white,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              filterFormBloc.add(
                                                  UpdateFormType('Personal'));
                                              // print('personal');
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  state.selectedFormType ==
                                                          'Personal'
                                                      ? Colors.blue
                                                      : Colors.white,
                                                        shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                            ),
                                            child: Text(
                                              'Personal',
                                              style: TextStyle(
                                                color: state.selectedFormType ==
                                                        'Personal'
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          width: 150,
                                          height: 55,
                                          color: Colors.white,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              // print('Transport');
                                              filterFormBloc.add(
                                                  UpdateFormType('Transport'));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  state.selectedFormType ==
                                                          'Transport'
                                                      ? Colors.blue
                                                      : Colors.white,
                                                        shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                            ),
                                            child: Text('Transport',
                                                style: TextStyle(
                                                  color:
                                                      state.selectedFormType ==
                                                              'Transport'
                                                          ? Colors.white
                                                          : Colors.black,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  if (state.selectedFormType == 'Personal')
                                    PersonalForm(),
                                  if (state.selectedFormType == 'Transport')
                                    TransportForm(),
                                ],
                              ),
                            );
                          },
                          childCount: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.75,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
          ),
          onPressed: () {
            filterFormBloc.add(PerformSearch());
            print(
                'Filtered data in filterform: ${filterFormBloc.state.filteredData.length}');
            Navigator.of(context).pop();
          },
          child: const Text(
            'Search',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
