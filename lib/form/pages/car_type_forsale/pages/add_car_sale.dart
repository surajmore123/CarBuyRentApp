
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../more/car_page.dart';
import '../bloc/bloc_bloc.dart';
import '../bloc/bloc_event.dart';
import '../bloc/bloc_state.dart';
import '../bloc/bloc_transport_bloc.dart';
import '../isar/car_sell_user/car_sell_operation.dart';
import '../isar/car_sell_user/car_sell_operation.dart'as user_store;
import '../isar/car_sell_user/car_sell_user.dart';
import '../isar/isar_services.dart';
import 'personal_car_view.dart';
import 'transport_car_view.dart';

// class CarTypeState extends StatelessWidget {
//   const CarTypeState({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final formBloc = BlocProvider.of<FormBloc>(context);
//     final transportFormBloc = BlocProvider.of<TransportFormBloc>(context);

//     return Scaffold(
//       body: BlocBuilder<FormBloc, FormUpdateState>(
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
//                         elevation: 0,
//                         title: const Text(
//                           ' Car For Sale',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         centerTitle: true,
//                         leading: IconButton(
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => CarPage()));
//                             },
//                             icon: const Icon(
//                               Icons.arrow_back_sharp,
//                               color: Colors.blue,
//                             )),
//                       ),
//                       SliverList(
//                         delegate: SliverChildBuilderDelegate(
//                           (context, index) {
//                             return Column(
//                               children: [
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
//                                             formBloc.add(PersonalSelected());
//                                             // print('personal');
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 state.selectedButton ==
//                                                         'Personal'
//                                                     ? Colors.blue
//                                                     : Colors.white,
//                                           ),
//                                           child: Text(
//                                             'Personal',
//                                             style: TextStyle(
//                                               color: state.selectedButton ==
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
//                                             formBloc.add(TransportSelected());
//                                           },
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor:
//                                                 state.selectedButton ==
//                                                         'Transport'
//                                                     ? Colors.blue
//                                                     : Colors.white,
//                                           ),
//                                           child: Text('Transport',
//                                               style: TextStyle(
//                                                 color: state.selectedButton ==
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
//                                 if (state.selectedButton == 'Personal')
//                                   const PersonalCarForm(),
//                                 if (state.selectedButton == 'Transport')
//                                   const TransportCarForm(),
//                               ],
//                             );
//                           },
//                           childCount: 1,
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//       //|| selectedcarVeriValue != null && selectedcarVeriValue.isNotEmpty
//       bottomNavigationBar: Container(
//         height: 50,
//         width: MediaQuery.of(context).size.width * 0.75,
//         child: ElevatedButton(
//           onPressed: () async {
//             if (formBloc.state.selectedButton == 'Personal') {
//               if (formBloc.formKeyPersonalSale.currentState!.validate()) {
//               //  final selectedBrand = formBloc.state.selectedBrandButton;
//               final selectedBrand = formBloc.state.selectedBrandButton;
//                 final selectedcarVeriValue =
//                     formBloc.state.updateSelectedVeriCarValue;
//                 final selectedCitiesValue = formBloc.state.selectedCity;
//                 await formBloc.storeCarNameValue();
//                 String? storedCarName = await formBloc.getCarNameValue();
//                 await formBloc.storeCarDetails();
//                 String? storedCarDetails = await formBloc.getCarDetails();
//                 await formBloc.storeCarPrice();
//                 String? storedCarPrice = await formBloc.getCarPrice();
//                 final selectedYear = formBloc.state.selectedYear;
//                 final selectedTyreValue =
//                     formBloc.state.updatedSelectedTyreValue;
//                 await formBloc.storeSeletedTyreValue(selectedTyreValue);
//                 String? storeTyreValue = await formBloc.getStoreTyreValue();
//                 final selectedAccidentalValue =
//                     formBloc.state.updatedSelectedAccidentalValue;
//                 await formBloc
//                     .storeSelectedAccidentalValue(selectedAccidentalValue);
//                 String? storeAccidentalValue =
//                     await formBloc.getStoreAccidentalValue();
//                 final selectedCityValue = formBloc.state.selectedColor;
//                 await formBloc.storeSelectedColorValue(selectedCityValue);
//                 String? storeColorValue = await formBloc.getStoreColorValue();

//                 if (formBloc.state.imageSelected) {
//                   await formBloc.storeImage(formBloc.state.image!);
//                 }

