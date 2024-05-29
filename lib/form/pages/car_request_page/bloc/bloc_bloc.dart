import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';

class NewRequestBloc extends Bloc<NewRequestEvent, NewRequestUpdateState> {
  
  final description = TextEditingController();
  final price = TextEditingController();
  final phoneNumber = TextEditingController();
  bool allFieldsFilled = false;

  List<String> cities = [
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
  String selectedButton1 = "";
  String selectedButton2 = "";
  bool isContainerVisible = false;
  NewRequestBloc()
      : super(const NewRequestUpdateState(selectedCity: '', isVisible: false,));

  @override
  Stream<NewRequestUpdateState> mapEventToState(NewRequestEvent event) async* {
    if (event is UpdateCityRequest) {
      yield state.copyWith(selectedCity: event.newValue);
    }
    if (event is UpdateToggleButton1) {
      if (selectedButton1 == event.buttonName1) {
        selectedButton1 = "";
        isContainerVisible = false;
        yield state.copyWith(isVisible: false);
      } else {
        yield state.copyWith(isVisible: true);
        selectedButton1 = event.buttonName1;
        isContainerVisible = true;
      }
    } else if (event is UpdateToggleButton2) {
      if (selectedButton2 == event.buttonName2) {
        selectedButton2 = "";
        isContainerVisible = false;
        yield state.copyWith(isVisible: false);
      } else {
        yield state.copyWith(isVisible: true);
        selectedButton2 = event.buttonName2;
        isContainerVisible = true;
      }
    }
  }
  //  void updateAutovalidateMode(AutovalidateMode? autovalidateMode) {
  //  emit(state.copyWith(autovalidateMode: autovalidateMode));
  // }


 

 

 



  void checkFields(NewRequestBloc newRequestBloc) {
    // newRequestBloc.selectedCity;
    if (description.text.isNotEmpty &&
        price.text.isNotEmpty &&
        newRequestBloc.state.selectedCity != null) {
      allFieldsFilled = true;
    } else {
      allFieldsFilled = false;
    }
  }

 
}
