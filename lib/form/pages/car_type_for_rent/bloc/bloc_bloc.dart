import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';


class PersonalBloc extends Bloc<PersonalFormEvent, PersonalFormUpdateState> {
  final String carType = 'rent';
  final location = TextEditingController();
  final carName = TextEditingController();
  final carDetail = TextEditingController();
  final carPrice = TextEditingController();
   final picker = ImagePicker();
  bool load = false;
  late File image;
 final formKeyPersonalRent = GlobalKey<FormState>();
  List<String> cities = [
 'Nashik',
    'Mumbai',
    'Pune',
    'Nagpur',
    'Banglore',
    'Amritsar',
    'Varanasi',
    'Bhopal'
  ];String? selectedCity;

    List<String> colors = ['Black', 'Red', 'Yello', 'White', 'Violet', 'Purple'];
  String? selectedColor;
  PersonalBloc()
      : super(PersonalFormUpdateState(
          selectedButton: 'Personal',
          selectedBrand: '',
          rentFrequency: '',
          selectedCity: '', selectedYear: 'Year', tyreValue: '', accidentalValue: '', selectedColor: '',  load: false,
            image: File(''),
        ));

  @override
  Stream<PersonalFormUpdateState> mapEventToState(
      PersonalFormEvent event) async* {
    if (event is PersonalSelected) {
      yield PersonalFormUpdateState(
        selectedButton: 'Personal',
        selectedBrand: '',
        rentFrequency: '',
        selectedCity: '', selectedYear: 'Year', tyreValue: '', accidentalValue: '', selectedColor: '', load: false,image: File(''),
      );
    } else if (event is TransportSelected) {
      yield PersonalFormUpdateState(
        selectedButton: 'Transport',
        selectedBrand: '',
        rentFrequency: '',
        selectedCity: '', selectedYear: 'Year', tyreValue: '', accidentalValue: '', selectedColor: '',load: false,image: File(''),
      );
    } else if (event is SelectedBrand) {
      yield state.copyWith(selectedBrand: event.brand);
    } else if (event is RentFrequecy) {
      yield state.copyWith(rentFrequency: event.newValue);
    }
    else if(event is UpdateCity)
    {
      yield state.copyWith(selectedCity: event.newValue);
    }
    else if(event is YearSelected)
    {
      final String? selectedYear = await selectYear(event.context);
      if(selectedYear != null)
      {
         yield state.copyWith(selectedYear: selectedYear);
      }
    }

    else if(event is UpdateTyre)
    {
      yield state.copyWith(tyreValue: event.newValue);
    }
    else if (event is UpdateAccidental) {
      yield state.copyWith(accidentalValue: event.newValue);
    } else if (event is UpdateColor) {
      yield state.copyWith(selectedColor: event.newValue);
    }
    else if (event is ImageSelected) {
      final pickedFile = await picker.pickImage(source: event.source);
      if (pickedFile != null) {
        image = File(pickedFile.path);
        load = true;
        yield state.copyWith(image: image, load: load);
      } else {
        // ignore: avoid_print
        print('No image selected.');
      }
    } 
  }

 