//                 formBloc.storeSelectedBrand(selectedBrand);
//                 await formBloc
//                     .storeSelectedVerificationValue(selectedcarVeriValue);

//                 await formBloc.storeSelectedCityValue(selectedCitiesValue);
//                 await formBloc.storeSelectedYear(selectedYear);

//                 await formBloc.storeLocationValue();
//                 String? storedLocation =
//                     await formBloc.storage.read(key: 'location');
//                 String? storedSelectedYear = await formBloc.getSelectedYear();

//                 print('selected brand: $selectedBrand');
//                 print('Selected verification value: $selectedcarVeriValue');
//                 print('selected city: $selectedCitiesValue');
//                 print('Location : $storedLocation');
//                 print('CarName : $storedCarName');
//                 print('CarDetails : $storedCarDetails');
//                 print('CarPrice : $storedCarPrice');
//                 print('Selected Year: $storedSelectedYear');
//                 print('Selected tyre value: $storeTyreValue');
//                 print('Selected accidental value: $storeAccidentalValue');
//                 print('Selected color value: $storeColorValue');
//                 print('Image value: ${formBloc.state.image}');
//                 // ignore: use_build_context_synchronously
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                       content: Text('Personal Form values stored securely.')),
//                 );
//               }
//             } else if (formBloc.state.selectedButton == 'Transport') {
//               if (transportFormBloc.formKeyTransportSale.currentState!
//                   .validate()) {
//                 final selectedButton = transportFormBloc.state.selectedBrand;
//                 final selectedVerificationValue =
//                     transportFormBloc.state.selectedVerificationValue;
//                 await transportFormBloc
//                     .storeSelectedVerificationValue(selectedVerificationValue);
//                 String? storeVerificationValue =
//                     await transportFormBloc.getVerificationValue();
//                 final selectedCityValue = transportFormBloc.state.selectedCity;
//                 await transportFormBloc.storeCityValue(selectedCityValue!);
//                 String? storeCityValue = await transportFormBloc.getCityValue();
//                 await transportFormBloc.storeLocationValue();
//                 String? storeLocationValue =
//                     await transportFormBloc.getLocationValue();
//                 transportFormBloc.storeSelectedBrand(selectedButton);

//                 await transportFormBloc.storeCarNameValue();
//                 String? storeCarNameValue =
//                     await transportFormBloc.getCarNameValue();
//                 await transportFormBloc.storeCarDetails();
//                 String? storeCarDetails =
//                     await transportFormBloc.getCarDetails();
//                 await transportFormBloc.storeCarPrice();
//                 String? storeCarPrice = await transportFormBloc.getCarPrice();

//                 final selectedYear = transportFormBloc.state.selectedYear;
//                 await transportFormBloc.storeStoreYear(selectedYear!);
//                 String? storeYear = await transportFormBloc.getStoreYear();
//                 final selectedAccidentalValue =
//                     transportFormBloc.state.accidentalValue;
//                 await transportFormBloc
//                     .storeAccidentalValue(selectedAccidentalValue);
//                 String? storeAccidentalValue =
//                     await transportFormBloc.getStoreAccidentalValue();
//                 final selectedColor = transportFormBloc.state.selectedColor;
//                 await transportFormBloc.storeColorValue(selectedColor!);
//                 String? storeColorValue =
//                     await transportFormBloc.getStoreColorValue();

//                 if (formBloc.state.imageSelected) {
//                   await formBloc.storeImage(transportFormBloc.state.image!);
//                 }

//                 print('selected brand: $selectedButton');
//                 print('verification value: $storeVerificationValue');
//                 print('city value: $storeCityValue');
//                 print('location value: $storeLocationValue');
//                 print('CarName value: $storeCarNameValue');
//                 print('CarDetails: $storeCarDetails');
//                 print('CarPrice: $storeCarPrice');
//                 print('storeYear: $storeYear');
//                 print('AccidentalValue: $storeAccidentalValue');
//                 print('ColorValue: $storeColorValue');
//                 print('Image value: ${transportFormBloc.state.image}');
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                       content: Text('Transport Form values stored securely.')),
//                 );
//               }
//             }
//           },
//           child: const Text(
//             'Publish',
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//       ),
//     );
//   }
// }

class CarTypeState extends StatelessWidget {
  
  const CarTypeState({super.key});

