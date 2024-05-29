
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../bloc/bloc_transport_bloc.dart';
import '../bloc/bloc_transport_event.dart';
import '../bloc/bloc_transport_state.dart';
import '../validator/validator_transport_sale.dart';

class TransportCarForm extends StatelessWidget with validatorTransportSale{
  const TransportCarForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  
    final transportFormBloc = BlocProvider.of<TransportFormBloc>(context);
    return BlocBuilder<TransportFormBloc, TransportFormUpdate>(
        builder: (context, state) {
      return SizedBox(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double inputWidth = constraints.maxWidth - 20;
          return Form(
            key: transportFormBloc.formKeyTransportSale,
              child: Column(
            children: [
              SizedBox(
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
                                color: const Color.fromARGB(255, 216, 214, 214)),
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(
                            onPressed: () {
                              transportFormBloc
                                  .add(SelectedBrand('Force Motors'));
                            
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    transportFormBloc.state.selectedBrand ==
                                            'Force Motors'
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'Force Motors',
                              style: TextStyle(
                                  color:
                                      transportFormBloc.state.selectedBrand ==
                                              'Force Motors'
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
                            transportFormBloc.add(SelectedBrand('Mahindra'));
                           
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  transportFormBloc.state.selectedBrand ==
                                          'Mahindra'
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'Mahindra',
                            style: TextStyle(
                                color: transportFormBloc.state.selectedBrand ==
                                        'Mahindra'
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
                              transportFormBloc
                                  .add(SelectedBrand('Asia MotorWorks'));
                             
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    transportFormBloc.state.selectedBrand ==
                                            "Asia MotorWorks"
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'Asia MotorWorks',
                              style: TextStyle(
                                  color:
                                      transportFormBloc.state.selectedBrand ==
                                              "Asia MotorWorks"
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
                          transportFormBloc.add(SelectedBrand('BharatBenz'));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                transportFormBloc.state.selectedBrand ==
                                        "BharatBenz"
                                    ? Colors.blue
                                    : Colors.white),
                        child: Text(
                          'BharatBenz',
                          style: TextStyle(
                              color: transportFormBloc.state.selectedBrand ==
                                      "BharatBenz"
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 6,
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
                              transportFormBloc
                                  .add(SelectedBrand('Tata Motors'));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    transportFormBloc.state.selectedBrand ==
                                            "Tata Motors"
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'Tata Motors',
                              style: TextStyle(
                                  color:
                                      transportFormBloc.state.selectedBrand ==
                                              "Tata Motors"
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
                            transportFormBloc.add(SelectedBrand('SML Isuzu'));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  transportFormBloc.state.selectedBrand ==
                                          "SML Isuzu"
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'SML Isuzu',
                            style: TextStyle(
                                color: transportFormBloc.state.selectedBrand ==
                                        "SML Isuzu"
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
                              transportFormBloc
                                  .add(SelectedBrand('Hindustan Motors'));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    transportFormBloc.state.selectedBrand ==
                                            "Hindustan Motors"
                                        ? Colors.blue
                                        : Colors.white),
                            child: Text(
                              'Hindustan Motors',
                              style: TextStyle(
                                  color:
                                      transportFormBloc.state.selectedBrand ==
                                              "Hindustan Motors"
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
                            transportFormBloc.add(SelectedBrand('Asia Motors'));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  transportFormBloc.state.selectedBrand ==
                                          "Asia Motors"
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'Asia Motors',
                            style: TextStyle(
                                color: transportFormBloc.state.selectedBrand ==
                                        "Asia Motors"
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: inputWidth / 2 - 10,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 216, 214, 214)),
                          borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          onPressed: () {
                            transportFormBloc.add(SelectedBrand('volvo'));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  transportFormBloc.state.selectedBrand ==
                                          "volvo"
                                      ? Colors.blue
                                      : Colors.white),
                          child: Text(
                            'volvo',
                            style: TextStyle(
                                color: transportFormBloc.state.selectedBrand ==
                                        "volvo"
                                    ? Colors.white
                                    : Colors.black),
                          ))),
                ],
              ),

              SizedBox(
                height: 16,
              ),
              //verified car
              InkWell(
                onTap: () {
                  transportFormBloc.varifiedCarDialog(
                      context, transportFormBloc);
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
                      Icon(Icons.directions_car_filled),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Text('Varified Car')),
                      SizedBox(width: 110),
                      // Text();
                      Text(
                          '${transportFormBloc.state.selectedVerificationValue}'),

                      IconButton(
                          onPressed: () {
                            transportFormBloc.varifiedCarDialog(
                                context, transportFormBloc);
                          },
                          icon: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              StatefulBuilder(builder: (context, StateSetter setState) {
                return SizedBox(
                  width: inputWidth,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
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
                      children: [
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
                    items: TransportFormBloc.cities
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
                    value: transportFormBloc.selectedCity,
                    onChanged: (String? value) {
                      setState(() {
                        transportFormBloc.add(UpdateCity(value));
                      });
                    },
                  ),
                );
              }),

              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: inputWidth,
                child: TextFormField(
                  controller: transportFormBloc.locationController,
                  validator: validLocation,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
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

              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
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

              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: inputWidth,
                child: TextFormField(
                  controller: transportFormBloc.carName,
                  validator: validCarName,
                  decoration: InputDecoration(
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

              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: inputWidth,
                child: TextFormField(
                  controller: transportFormBloc.carDescriptionController,
                  validator: validDescription,
                  decoration: InputDecoration(
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
                  validator: validPrice,
                  controller: transportFormBloc.carPriceController,
                  decoration: InputDecoration(
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
                        // formBloc.add(YearSelected(context));
                        transportFormBloc.add(YearSelected(context));
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
                            Text(transportFormBloc.state.selectedYear!),
                            SizedBox(
                              width: inputWidth / 2 - 100,
                            ),
                            GestureDetector(
                              onTap: () {
                                transportFormBloc.add(YearSelected(context));
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
                        transportFormBloc.tyreDialog(
                            context, transportFormBloc);
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
                            Text(transportFormBloc.state.tyreValue),
                            IconButton(
                                onPressed: () {
                                  transportFormBloc.tyreDialog(
                                      context, transportFormBloc);
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
                        transportFormBloc.accidentalDialog(
                            context, transportFormBloc);
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
                            Text(transportFormBloc.state.accidentalValue),
                            InkWell(
                                onTap: () {
                                  transportFormBloc.accidentalDialog(
                                      context, transportFormBloc);
                                },
                                child: const Icon(Icons.arrow_drop_down)),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                    StatefulBuilder(builder: (context, StateSetter setState) {
                      return Container(
                        height: 60,
                        width: inputWidth / 2 - 10,
                        decoration: const BoxDecoration(),
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
                          items: transportFormBloc.colors
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
                          value: transportFormBloc.selectedColor,
                          onChanged: (String? value) {
                            setState(() {
                              transportFormBloc.add(UpdateColor(value!));
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
                  transportFormBloc.add(ImageSelected(ImageSource.gallery));
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
                  const SizedBox(height: 40,)
            ],
          ));
        }),
      );
    });
  }
}
