// import 'package:carsell/form/pages/car_type_for_rent/rent_isar/car_rent_user/car_rent_user.dart';
// import 'package:carsell/form/pages/car_type_forsale/isar/car_sell_user/car_sell_user.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:isar/isar.dart';

// import '../../car_type_forsale/isar/isar_services.dart';
// import 'filter_form_event.dart';
// import 'filter_form_state.dart';

// class FilterFormBloc extends Bloc<FilterFormEvent, FilterFormState> {
//   final IsarService isarService;
//   List<String> cities = [
//     'All Cities',
//     'Nashik',
//     'Mumbai',
//     'Pune',
//     'Nagpur',
//     'Banglore',
//     'Amritsar',
//     'Varanasi',
//     'Bhopal'
//   ];
//   String? selectedCity;

//   FilterFormBloc(this.isarService)
//       : super(const FilterFormState(
//             selectedButton: 'Buy', selectedCityButton: 'All Cities', selectedFormType: 'Personal', selectedBrand: '', selectedVerification: ''));

//   @override
//   Stream<FilterFormState> mapEventToState(FilterFormEvent event) async* {
//     if (event is UpdateBuyRentButton) {
//       yield state.copyWith(selectedButton: event.buyRentButton);
//     }

//     if (event is UpdateCityButton) {
//       yield state.copyWith(selectedCityButton: event.cityButton);
//     } else if (event is ClearSelectedCity) {
//       yield state.copyWith(selectedCityButton: 'All Cities');
//     }
//     else if(event is UpdateFormType)
//     {
//       yield state.copyWith(selectedFormType: event.formType);
//     }
//      else if(event is UpdateBrand)
//     {
//       yield state.copyWith(selectedBrand: event.brand);
//     }
//     else if(event is UpdateVerificationType)
//     {
//       yield state.copyWith(selectedVerification: event.verificationType);
//     }
//     else if(event is PerformSearch)
//     {
//       final  filteredData = await  fetchDataAndFilter();
//       yield state.copyWith(filteredData: filteredData);
//     }

//   }

//   Future <List<dynamic>> fetchDataAndFilter() async
//   {
//      final isar = await isarService.db;
//      if(state.selectedButton == 'Buy')
//      {
//       final allData = await isar.carSellUsers.where().findAll();
//       return allData.where((data) => flterCondition(data)).toList();
//      }
//      else if(state.selectedButton == 'Rent')
//      {
//       final allData = await isar.carRentUsers.where().findAll();
//       return allData.where((data) => flterCondition(data)).toList();
//      }
//       return [];
//   }

//   bool flterCondition(dynamic data)
//   {
//     if(state.selectedCityButton != 'All Cities' && data.city != state.selectedCityButton)
//     {
//       return false;
//     }
//     else if (state.selectedBrand.isNotEmpty && data.brand != state.selectedBrand)
//     {
//       return false;
//     }
//     else if(state.selectedVerification.isNotEmpty && data.verifyCar != state.selectedVerification)
//     {
//       return false;
//     }
//      return true;
//   }

//   void showCityDropDown(
//       BuildContext context, String text, FilterFormBloc filterFormBloc) {
//     final filteredCities = filterFormBloc.cities
//         .where((city) => city.toLowerCase().contains(text.toLowerCase()))
//         .toList();
//     showMenu(
//         context: context,
//       //  position: const RelativeRect.fromLTRB(50, 200, 50, 200),
//       position: const RelativeRect.fromLTRB(100, 300, 100, 20),
//         items: filteredCities
//             .map(
//                 (city) => PopupMenuItem<String>(
//                  padding: EdgeInsets.only(left: 50,right: 50),
//                   value: city, child: Text(city),
//                   onTap: () {
//                    //   filterFormBloc.add(SelectCityFromDropdown(city));
//                    filterFormBloc.add(UpdateCityButton(city));
//                   },
//                   ))
//             .toList());

//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:newcarapp/form/pages/car_type_for_rent/rent_isar/car_rent_user/car_rent_user.dart';
import 'package:newcarapp/form/pages/car_type_forsale/isar/car_sell_user/car_sell_user.dart';

import '../../car_type_forsale/isar/isar_services.dart';
import 'filter_form_event.dart';
import 'filter_form_state.dart';

// class FilterFormBloc extends Bloc<FilterFormEvent, FilterFormState> {
//     final IsarService isarService = IsarService();
//   List<String> cities = [
//     'All Cities',
//     'Nashik',
//     'Mumbai',
//     'Pune',
//     'Nagpur',
//     'Banglore',
//     'Amritsar',
//     'Varanasi',
//     'Bhopal'
//   ];
//   String? selectedCity;

