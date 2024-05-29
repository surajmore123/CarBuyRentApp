import 'package:flutter/material.dart';

class TransportForm extends StatelessWidget
{
  Widget build(BuildContext context)
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
                          ],
                        ));
                      }),
      );
    
  }
}