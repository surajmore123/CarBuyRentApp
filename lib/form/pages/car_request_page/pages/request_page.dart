

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../car_type_forsale/isar/isar_services.dart';
import '../../more/car_page.dart';
import '../bloc/bloc_bloc.dart';
import '../bloc/bloc_event.dart';
import '../bloc/bloc_state.dart';
import '../request_page_isar/car_request_user/car_request_user.dart';
import '../request_page_isar/car_request_user/request_operations.dart';
import 'validator.dart';

class NewRequest extends StatelessWidget with validator{
  const NewRequest({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final newRequestBloc = BlocProvider.of<NewRequestBloc>(context);
   RequestUserOperations storeData = RequestUserOperations(IsarService());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  CarPage()));
            },
          ),
          title: Text(
            'New Request',
            style: TextStyle(color: Colors.black),
          )),
      body: BlocBuilder<NewRequestBloc, NewRequestUpdateState>(
        // bloc: newRequestBloc,
        // selector: (state) => state.autovalidateMode,
          builder: (context, State) {
        return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double inputWidth = constraints.maxWidth - 20;
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Form(
                key:  formKey,
              //  autovalidateMode: autovalidateMode,
                  child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add a description of the required car',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      validator: validDescription,
                      controller: newRequestBloc.description,
                      // onChanged: (value) =>
                      
                      //     newRequestBloc.checkFields(newRequestBloc),
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText:
                            'Please write a detailed description of your request...',
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        'Price range',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      validator: validPrice,
                      controller: newRequestBloc.price,
                      keyboardType: TextInputType.number,
                      onChanged: (value) =>
                          newRequestBloc.checkFields(newRequestBloc),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'INR price (Optional)',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Choose the city',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    StatefulBuilder(builder: (context, StateSetter setState) {
                      return DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            hintStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2)),
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
                        items: newRequestBloc.cities
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
                        value: newRequestBloc.selectedCity,
                        onChanged: (String? value) {
                          setState(() {
                            newRequestBloc.add(UpdateCityRequest(value));
                          });
                          newRequestBloc.checkFields(newRequestBloc);
                        },
                      );
                    }),
                    SizedBox(height: 20),
                    Text(
                      'Select ways to contact you',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Container(
                       height: 50,
                       width: inputWidth,
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 40,
                              width: inputWidth/3.3,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(4)),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  newRequestBloc.add(UpdateToggleButton1('Call'));
                                },
                                icon: Icon(
                                  Icons.call_outlined,
                                  color: newRequestBloc.selectedButton1 == "Call"
                                      ? Colors.white
                                      : Colors.black,
                                      size: 15,
                                ),
                                label: Text(
                                  'Call',
                                  style: TextStyle(
                                    color:
                                        newRequestBloc.selectedButton1 == "Call"
                                            ? Colors.white
                                            : Colors.black,
                                            fontSize: 11
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      newRequestBloc.selectedButton1 == "Call"
                                          ? Colors.blue
                                          : Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                            ),
                         
                        Container(
                              height: 40,
                               width: inputWidth/3.3,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(4)),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  newRequestBloc
                                      .add(UpdateToggleButton2('WhatsApp'));
                                },
                                icon: Icon(
                                  FontAwesomeIcons.whatsapp,
                                  color:
                                      newRequestBloc.selectedButton2 == "WhatsApp"
                                          ? Colors.white
                                          : Colors.black,
                                          size: 14,
                                ),
                                label: Text(
                                  'WhatsApp',
                                  style: TextStyle(
                                    color:
                                        newRequestBloc.selectedButton2 == "WhatsApp"
                                            ? Colors.white
                                            : Colors.black,
                                             fontSize: 11
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      newRequestBloc.selectedButton2 == "WhatsApp"
                                          ? Colors.blue
                                          : Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                            ),
                       
                       Container(
                              height: 40,
                              width:   inputWidth/3.3,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(4)),
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.chat_sharp,size: 15,),
                                label: Text('Chats',style: TextStyle(fontSize: 11),),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                            ),
                         
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Visibility(
                      visible: newRequestBloc.isContainerVisible,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          IntlPhoneField(
                     //   validator: validPhone!,
                            controller: newRequestBloc.phoneNumber,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Mobile Number',
                            ),
                             showDropdownIcon: true,
                            initialCountryCode: 'IN',
                           
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  //  if (newRequestBloc.allFieldsFilled)
                      Center(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(4)),
                          child: ElevatedButton(
                            onPressed: () async {
                              final storeDetails = newRequestBloc.description;
                              final storePrice = newRequestBloc.price;
                              final storeCity =  newRequestBloc.state.selectedCity;
                              final storePhone = newRequestBloc.phoneNumber;
                                if(formKey.currentState!.validate())
                              {
       CarRequestUser userData = CarRequestUser(details: storeDetails.text, price: storePrice.text, city: storeCity!, phone: storePhone.text);
                              await storeData.saveDetails(userData);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text('Form values stored securely.')),
                              );
                              }
                       
/*
                              if(formKey.currentState!.validate())
                              {
                                await newRequestBloc.storeDescription();
                              String? storeDescription =
                                  await newRequestBloc.getDescription();

                              await newRequestBloc.storePrice();
                              String? storePrice =
                                  await newRequestBloc.getPrice();

                              final selectCityValue =
                                  newRequestBloc.state.selectedCity;

                              await newRequestBloc
                                  .storeCityValue(selectCityValue!);
                              String? storeCityValue =
                                  await newRequestBloc.getCityValue();

                              await newRequestBloc.storePhoneNumber();
                              String? storePhoneNumber =
                                  await newRequestBloc.getPhoneNumber();

                              print('Description : $storeDescription');
                              print('Price : $storePrice');
                              print('City : $storeCityValue');
                              print('PhoneNumber : $storePhoneNumber');

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text('Form values stored securely.')),
                              );

                              }
                     */
                              
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ),
                  ],
                ),
              )),
            ),
          );
        });
      }),
    );
  }
}

