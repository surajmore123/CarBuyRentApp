
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../bloc/bloc_bloc.dart';
import '../bloc/bloc_event.dart';
import '../bloc/bloc_state.dart';
import '../validator/validator_personal_sale.dart';

class PersonalCarForm extends StatelessWidget with validatorPersonalSale {
  const PersonalCarForm({Key? key}) : super(key: key);

//  @override
  // State<PersonalCarForm> createState() => _PersonalCarFormState();
//}

//class _PersonalCarFormState extends State<PersonalCarForm> {
  @override
  Widget build(BuildContext context) {
    final formBloc = BlocProvider.of<FormBloc>(context);

    return BlocBuilder<FormBloc, FormUpdateState>(builder: (context, state) {
      return SizedBox(
        //    height: MediaQuery.of(context).size.height + 700,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double inputWidth = constraints.maxWidth - 20;
          return Form(
              key: formBloc.formKeyPersonalSale,
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
                                    color: const Color.fromARGB(
                                        255, 216, 214, 214)),
                                borderRadius: BorderRadius.circular(5)),
                            child: ElevatedButton(
                                onPressed: () {
                                  formBloc.add(BrandSelected('Hyundai'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        formBloc.state.selectedBrandButton ==
                                                'Hyundai'
                                            ? Colors.blue
                                            : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                child: Text(
                                  'Hyundai',
                                  style: TextStyle(
                                      color:
                                          formBloc.state.selectedBrandButton ==
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
                                formBloc.add(BrandSelected('Kia'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      formBloc.state.selectedBrandButton ==
                                              'Kia'
                                          ? Colors.blue
                                          : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Kia',
                                style: TextStyle(
                                    color: formBloc.state.selectedBrandButton ==
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
                                    color: const Color.fromARGB(
                                        255, 216, 214, 214)),
                                borderRadius: BorderRadius.circular(5)),
                            child: ElevatedButton(
                                onPressed: () {
                                  formBloc.add(BrandSelected('Daewoo'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        formBloc.state.selectedBrandButton ==
                                                'Daewoo'
                                            ? Colors.blue
                                            : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                child: Text(
                                  'Daewoo',
                                  style: TextStyle(
                                      color:
                                          formBloc.state.selectedBrandButton ==
                                                  'Daewoo'
                                              ? Colors.white
                                              : Colors.black),
                                ))),
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
                                formBloc.add(BrandSelected('Renault'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      formBloc.state.selectedBrandButton ==
                                              'Renault'
                                          ? Colors.blue
                                          : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Renault',
                                style: TextStyle(
                                    color: formBloc.state.selectedBrandButton ==
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
                                    color: const Color.fromARGB(
                                        255, 216, 214, 214)),
                                borderRadius: BorderRadius.circular(5)),
                            child: ElevatedButton(
                                onPressed: () {
                                  formBloc.add(BrandSelected('SsangYong'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        formBloc.state.selectedBrandButton ==
                                                'SsangYong'
                                            ? Colors.blue
                                            : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                child: Text(
                                  'SsangYong',
                                  style: TextStyle(
                                      color:
                                          formBloc.state.selectedBrandButton ==
                                                  'SsangYong'
                                              ? Colors.white
                                              : Colors.black),
                                ))),
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
                                formBloc.add(BrandSelected('Alpheon'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      formBloc.state.selectedBrandButton ==
                                              'Alpheon'
                                          ? Colors.blue
                                          : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Alpheon ',
                                style: TextStyle(
                                    color: formBloc.state.selectedBrandButton ==
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
                                    color: const Color.fromARGB(
                                        255, 216, 214, 214)),
                                borderRadius: BorderRadius.circular(5)),
                            child: ElevatedButton(
                                onPressed: () {
                                  formBloc.add(BrandSelected('Proto'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        formBloc.state.selectedBrandButton ==
                                                'Proto'
                                            ? Colors.blue
                                            : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                child: Text(
                                  'Proto',
                                  style: TextStyle(
                                      color:
                                          formBloc.state.selectedBrandButton ==
                                                  'Proto'
                                              ? Colors.white
                                              : Colors.black),
                                ))),
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
                                formBloc.add(BrandSelected('Asia Motors'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      formBloc.state.selectedBrandButton ==
                                              'Asia Motors'
                                          ? Colors.blue
                                          : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Asia Motors',
                                style: TextStyle(
                                    color: formBloc.state.selectedBrandButton ==
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
                                  formBloc.add(BrandSelected('volvo'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        formBloc.state.selectedBrandButton ==
                                                'volvo'
                                            ? Colors.blue
                                            : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                child: Text(
                                  'volvo',
                                  style: TextStyle(
                                      color:
                                          formBloc.state.selectedBrandButton ==
                                                  'volvo'
                                              ? Colors.white
                                              : Colors.black),
                                ))),
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
                                formBloc.add(BrandSelected('Genesis'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      formBloc.state.selectedBrandButton ==
                                              'Genesis'
                                          ? Colors.blue
                                          : Colors.white,  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Genesis',
                                style: TextStyle(
                                    color: formBloc.state.selectedBrandButton ==
                                            'Genesis'
                                        ? Colors.white
                                        : Colors.black),
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  //verified car
                  InkWell(
                    onTap: () {
                      formBloc.varifiedCarDialog(context, formBloc);
                    },
                    child: Container(
                      height: 60,
                      width: inputWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(Icons.directions_car_filled),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(child: Text('Varified Car')),
                          const SizedBox(width: 110),
                          // Text();
                          Text(formBloc.state.updateSelectedVeriCarValue),

                          IconButton(
                              onPressed: () {
                                formBloc.varifiedCarDialog(context, formBloc);
                              },
                              icon: const Icon(Icons.arrow_drop_down)),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            hintStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                        //   validator: valid,
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
                        items: formBloc.cities
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
                        value: formBloc.selectedCity,
                        validator: validCity,
                        onChanged: (String? value) {
                          setState(() {
                            formBloc.add(UpdateCity(value));
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
                      controller: formBloc.locationController,
                      validator: validLocation,
                      style: TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
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
                      controller: formBloc.carNameController,
                      validator: validCarName,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
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
                      controller: formBloc.carDetailsController,
                      validator: validCarDescription,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
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
                      controller: formBloc.carPrice,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.label_off_outlined),
                          suffix: Text(
                            'INR',
                            style: TextStyle(color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
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
                            formBloc.add(YearSelected(context));
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
                                Text(formBloc.state.selectedYear),
                                SizedBox(
                                  width: inputWidth / 2 - 100,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    formBloc.add(YearSelected(context));
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
                            formBloc.tyreDialog(context, formBloc);
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
                                Text(formBloc.state.updatedSelectedTyreValue),
                                IconButton(
                                    onPressed: () {
                                      formBloc.tyreDialog(context, formBloc);
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
                            formBloc.accidentalDialog(context, formBloc);
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
                                Text(formBloc
                                    .state.updatedSelectedAccidentalValue),
                                InkWell(
                                    onTap: () {
                                      formBloc.accidentalDialog(
                                          context, formBloc);
                                    },
                                    child: const Icon(Icons.arrow_drop_down)),
                                const SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),
                          ),
                        ),

                        StatefulBuilder(
                            builder: (context, StateSetter setState) {
                          return Container(
                            height: 60,
                            width: inputWidth / 2 - 10,
                            decoration: const BoxDecoration(
                                //  border: Border.all(),
                                //   borderRadius: BorderRadius.circular(2),
                                ),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
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
                              items: FormBloc.colors
                                  .map((String item) =>
                                      DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 51, 50, 50),
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                  .toList(),
                              value: formBloc.selectedColor,
                              onChanged: (String? value) {
                                setState(() {
                                  formBloc.add(UpdateColor(value));
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
                      formBloc.add(ImageSelected(ImageSource.gallery));
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