  @override
  Widget build(BuildContext context) {
    final formBloc = BlocProvider.of<FormBloc>(context);
    final transportFormBloc = BlocProvider.of<TransportFormBloc>(context);
   user_store.UserOperations storeData = user_store.UserOperations(IsarService());

    return Scaffold(
      body: BlocBuilder<FormBloc, FormUpdateState>(
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
                        elevation: 0,
                        title: const Text(
                          ' Car For Sale',
                          style: TextStyle(color: Colors.black),
                        ),
                        centerTitle: true,
                        leading: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CarPage()));
                            },
                            icon: const Icon(
                              Icons.arrow_back_sharp,
                              color: Colors.blue,
                            )),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.97,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 150,
                                        height: 55,
                                        color: Colors.white,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            formBloc.add(PersonalSelected());
                                            // print('personal');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                state.selectedButton ==
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
                                              color: state.selectedButton ==
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
                                            formBloc.add(TransportSelected());
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                state.selectedButton ==
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
                                                color: state.selectedButton ==
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
                                if (state.selectedButton == 'Personal')
                                  const PersonalCarForm(),
                                if (state.selectedButton == 'Transport')
                                  const TransportCarForm(),
                              ],
                            );
                          },
                          childCount: 1,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
      //|| selectedcarVeriValue != null && selectedcarVeriValue.isNotEmpty
      bottomNavigationBar: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.75,
        child: ElevatedButton(
          onPressed: () async {
            final storeData = UserOperations(IsarService());
//await storeData.saveCarType(carType);
final typesale = formBloc.carType;
            if (formBloc.state.selectedButton == 'Personal') {
              final vehicleType = formBloc.state.selectedButton;
              final selectedBrand = formBloc.state.selectedBrandButton;
              final selectedcarVeriValue =
                  formBloc.state.updateSelectedVeriCarValue;
              final selectedCitiesValue = formBloc.state.selectedCity;
              final selectedLocation = formBloc.locationController;
              final selectedCarName = formBloc.carNameController;
              final selectedDetail = formBloc.carDetailsController;
              final selectedPrice = formBloc.carPrice;
              final selectedYear = formBloc.state.selectedYear;
              final selectedTyreValue = formBloc.state.updatedSelectedTyreValue;
              final selectedAccidentalValue =
                  formBloc.state.updatedSelectedAccidentalValue;
              final selectedColor = formBloc.state.selectedColor;
              
              if (formBloc.formKeyPersonalSale.currentState!.validate()) {

              CarSellUser userData = CarSellUser(
                brand: selectedBrand,
                verifyCar: selectedcarVeriValue,
                city: selectedCitiesValue!,
                location: selectedLocation.text,
                carName: selectedCarName.text,
                carDescription: selectedDetail.text,
                carPrice: selectedPrice.text,
                year: selectedYear,
                tyre: selectedTyreValue,
                accidental: selectedAccidentalValue,
                color: selectedColor!,
                image: '', type: vehicleType, typeSale: typesale , 
              );

              await storeData.saveUser(userData);
                 ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Personal Form values stored securely.')),
                );
              }

            } else if (formBloc.state.selectedButton == 'Transport') {

              final vehicleType = formBloc.state.selectedButton;
              final selectedButton = transportFormBloc.state.selectedBrand;
              final selectedVerificationValue =
                  transportFormBloc.state.selectedVerificationValue;
              final selectedCityValue = transportFormBloc.state.selectedCity;
              final selectedLocation = transportFormBloc.locationController;
              final selectedCarName = transportFormBloc.carName;
              final selectedDetail = transportFormBloc.carDescriptionController;
              final selectedPrice = transportFormBloc.carPriceController;
              final selectedYear = transportFormBloc.state.selectedYear;
              final selectedTyreValue = transportFormBloc.state.tyreValue;
              final selectedAccidentalValue =
                  transportFormBloc.state.accidentalValue;
              final selectedColor = transportFormBloc.state.selectedColor;
  if (transportFormBloc.formKeyTransportSale.currentState!
                  .validate()) {
      CarSellUser userData = CarSellUser(
                  brand: selectedButton,
                  verifyCar: selectedVerificationValue,
                  city: selectedCityValue!,
                  location: selectedLocation.text,
                  carName: selectedCarName.text,
                  carDescription: selectedDetail.text,
                  carPrice: selectedPrice.text,
                  year: selectedYear!,
                  tyre: selectedTyreValue,
                  accidental: selectedAccidentalValue,
                  color: selectedColor!,
                  image: '', type: vehicleType, typeSale: typesale , );
                  await storeData.saveUser(userData);
                    ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Transport Form values stored securely.')),
                );
                  }
        

            }
          },
          child: const Text(
            'Publish',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}


