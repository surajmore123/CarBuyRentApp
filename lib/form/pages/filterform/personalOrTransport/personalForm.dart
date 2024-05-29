

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/filter_form_bloc.dart';
import '../bloc/filter_form_event.dart';
import '../bloc/filter_form_state.dart';

class PersonalForm extends StatefulWidget
{
  @override
  State<PersonalForm> createState() => _PersonalFormState();
}

class _PersonalFormState extends State<PersonalForm> {
   bool isExpanded = false;
  Widget build(BuildContext context)
  {
   final filterFormBloc = BlocProvider.of<FilterFormBloc>(context);
   return  BlocBuilder<FilterFormBloc,FilterFormState>(builder: (context,state)
    {
      return  SizedBox(
        child:      LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints )
                      {
                        double inputWidth = constraints.maxWidth - 20;
                        return Form(child: Column(
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
                                  filterFormBloc.add(UpdateBrand('Hyundai'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        state.selectedBrand ==
                                                'Hyundai'
                                            ? Colors.blue
                                            : Colors.white,
                                              shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                            ),
                                child: Text(
                                  'Hyundai',
                                  style: TextStyle(
                                      color:
                                          state.selectedBrand ==
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
                                filterFormBloc.add(UpdateBrand('Kia'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      state.selectedBrand  ==
                                              'Kia'
                                          ? Colors.blue
                                          : Colors.white,
                                            shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                          ),
                              child: Text(
                                'Kia',
                                style: TextStyle(
                                    color: state.selectedBrand ==
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
                                  filterFormBloc.add(UpdateBrand('Daewoo'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        state.selectedBrand ==
                                                'Daewoo'
                                            ? Colors.blue
                                            : Colors.white,
                                              shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                            ),
                                child: Text(
                                  'Daewoo',
                                  style: TextStyle(
                                      color:
                                          state.selectedBrand ==
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
                                filterFormBloc.add(UpdateBrand('Renault'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                     state.selectedBrand ==
                                              'Renault'
                                          ? Colors.blue
                                          : Colors.white,
                                            shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Renault',
                                style: TextStyle(
                                    color: state.selectedBrand ==
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
                                  filterFormBloc.add(UpdateBrand('SsangYong'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        state.selectedBrand ==
                                                'SsangYong'
                                            ? Colors.blue
                                            : Colors.white,
                                              shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                child: Text(
                                  'SsangYong',
                                  style: TextStyle(
                                      color:
                                          state.selectedBrand ==
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
                                filterFormBloc.add(UpdateBrand('Alpheon'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      state.selectedBrand ==
                                              'Alpheon'
                                          ? Colors.blue
                                          : Colors.white,
                                            shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Alpheon ',
                                style: TextStyle(
                                    color: state.selectedBrand ==
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
                                  filterFormBloc.add(UpdateBrand('Proto'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        state.selectedBrand ==
                                                'Proto'
                                            ? Colors.blue
                                            : Colors.white,
                                              shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                child: Text(
                                  'Proto',
                                  style: TextStyle(
                                      color:
                                          state.selectedBrand ==
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
                                filterFormBloc.add(UpdateBrand('Asia Motors'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      state.selectedBrand ==
                                              'Asia Motors'
                                          ? Colors.blue
                                          : Colors.white,
                                            shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Asia Motors',
                                style: TextStyle(
                                    color: state.selectedBrand ==
                                            'Asia Motors'
                                        ? Colors.white
                                        : Colors.black,
                                        ),
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
                                  filterFormBloc.add(UpdateBrand('volvo'));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        state.selectedBrand ==
                                                'volvo'
                                            ? Colors.blue
                                            : Colors.white,
                                              shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                                child: Text(
                                  'volvo',
                                  style: TextStyle(
                                      color:
                                          state.selectedBrand ==
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
                                filterFormBloc.add(UpdateBrand('Genesis'));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      state.selectedBrand ==
                                              'Genesis'
                                          ? Colors.blue
                                          : Colors.white,
                                            shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )),
                              child: Text(
                                'Genesis',
                                style: TextStyle(
                                    color: state.selectedBrand ==
                                            'Genesis'
                                        ? Colors.white
                                        : Colors.black),
                              )),
                        ),
                      ],
                    ),
                  ),
SizedBox(height: 15),
                  Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1.5,
                                  ),
                                ),
                                  Container(
                    width: MediaQuery.of(context).size.width * 0.97,
                    height: 40,
                    child: Row(
                      children: const [
                        Icon(Icons.directions_car_outlined),
                        SizedBox(width: 10),
                        Text('Verified Vehicle',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),

                                Container(
                                  height: 55,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 216, 214, 214)),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            filterFormBloc.add(UpdateVerificationType('YES'));
                                            //  formBloc.add(PersonalSelected());
                                            // print('personal');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: 
                                                        state.selectedVerification ==
                                                    'YES'
                                                ? Colors.blue
                                                : Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                          ),
                                          child: Text(
                                            'YES',
                                            style: TextStyle(
                                              color:  state.selectedVerification ==
                                                      'YES'
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 216, 214, 214)),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            filterFormBloc.add(UpdateVerificationType('NO'));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: state.selectedVerification ==
                                                    'NO'
                                                ? Colors.blue
                                                : Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                     borderRadius:
                                               BorderRadius.circular(5),
                                                  )
                                          ),
                                          child: Text('NO',
                                              style: TextStyle(
                                                color: state.selectedVerification ==
                                                        'NO'
                                                    ? Colors.white
                                                    : Colors.black,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 15),
                  Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1.5,
                                  ),
                                ),
                                SizedBox(height: 15),
                            
                                 GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(isExpanded ? 'Minimum Search-': 'Advanced Searched+',style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              ),

                                  AnimatedCrossFade(firstChild: Container(), secondChild: Column(
                children: [
                     Container(
                    width: MediaQuery.of(context).size.width * 0.97,
                    height: 40,
                    child: Row(
                      children: const [
                        Icon(Icons.directions_car_outlined),
                        SizedBox(width: 10),
                        Text('Advanced Brand',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ), crossFadeState: isExpanded ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,duration: Duration(milliseconds: 300),),


                 
                          ],
                        ));
                      }),
      );
    });
   
  }
}
