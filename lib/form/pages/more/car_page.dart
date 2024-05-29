


import 'package:flutter/material.dart';

import '../car_request_page/pages/new_request_bloc_provider.dart';
import '../car_type_for_rent/pages/bloc_provider.dart';
import '../car_type_forsale/pages/personal_car.dart';



// class CarPage extends StatelessWidget {
//    const CarPage({super.key});

//   //@override
//  // State<CarPage> createState() => _CarPageState();
// //}

// //class _CarPageState extends State<CarPage> {
 
//   Future<bool> onWillPop (BuildContext context) async
//   {
//     bool? exitResult = await showDialog(context: context, builder: (context) => buildExitDialog(context),);
//     return exitResult ?? false;
//   }

//   Future<bool?> showExitDialog(BuildContext context) async
//   {
//    return await showDialog(context: context, builder: (context) => buildExitDialog(context),);
//   }

//   AlertDialog buildExitDialog(BuildContext context)
//   {
//     return AlertDialog(title: const Text('Do you want to exit?'),
//     actions: [
//       ElevatedButton(onPressed: (){
//        Navigator.of(context).pop(true);
//       }, child: const Text('Exit')),
//        ElevatedButton(onPressed: (){
//        Navigator.of(context).pop(false);
//       }, child: const Text('Cancle')),

//     ],
//     );
//   }
  

  
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//        onWillPop: () => onWillPop(context),
//       //  {
//       //       exitDialogBloc.showExitDialog();
//       //       return false;
//       //  },
//     child: Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
        
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_sharp,
//             color: Colors.blue,
//           ),
//           onPressed: () {
//              Navigator.of(context).pushNamed('/');
//           },
//         ),

//         title: const Text(
//           'Add Car',
//           style: TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//       ),
//       body: 
       
//       Column(
//         children: [
//           const SizedBox(
//             height: 50,
//           ),
//           ListTile(
//             title: Card(
//               child: Container(
//                 height: 70,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(4)),
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: const [
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('Free'),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                         height: 30,
//                         width: MediaQuery.of(context).size.width * 0.8,
//                         child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.pushReplacement(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>  const PersonalCar()));
//                             },
//                             child: const Text('For Sale'))),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           ListTile(
//             title: Card(
//               child: Container(
//                 height: 70,
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(4))),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: const [
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('Free'),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                         height: 30,
//                         width: MediaQuery.of(context).size.width * 0.8,
//                         child: ElevatedButton(
//                             onPressed: () {
                             
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => const FormBlocProvider()));
//                             },
//                             child: const Text('For Rent')))
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           ListTile(
//             title: Card(
//               child: Container(
//                 height: 70,
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(4))),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: const [
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('Free'),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                         height: 30,
//                         width: MediaQuery.of(context).size.width * 0.8,
//                         child: ElevatedButton(
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => const NewRequestBlocProvider()));
//                             },
//                             child: const Text('New Request')))
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       )
        


     
     
//     ));
    
   
//   }
// }



class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  Widget _buildOptionCard(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Card(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Free'), // Assuming this text is constant
                  ),
                ],
              ),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
                  },
                  child: Text(title), // Using the passed title here
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
        title: Text(
          'Add Car',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          _buildOptionCard(context, 'For Sale', const PersonalCar()),
          SizedBox(height: 20),
          _buildOptionCard(context, 'For Rent', const FormBlocProvider()),
          SizedBox(height: 20),
          _buildOptionCard(context, 'New Request', const NewRequestBlocProvider()),
        ],
      ),
    );
  }
}












  