//   FilterFormBloc()
//       : super(const FilterFormState(
//             selectedButton: 'Buy', selectedCityButton: 'All Cities', selectedFormType: 'Personal', selectedBrand: '', selectedVerification: '', filteredData: []));
//             // {
//             //     add(PerformSearch());
//             // }

//   @override
//   Stream<FilterFormState> mapEventToState(FilterFormEvent event) async* {
//     if (event is UpdateBuyRentButton) {
//       yield state.copyWith(selectedButton: event.buyRentButton);
//     }

//     if (event is UpdateCityButton) {
//       yield state.copyWith(selectedCityButton: event.cityButton);
//     } else if (event is ClearSelectedCity) {
//       yield state.copyWith(selectedCityButton: 'All Cities');
//     }
//     else if(event is UpdateFormType)
//     {
//       yield state.copyWith(selectedFormType: event.formType);
//     }
//      else if(event is UpdateBrand)
//     {
//       yield state.copyWith(selectedBrand: event.brand);
//     }
//     else if(event is UpdateVerificationType)
//     {
//       yield state.copyWith(selectedVerification: event.verificationType);
//     }
//     else if(event is PerformSearch)
//     {
//        print('PerformSearch event triggered');
//       final  filteredData = await  fetchDataAndFilter();
//       yield state.copyWith(filteredData: filteredData);
//       print('Filtered data stream: ${filteredData.length}');
//     }

//   }
//  Future<List<dynamic>> fetchDataAndFilter() async {
//     final isar = await isarService.db;
//     final sellData = await isar.carSellUsers.where().findAll();
//     final rentData = await isar.carRentUsers.where().findAll();

//     List<dynamic> allData = [];
//     if (state.selectedButton == 'Buy') {
//       allData = sellData;
//     } else if (state.selectedButton == 'Rent') {
//       allData = rentData;
//     } else {
//       allData = [...sellData, ...rentData];
//     }

//     final filteredData = allData.where((data) => filterCondition(data)).toList();
//     print('Filtered data length: ${filteredData.length}');

//     return filteredData;
//   }

//     bool filterCondition(dynamic data) {
//     if (state.selectedCityButton != 'All Cities' && data.city != state.selectedCityButton) {
//       return false;
//     }
//     if (state.selectedBrand.isNotEmpty && data.brand != state.selectedBrand) {
//       return false;
//     }

//     return true;
//   }

//   void showCityDropDown(
//       BuildContext context, String text, FilterFormBloc filterFormBloc) {
//     final filteredCities = filterFormBloc.cities
//         .where((city) => city.toLowerCase().contains(text.toLowerCase()))
//         .toList();
//     showMenu(
//         context: context,
//       //  position: const RelativeRect.fromLTRB(50, 200, 50, 200),
//       position: const RelativeRect.fromLTRB(100, 300, 100, 20),
//         items: filteredCities
//             .map(
//                 (city) => PopupMenuItem<String>(
//                  padding: EdgeInsets.only(left: 50,right: 50),
//                   value: city, child: Text(city),
//                   onTap: () {
//                    //   filterFormBloc.add(SelectCityFromDropdown(city));
//                    filterFormBloc.add(UpdateCityButton(city));
//                   },
//                   ))
//             .toList());

//   }
// }

class FilterFormBloc extends Bloc<FilterFormEvent, FilterFormState> {
  List<String> cities = [
    'All Cities',
    'Nashik',
    'Mumbai',
    'Pune',
    'Nagpur',
    'Banglore',
    'Amritsar',
    'Varanasi',
    'Bhopal'
  ];
  String? selectedCity;
  final IsarService isarService = IsarService();
  late List<dynamic> allData;
  FilterFormBloc()
      : super(const FilterFormState(
            selectedButton: '',
            selectedCityButton: 'All Cities',
            selectedFormType: 'Personal',
            selectedBrand: '',
            selectedVerification: '',
            filteredData: []));
  /*
            {
               on<PerformSearch>(_onPerformSearch);
    on<ResetForm>(_onResetForm);
            }
*/
  /*

              Future<void> _onPerformSearch(PerformSearch event, Emitter<FilterFormState> emit) async {
    print('PerformSearch event triggered');
    final filteredData = await fetchDataAndFilter();
    emit(state.copyWith(filteredData: filteredData));
    print('Filtered data stream: ${filteredData.length}');
  }

  Future<void> _onResetForm(ResetForm event, Emitter<FilterFormState> emit) async {
    emit(FilterFormState(selectedButton: 'Buy', filteredData: [], selectedCityButton: '', selectedFormType: '', selectedBrand: '', selectedVerification: ''));
  }

*/

