// ignore_for_file: avoid_print



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../car_type_forsale/isar/isar_services.dart';
import '../../more/car_page.dart';
import '../bloc/bloc_bloc.dart';
import '../bloc/bloc_event.dart';
import '../bloc/bloc_state.dart';
import '../bloc/transportbloc_bloc.dart';
import '../rent_isar/car_rent_user/car_rent_user.dart';
import '../rent_isar/car_rent_user/rent_operations.dart'as data;
import 'personal_car_view.dart';
import 'transport_car_view.dart';
//import '../isar/car_rent_user/car_rent_operation.dart' as user_store;

class CarTypeRent extends StatefulWidget {
  
  const CarTypeRent({super.key, });

  @override
  State<CarTypeRent> createState() => _CarTypeRentState();
}

class _CarTypeRentState extends State<CarTypeRent> {
  @override
  Widget build(BuildContext context) {
    final personalFormBloc = BlocProvider.of<PersonalBloc>(context);
    final transportBlocRent = BlocProvider.of<TransportBlocRent>(context);
  data.RentOperations storedata =data.RentOperations(IsarService());

    return Scaffold(
      body: BlocBuilder<PersonalBloc, PersonalFormUpdateState>(
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
                        title: Text(
                          ' Car For Rent',
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
                                            personalFormBloc
                                                .add(PersonalSelected());
                                            // print('personal');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                state.selectedButton ==
                                                        'Personal'
                                                    ? Colors.blue
                                                    : Colors.white,
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
                                            personalFormBloc
                                                .add(TransportSelected());
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                state.selectedButton ==
                                                        'Transport'
                                                    ? Colors.blue
                                                    : Colors.white,
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
                                SizedBox(
                                  height: 10,
                                ),
                                if (state.selectedButton == 'Personal')
                                  PersonalCarFormRent(),
                                if (state.selectedButton == 'Transport')
                                  TransportCarFormRent(),
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
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
          onPressed: () async {
            final  typeRent = personalFormBloc.carType;
            if (personalFormBloc.state.selectedButton == 'Personal') {

              final vehicleType = personalFormBloc.state.selectedButton;
              final selectedBrand = personalFormBloc.state.selectedBrand;
              final selectRentFrequency = personalFormBloc.state.rentFrequency;
              final selectedCity = personalFormBloc.state.selectedCity;
              final selectedLocation = personalFormBloc.location;
              final selectedCarName = personalFormBloc.carName;
              final selectedDetail = personalFormBloc.carDetail;
              final selectedPrice = personalFormBloc.carPrice;
              final selectedYearValue = personalFormBloc.state.selectedYear;
              final selectedTyreValue = personalFormBloc.state.tyreValue;
              final selectedAccidentalValue =
                  personalFormBloc.state.accidentalValue;
              final selectedColor = personalFormBloc.state.selectedColor;
 if (personalFormBloc.formKeyPersonalRent.currentState!
                  .validate()) {
    CarRentUser datastore = CarRentUser(brand:  selectedBrand, rentFrequency: selectRentFrequency, city: selectedCity!, location: selectedLocation.text, carName: selectedCarName.text, details: selectedDetail.text, price: selectedPrice.text, year: selectedYearValue, tyre: selectedTyreValue, accidental: selectedAccidentalValue, color: selectedColor!, image: '', type: vehicleType, typeRent: typeRent, );

              await storedata.saveDetails(datastore);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Personal Form values stored securely.')),
                );

                  }
          

            } else if (personalFormBloc.state.selectedButton == 'Transport') {


              final vehicleType = personalFormBloc.state.selectedButton;
               final selectedBrand = transportBlocRent.state.selectedBrand;
              final selectRentFrequency = transportBlocRent.state.rentFrequency;
              final selectedCity = transportBlocRent.state.selectedCity;
              final selectedLocation = transportBlocRent.location;
              final selectedCarName = transportBlocRent.carName;
              final selectedDetail = transportBlocRent.carDetails;
              final selectedPrice = transportBlocRent.carPrice;
            
              final selectedYearValue = transportBlocRent.state.selectedYear;
              final selectedTyreValue = transportBlocRent.state.tyreValue;
              final selectedAccidentalValue =
                  transportBlocRent.state.accidentalValue;
              final selectedColor = transportBlocRent.state.selectedColor;
if (transportBlocRent.formKeyTransportRent.currentState!
                  .validate()) {
     CarRentUser userData    =    CarRentUser(brand: selectedBrand, rentFrequency: selectRentFrequency, city: selectedCity!, location: selectedLocation.text, carName: selectedCarName.text, details: selectedDetail.text, price: selectedPrice.text, year: selectedYearValue, tyre: selectedTyreValue, accidental: selectedAccidentalValue, color: selectedColor!, image: '', type: vehicleType, typeRent: typeRent,);
      await storedata.saveDetails(userData);
          ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Transport Form values stored securely.')),
                );
      
                  }
 

            }
          },
          child: const Text('Publish', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}




