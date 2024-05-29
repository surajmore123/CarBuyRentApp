import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'bloc_transport_event.dart';
import 'bloc_transport_state.dart';

class TransportFormBloc extends Bloc<TransportFormEvent, TransportFormUpdate> {
  
  final picker = ImagePicker();
  bool load = false;
  late File image;

  TextEditingController locationController = TextEditingController();
  TextEditingController carName = TextEditingController();
  TextEditingController carDescriptionController = TextEditingController();
  TextEditingController carPriceController = TextEditingController();
  final formKeyTransportSale = GlobalKey<FormState>();
  static const List<String> cities = [
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

  List<String> colors = ['Black', 'Red', 'Yellow', 'White', 'Violet', 'Purple'];
  String? selectedColor;
  TransportFormBloc()
      : super(TransportFormUpdate(
            selectedButton: 'Personal',
            selectedBrand: '',
            selectedVerificationValue: '',
            selectedCity: '',
            selectedYear: 'Year',
            tyreValue: '',
            accidentalValue: '',
            selectedColor: '',
            load: false,
            image: File('')));

  @override
  Stream<TransportFormUpdate> mapEventToState(TransportFormEvent event) async* {
    if (event is PersonalSelected) {
      yield  const TransportFormUpdate(
          selectedButton: 'Personal',
          selectedBrand: '',
          selectedVerificationValue: '',
          selectedCity: '',
          selectedYear: 'Year',
          tyreValue: '',
          accidentalValue: '',
          selectedColor: '',
          load: false,
         );
    } else if (event is TransportSelected) {
      yield  TransportFormUpdate(
        selectedButton: 'Transport',
        selectedBrand: '',
        selectedVerificationValue: '',
        selectedCity: '',
        selectedYear: 'Year',
        tyreValue: '',
        accidentalValue: '',
        selectedColor: '',
        load: false,
         image: File('')
      );
    } else if (event is SelectedBrand) {
      yield state.copyWith(
        selectedBrand: event.brand,
      );
    } else if (event is UpdateVerificationValue) {
      yield state.copyWith(selectedVerificationValue: event.newValue);
    } else if (event is UpdateCity) {
      yield state.copyWith(selectedCity: event.newValue);
    } else if (event is YearSelected) {
      final String? selectedYear = await selectYear(event.context);
      if (selectedYear != null) {
        yield state.copyWith(selectedYear: selectedYear);
      }
    } else if (event is UpdateTyre) {
      yield state.copyWith(tyreValue: event.newValue);
    } else if (event is UpdateAccidental) {
      yield state.copyWith(accidentalValue: event.newValue);
    } else if (event is UpdateColor) {
      yield state.copyWith(selectedColor: event.newValue);
    } else if (event is ImageSelected) {
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



  void varifiedCarDialog(
      BuildContext context, TransportFormBloc transportFormBloc) {
    String? tempSelectedValue;
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, StateSetter setState) {
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
                      child: const Center(child: Text('Verified Vehicle')),
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
                          SizedBox(
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
                                  // add(UpdateVerificationValue(state.updateSelectedVeriCarValue));
                                  transportFormBloc.add(UpdateVerificationValue(
                                      tempSelectedValue!));

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
          },
        );
      },
    );
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

  void tyreDialog(BuildContext context, TransportFormBloc transportFormBloc) {
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
                      child: Center(child: Text('Tyre')),
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
                                  // add(UpdateVerificationValue(state.updateSelectedVeriCarValue));
                                  // formBloc.add(UpdateVerificationValue(
                                  //     tempSelectedValue!));\
                                  transportFormBloc
                                      .add(UpdateTyre(tempSelectedValue!));

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
      BuildContext context, TransportFormBloc transportFormBloc) {
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
                      child: Center(child: Text('Accidental')),
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
                                child: Text('Cancel')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            child: ElevatedButton(
                                onPressed: () {
                                  transportFormBloc.add(
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