  @override
  Stream<FilterFormState> mapEventToState(FilterFormEvent event) async* {
    if (event is UpdateBuyRentButton) {
      yield state.copyWith(selectedButton: event.buyRentButton);
    }

    if (event is UpdateCityButton) {
      yield state.copyWith(selectedCityButton: event.cityButton);
    } else if (event is ClearSelectedCity) {
      yield state.copyWith(selectedCityButton: 'All Cities');
    } else if (event is UpdateFormType) {
      yield state.copyWith(selectedFormType: event.formType);
    } else if (event is UpdateBrand) {
      yield state.copyWith(selectedBrand: event.brand);
    } else if (event is UpdateVerificationType) {
      yield state.copyWith(selectedVerification: event.verificationType);
    } else if (event is PerformSearch) {
      print('PerformSearch event triggered');
      final filteredData = await fetchDataAndFilter();
      yield state.copyWith(filteredData: filteredData);
      print('Filtered data stream: ${filteredData.length}');
    } else if (event is ResetForm) {
      yield FilterFormState(
          selectedButton: '',
          selectedCityButton: "All Cities",
          selectedFormType: "Personal",
          selectedBrand: "",
          selectedVerification: "",
          filteredData: []);
    }
  }
/*
  Future<List<dynamic>> fetchDataAndFilter() async {
    final isar = await isarService.db;
    List<dynamic> sellData = await isar.carSellUsers.where().findAll();
    List<dynamic> rentData = await isar.carRentUsers.where().findAll();
    List<dynamic> allData = [...sellData, ...rentData];

    final filteredData =
        allData.where((data) => filterCondition(data)).toList();

    return filteredData;
  }
  */
  Future<void> getAllData() async
{
  final isar = await IsarService().db;
  final selData = await isar.carSellUsers.where().findAll();
  final rentData = await isar.carRentUsers.where().findAll();

 
      allData = [...selData, ...rentData];
 
}
  Future<List<dynamic>> fetchDataAndFilter() async 
  {
    final isar = await isarService.db;
    List<dynamic> allData =[];
    if(state.selectedButton == 'Buy')
    {
      allData = await isar.carSellUsers.where().findAll();
    }
    else if(state.selectedButton == 'Rent')
    {
      allData = await isar.carRentUsers.where().findAll();
    }
    else 
    {
      final sellData = await isar.carSellUsers.where().findAll();
      final rentData = await isar.carRentUsers.where().findAll();
      allData = [...sellData, ...rentData];
    }

  allData =
        allData.where((data) => filterCondition(data)).toList();

    return allData;

  }
/*
    final sellData = await isar.carSellUsers.where().findAll();
    final rentData = await isar.carRentUsers.where().findAll();

    List<dynamic> allData = [];
    if (state.selectedButton == 'Buy') {
      allData = sellData;
    } else if (state.selectedButton == 'Rent') {
      allData = rentData;
    } else {
      allData = [...sellData, ...rentData];
    }

    final filteredData =
        allData.where((data) => filterCondition(data)).toList();

    return filteredData;
  }
  */
   bool filterCondition(dynamic data) {
    
        if (state.selectedCityButton != 'All Cities' &&
        data.city != state.selectedCityButton) {
      return false;
    }
    if (state.selectedBrand.isNotEmpty && data.brand != state.selectedBrand) {
      return false;
    }
    if(state.selectedVerification.isNotEmpty && data.verifyCar != state.selectedVerification )
    {
      return false;
    }

   
   return true;
  }
/*
  bool filterCondition(dynamic data) {
    if (state.selectedCityButton != 'All Cities' &&
        data.city != state.selectedCityButton) {
      return false;
    }
    if (state.selectedBrand.isNotEmpty && data.brand != state.selectedBrand) {
      return false;
    }
    if(state.selectedVerification.isNotEmpty && data.verifyCar != state.selectedVerification )
    {
      return false;
    }

    return true;
  }
*/
  void showCityDropDown(
      BuildContext context, String text, FilterFormBloc filterFormBloc) {
    final filteredCities = filterFormBloc.cities
        .where((city) => city.toLowerCase().contains(text.toLowerCase()))
        .toList();
    showMenu(
        context: context,
        //  position: const RelativeRect.fromLTRB(50, 200, 50, 200),
        position: const RelativeRect.fromLTRB(100, 300, 100, 20),
        items: filteredCities
            .map((city) => PopupMenuItem<String>(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  value: city,
                  child: Text(city),
                  onTap: () {
                    //   filterFormBloc.add(SelectCityFromDropdown(city));
                    filterFormBloc.add(UpdateCityButton(city));
                  },
                ))
            .toList());
  }
}
