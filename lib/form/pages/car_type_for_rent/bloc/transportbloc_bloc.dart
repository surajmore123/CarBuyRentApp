import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'transportbloc_event.dart';
import 'transportbloc_state.dart';

class TransportBlocRent
    extends Bloc<TransportFormEventRent, TransportFormUpdateRent> {
 
  final location = TextEditingController();
  final carName = TextEditingController();
  final carDetails = TextEditingController();
  final carPrice = TextEditingController();
   final picker = ImagePicker();
  bool load = false;
  late File image;

  final formKeyTransportRent = GlobalKey<FormState>();

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

  List<String> colors = [
'Black', 'Red', 'Yello', 'White', 'Violet', 'Purple'
  ];String? selectedColor;
  TransportBlocRent()
      : super(TransportFormUpdateRent(
            selectedButton: 'Personal',
            selectedBrand: '',
            rentFrequency: '',
            selectedCity: '', selectedYear: 'Year', tyreValue: '', accidentalValue: '', selectedColor: '', load: false,
            image: File('')));

  @override
  Stream<TransportFormUpdateRent> mapEventToState(
      TransportFormEventRent event) async* {
    if (event is PersonalCarSelected) {
      yield TransportFormUpdateRent(
          selectedButton: 'Personal',
          selectedBrand: '',
          rentFrequency: '',
          selectedCity: '', selectedYear: 'Year', tyreValue: '', accidentalValue: '', selectedColor: '',load: false,
            image: File(''));
    } else if (event is TransortCarSelected) {
      yield TransportFormUpdateRent(
          selectedButton: 'Transport',
          selectedBrand: '',
          rentFrequency: '',
          selectedCity: '', selectedYear: 'Year', tyreValue: '', accidentalValue: '', selectedColor: '',load: false,
            image: File(''));
    } else if (event is SelectedCarBrand) {
      yield state.copyWith(selectedBrand: event.brand);
    } else if (event is UpdateRentFrequency) {
      yield state.copyWith(rentFrequency: event.newValue);
    } else if (event is UpdateCityRent) {
      yield state.copyWith(selectedCity: event.newValue);
    }
    else if(event is YearSelectedRent)
    {
    final  String? selectedYear = await selectYear(event.context);
    if(selectedYear != null)
    {
      yield state.copyWith(selectedYear: selectedYear);
    }
    }
    else if(event is UpdateTyreRent)
    {
      yield state.copyWith(tyreValue: event.newValue);
    }
    else if (event is UpdateAccidentalRent)
    {
      yield state.copyWith(accidentalValue: event.newValue);
    }
    else if(event is UpdateColor)
    {
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
      BuildContext context, TransportBlocRent transportBlocRent) {
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
                      child: const Center(child: Text('Status')),
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
                                child: const Text('Cancle')),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  transportBlocRent.add(
                                      UpdateRentFrequency(tempSelectedValue!));

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

 void tyreDialog(BuildContext context, TransportBlocRent transportBlocRent) {
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
                      child: const Center(child: Text('Status')),
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
                                child: Text('Cancle')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                
                                      transportBlocRent.add(UpdateTyreRent(tempSelectedValue!));

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
      BuildContext context, TransportBlocRent transportBlocRent) {
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
                      child: const Center(child: Text('Status')),
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
                          const SizedBox(
                            width: 55,
                          ),
                          Container(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancle')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  transportBlocRent.add(
                                      UpdateAccidentalRent(tempSelectedValue!));

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
