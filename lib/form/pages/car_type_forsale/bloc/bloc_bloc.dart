import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:isar/isar.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';




class FormBloc extends Bloc<FormEvent, FormUpdateState> {
   final String carType = 'sale';
   Isar? isar;
   final formKeyPersonalSale = GlobalKey<FormState>();
  final picker = ImagePicker();
  bool load = false;
  late File image;

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

  static const List<String> colors = [
    'Black',
    'Red',
    'Yellow',
    'White',
    'Violet',
    'Purple'
  ];
  String? selectedColor;
  TextEditingController locationController = TextEditingController();
  TextEditingController carNameController = TextEditingController();
  TextEditingController carDetailsController = TextEditingController();
  TextEditingController carPrice = TextEditingController();
  FormBloc()
      : super(FormUpdateState(
            selectedButton: 'Personal',
            selectedBrandButton: '',
            updateSelectedVeriCarValue: '',
            selectedCity: '',
            //    selectedYear: DateTime.now().year.toString(),
            selectedYear: 'Year',
            updatedSelectedTyreValue: '',
            updatedSelectedAccidentalValue: '',
            selectedColor: '',
            load: false,
            image: File(''))
            )
            {
   initIsar();
            }
              Future<void> initIsar() async {
    isar = Isar.getInstance();
  }

  @override
  Stream<FormUpdateState> mapEventToState(FormEvent event) async* {
    if (event is PersonalSelected) {
      yield FormUpdateState(
          selectedButton: 'Personal',
          selectedBrandButton: '',
          //  updateSelectedVeriCarValue: await getStoredVerificationValue() ?? '',
          updateSelectedVeriCarValue: '',
          selectedCity: '',
          //  selectedYear: state.selectedYear,
          selectedYear: 'Year',
          updatedSelectedTyreValue: '',
          updatedSelectedAccidentalValue: '',
          selectedColor: '',
          load: false,
          image: File(''));
    } else if (event is TransportSelected) {
      yield FormUpdateState(
        selectedButton: 'Transport',
        selectedBrandButton: '',
        //    updateSelectedVeriCarValue: await getStoredVerificationValue() ?? '',
        updateSelectedVeriCarValue: '',
        selectedCity: '',
        //  selectedYear: state.selectedYear,
        selectedYear: 'Year',
        updatedSelectedTyreValue: '',
        updatedSelectedAccidentalValue: '',
        selectedColor: '',
        load: false,
         image: File('')
      );
    }
    else if (event is BrandSelected) {
       final selectedBrand = event.cbrand;
      yield state.copyWith(selectedBrandButton: selectedBrand);
      // if(isar!=null)
      // {
      //    await storeSelectedBrand();
      // }
    } else if (event is UpdateVerificationValue) {
      //   await storeSelectedVerificationValue(event.newValue);
      yield state.copyWith(updateSelectedVeriCarValue: event.newValue);
    } else if (event is UpdateCity) {
      yield state.copyWith(selectedCity: event.selectedCity);
    } else if (event is YearSelected) {
      final String? selectedYear = await selectYear(event.context);
      if (selectedYear != null) {
        yield state.copyWith(selectedYear: selectedYear);
      }
    } else if (event is UpdateTyre) {
      yield state.copyWith(updatedSelectedTyreValue: event.newValue);
    } else if (event is UpdateAccidental) {
      yield state.copyWith(updatedSelectedAccidentalValue: event.newValue);
    } else if (event is UpdateColor) {
      yield state.copyWith(selectedColor: event.seletedColor);
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






 

  void varifiedCarDialog(BuildContext context, FormBloc formBloc) {
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
                      child: const Center(child: Text('Verified Car')),
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
                            width: 35,
                          ),
                          Container(
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                ),),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                onPressed: () {
                                  // add(UpdateVerificationValue(state.updateSelectedVeriCarValue));
                                  formBloc.add(UpdateVerificationValue(
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

  void tyreDialog(BuildContext context, FormBloc formBloc) {
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
                      child: const Center(child: Text('Tyre')),
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
                            width: 35,
                          ),
                          Container(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                onPressed: () {
                                  // add(UpdateVerificationValue(state.updateSelectedVeriCarValue));
                                  // formBloc.add(UpdateVerificationValue(
                                  //     tempSelectedValue!));\
                                  formBloc.add(UpdateTyre(tempSelectedValue!));

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

  void accidentalDialog(BuildContext context, FormBloc formBloc) {
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
                          const SizedBox(
                            width: 35,
                          ),
                          Container(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                onPressed: () {
                                  formBloc.add(
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


}



