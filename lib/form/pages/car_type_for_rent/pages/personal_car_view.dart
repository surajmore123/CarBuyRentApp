
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../bloc/bloc_bloc.dart';
import '../bloc/bloc_event.dart';
import '../bloc/bloc_state.dart';
import '../validator/validator_personal_rent.dart';

class PersonalCarFormRent extends StatelessWidget with ValidatorPersonalRent{
  Widget build(BuildContext context) {
    final personalFormBloc = BlocProvider.of<PersonalBloc>(context);
    return BlocBuilder<PersonalBloc, PersonalFormUpdateState>(
        builder: (context, state) {
      return SizedBox(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double inputWidth = constraints.maxWidth - 20;
          return Form(
            key: personalFormBloc.formKeyPersonalRent,
              child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.97,
                height: 40,
                child: Row(
                  children: const [
                    Icon(Icons.directions_car_outlined),
                    SizedBox(width: 10),
                    Text('Brand',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 55,
                width: inputWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: inputWidth / 2 - 10,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 216, 214, 214)),
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(
                            onPressed: () {
                              personalFormBloc.add(SelectedBrand('Hyundai'));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    personalFormBloc.state.selectedBrand ==
                                            'Hyundai'
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'Hyundai',
                              style: TextStyle(
                                  color: personalFormBloc.state.selectedBrand ==
                                          'Hyundai'
                                      ? Colors.white
                                      : Colors.black),
                            ))),
                    Container(
                      width: inputWidth / 2 - 10,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 216, 214, 214)),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          onPressed: () {
                            personalFormBloc.add(SelectedBrand('Kia'));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  personalFormBloc.state.selectedBrand == 'Kia'
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'Kia',
                            style: TextStyle(
                                color: personalFormBloc.state.selectedBrand ==
                                        'Kia'
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    ),

                    //
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: inputWidth,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: inputWidth / 2 - 10,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 216, 214, 214)),
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(
                            onPressed: () {
                              personalFormBloc.add(SelectedBrand('Daewoo'));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    personalFormBloc.state.selectedBrand ==
                                            'Daewoo'
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'Daewoo',
                              style: TextStyle(
                                  color: personalFormBloc.state.selectedBrand ==
                                          'Daewoo'
                                      ? Colors.white
                                      : Colors.black),
                            ))),
                    Container(
                      width: inputWidth / 2 - 10,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 216, 214, 214)),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          onPressed: () {
                            personalFormBloc.add(SelectedBrand('Renault'));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  personalFormBloc.state.selectedBrand ==
                                          'Renault'
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'Renault',
                            style: TextStyle(
                                color: personalFormBloc.state.selectedBrand ==
                                        'Renault'
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: inputWidth,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: inputWidth / 2 - 10,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 216, 214, 214)),
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(
                            onPressed: () {
                              personalFormBloc.add(SelectedBrand('SsangYong'));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    personalFormBloc.state.selectedBrand ==
                                            'SsangYong'
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'SsangYong',
                              style: TextStyle(
                                  color: personalFormBloc.state.selectedBrand ==
                                          'SsangYong'
                                      ? Colors.white
                                      : Colors.black),
                            ))),
                    Container(
                      width: inputWidth / 2 - 10,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 216, 214, 214)),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          onPressed: () {
                            personalFormBloc.add(SelectedBrand('Alpheon'));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  personalFormBloc.state.selectedBrand ==
                                          'Alpheon'
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'Alpheon ',
                            style: TextStyle(
                                color: personalFormBloc.state.selectedBrand ==
                                        'Alpheon'
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                width: inputWidth,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: inputWidth / 2 - 10,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 216, 214, 214)),
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(
                            onPressed: () {
                              personalFormBloc.add(SelectedBrand('Proto'));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    personalFormBloc.state.selectedBrand ==
                                            'Proto'
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'Proto',
                              style: TextStyle(
                                  color: personalFormBloc.state.selectedBrand ==
                                          'Proto'
                                      ? Colors.white
                                      : Colors.black),
                            ))),
                    Container(
                      width: inputWidth / 2 - 10,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 216, 214, 214)),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          onPressed: () {
                            personalFormBloc.add(SelectedBrand('Asia Motors'));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  personalFormBloc.state.selectedBrand ==
                                          'Asia Motors'
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'Asia Motors',
                            style: TextStyle(
                                color: personalFormBloc.state.selectedBrand ==
                                        'Asia Motors'
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: inputWidth,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: inputWidth / 2 - 10,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 216, 214, 214)),
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(
                            onPressed: () {
                              personalFormBloc.add(SelectedBrand('volvo'));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    personalFormBloc.state.selectedBrand ==
                                            'volvo'
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'volvo',
                              style: TextStyle(
                                  color: personalFormBloc.state.selectedBrand ==
                                          'volvo'
                                      ? Colors.white
                                      : Colors.black),
                            ))),
                    Container(
                      width: inputWidth / 2 - 10,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 216, 214, 214)),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          onPressed: () {
                            personalFormBloc.add(SelectedBrand('Genesis'));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  personalFormBloc.state.selectedBrand ==
                                          'Genesis'
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'Genesis',
                            style: TextStyle(
                                color: personalFormBloc.state.selectedBrand ==
                                        'Genesis'
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  personalFormBloc.rentFrequencyDialog(
                      context, personalFormBloc);
                },
                child: Container(
                  height: 60,
                  width: inputWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 18,
                      ),

                      Expanded(child: Text('Rent Frequency')),
                      SizedBox(width: 110),
                      // Text();
                      Text(personalFormBloc.state.rentFrequency),

                      IconButton(
                          onPressed: () {
                            personalFormBloc.rentFrequencyDialog(
                                context, personalFormBloc);
                          },
                          icon: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              StatefulBuilder(builder: (context, StateSetter setState) {
                return SizedBox(
                  width: inputWidth,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        hintStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                    validator: validCity,
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        Icon(
                          Icons.location_city,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Select city',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    items: personalFormBloc.cities
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: personalFormBloc.selectedCity,
                    onChanged: (String? value) {
                      setState(() {
                        personalFormBloc.add(UpdateCity(value));
                      });
                    },
                  ),
                );
              }),

                   const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: inputWidth,
                child: TextFormField(
                  controller: personalFormBloc.location,
                  style: TextStyle(color: Colors.black),
                  validator: validLocation,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Enter location",
                      hintStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),

                     const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(Icons.directions_car_outlined),
                    SizedBox(width: 10),
                    Text('Car Details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),

                 const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: inputWidth,
                child: TextFormField(
                  controller: personalFormBloc.carName,
                  validator: validCarName,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Car Name",
                      hintStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),

                 const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: inputWidth,
                child: TextFormField(
                  controller: personalFormBloc.carDetail,
                  validator: validCarDescription,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Car description",
                      hintStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),

                      const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: inputWidth,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  
                  validator: validCarPrice,
                  controller: personalFormBloc.carPrice,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.label_off_outlined),
                      suffix: Text(
                        'INR',
                        style: TextStyle(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Price*",
                      hintStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),

                  const SizedBox(
                height: 8,
              ),
              Container(
                height: 65,
                width: inputWidth,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                      personalFormBloc.add(YearSelected(context));
                      },
                      child: Container(
                        width: inputWidth / 2 - 10,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Text(personalFormBloc.state.selectedYear),
                            SizedBox(
                              width: inputWidth / 2 - 100,
                            ),
                            GestureDetector(
                              onTap: () {
                               personalFormBloc.add(YearSelected(context));
                              },
                              child: const Icon(
                                Icons.calendar_month,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // tyre

                    InkWell(
                      onTap: () {
                       personalFormBloc.tyreDialog(context, personalFormBloc);
                      },
                      child: Container(
                        width: inputWidth / 2 - 10,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Expanded(child: Text('Tyre')),
                            Text(personalFormBloc.state.tyreValue),
                            IconButton(
                                onPressed: () {
                                   personalFormBloc.tyreDialog(context, personalFormBloc);
                                },
                                icon: const Icon(Icons.arrow_drop_down)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

                   const SizedBox(
                height: 8,
              ),
              Container(
                height: 60,
                width: inputWidth,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // accidental
                    InkWell(
                      onTap: () {
                       personalFormBloc.accidentalDialog(context, personalFormBloc);
                      },
                      child: Container(
                        width: inputWidth / 2 - 10,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            const Expanded(child: Text('Accidental')),
                            Text(personalFormBloc.state.accidentalValue),
                            InkWell(
                                onTap: () {
                                   personalFormBloc.accidentalDialog(context, personalFormBloc);
                                },
                                child: const Icon(Icons.arrow_drop_down)),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
    StatefulBuilder(builder: (context, StateSetter setState)
    {
      return   Container(
                      height: 60,
                      width: inputWidth / 2 - 10,
                      decoration: const BoxDecoration(
                  
                          ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintStyle: const TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1))),
                        isExpanded: true,
                        hint: Row(
                          children: const [
                            Icon(
                              Icons.car_repair,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Select color',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        items: personalFormBloc.colors
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 51, 50, 50),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: personalFormBloc.selectedColor,
                      //  validator: validCarColor,
                        onChanged: (String? value) {
                          setState(() {
                           personalFormBloc.add(UpdateColor(value!));
                          });
                        },
                      ),
                    );
    })
                  
                  ],
                ),
              ),

                      const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.97,
                child: Row(
                  children: const [
                    Icon(Icons.image),
                    SizedBox(width: 10),
                    Text('Car Images',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              state.load
                  ? Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(state.image!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(15.0),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              'No Image Selected',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
              ElevatedButton(
                onPressed: () {
                  personalFormBloc.add(ImageSelected(ImageSource.gallery));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                child: const Text('Upload Picture'),
              ),
              const SizedBox(
                height: 8,
              ),
                  Visibility(
                    visible: !state.load,
                    child:
                  const SizedBox(
                    height: 20,
                    width: 320,
                    
                    child: Center(
                      child: Text(
                        'Please select car images',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(height: 40,)


            ],
          ));
        }),
      );
    });
  }
}