  void rentFrequencyDialog(
      BuildContext context, PersonalBloc personalFormBloc) {
    String? tempSelectedValue;
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, StateSetter setState) {
            return Dialog(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 16,
              insetPadding: const EdgeInsets.fromLTRB(28, 100, 28, 150),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade500),
                        ),
                        color: Colors.white,
                      ),
                      child: const Center(child: Text('Rent Frequency')),
                    ),
                    SizedBox(
                      height: 240,
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade500),
                              ),
                              color: Colors.white,
                            ),
                            child: RadioListTile(
                              title: const Text('Yearly'),
                              value: 'Yearly',
                              groupValue: tempSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  tempSelectedValue = value.toString();
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade500),
                              ),
                              color: Colors.white,
                            ),
                            child: RadioListTile(
                              title: const Text('Monthly'),
                              value: 'Monthly',
                              groupValue: tempSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  tempSelectedValue = value.toString();
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade500),
                              ),
                              color: Colors.white,
                            ),
                            child: RadioListTile(
                              title: const Text('Weekly'),
                              value: 'Weekly',
                              groupValue: tempSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  tempSelectedValue = value.toString();
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade500),
                              ),
                              color: Colors.white,
                            ),
                            child: RadioListTile(
                              title: const Text('Daily'),
                              value: 'Daily',
                              groupValue: tempSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  tempSelectedValue = value.toString();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel')),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  personalFormBloc
                                      .add(RentFrequecy(tempSelectedValue!));

                                  Navigator.of(context).pop();
                                },
                                child: const Text('Ok')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }

   Future<String?> selectYear(BuildContext context) async {
    DateTime selectedYear = DateTime.now();
    String? showYear = 'Year';
    return showDialog<String?>(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, StateSetter setState) {
          return AlertDialog(
            title: const Text("Select Year"),
            
            content: SizedBox(
              width: 300,
              height: 300,
              child: YearPicker(
                firstDate: DateTime(1998, 1),
                lastDate: DateTime.now(),
                initialDate: DateTime.now(),
                selectedDate: selectedYear,
                onChanged: (DateTime dateTime) {
                  setState(
                    () {
                      selectedYear = dateTime;
                      showYear = "${dateTime.year}";
                    },
                  );
                },
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(showYear);
                },
                child: const Text('Select'),
              ),
            ],
          );
        });
      },
    );
  }


  void tyreDialog(BuildContext context, PersonalBloc personalFormBloc)
  {
    String? tempSelectedValue;
  showDialog(context: context, builder: (context)
  {
    return StatefulBuilder(builder: (context, StateSetter setState)
    {
      return Dialog(
              elevation: 16,
              child: Container(
                height: 220,
                width: 45,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade500),
                        ),
                        color: Colors.white,
                      ),
                      child: const Center(child: Text('Tyre')),
                    ),
                    SizedBox(
                      height: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade500),
                              ),
                              color: Colors.white,
                            ),
                            child: RadioListTile(
                              title: const Text('NEW'),
                              value: 'NEW',
                              groupValue: tempSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  tempSelectedValue = value.toString();
                                });

                                // add(UpdateVerificationValue(value.toString()));
                              },
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade500),
                              ),
                              color: Colors.white,
                            ),
                            child: RadioListTile(
                              title: const Text('OLD'),
                              value: 'OLD',
                              groupValue: tempSelectedValue,
                              onChanged: (value) {
                                setState(
                                  () {
                                    tempSelectedValue = value.toString();
                                  },
                                );

                                //  add(UpdateVerificationValue(value.toString()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 55,
                          ),
                          SizedBox(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  // add(UpdateVerificationValue(state.updateSelectedVeriCarValue));
                                  // formBloc.add(UpdateVerificationValue(
                                  //     tempSelectedValue!));\
                                 personalFormBloc.add(UpdateTyre(tempSelectedValue!));

                                  Navigator.of(context).pop();
                                },
                                child: const Text('Ok')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
    });
  });
  }

  void accidentalDialog(
      BuildContext context, PersonalBloc personalFormBloc) {
    String? tempSelectedValue;
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, StateSetter setState) {
            return Dialog(
              elevation: 16,
              child: Container(
                height: 220,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade500),
                        ),
                        color: Colors.white,
                      ),
                      child: const Center(child: Text('Accidental')),
                    ),
                    Container(
                      height: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade500),
                              ),
                              color: Colors.white,
                            ),
                            child: RadioListTile(
                              title: const Text('YES'),
                              value: 'YES',
                              groupValue: tempSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  tempSelectedValue = value.toString();
                                });

                                // add(UpdateVerificationValue(value.toString()));
                              },
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade500),
                              ),
                              color: Colors.white,
                            ),
                            child: RadioListTile(
                              title: const Text('NO'),
                              value: 'NO',
                              groupValue: tempSelectedValue,
                              onChanged: (value) {
                                setState(
                                  () {
                                    tempSelectedValue = value.toString();
                                  },
                                );

                                //  add(UpdateVerificationValue(value.toString()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 55,
                          ),
                          Container(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                 personalFormBloc.add(
                                      UpdateAccidental(tempSelectedValue!));

                                  Navigator.of(context).pop();
                                },
                                child: const Text('Ok')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }
}

