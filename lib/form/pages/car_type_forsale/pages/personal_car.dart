import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_bloc.dart';
import '../bloc/bloc_transport_bloc.dart';
import 'add_car_sale.dart';

class PersonalCar extends StatelessWidget {
  
  const PersonalCar({super.key,});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<FormBloc>(create: (_) => FormBloc()),
          BlocProvider<TransportFormBloc>(create: (_) => TransportFormBloc()),
        ],
        child: Builder(builder: (context) {
          return const CarTypeState();
        }));

    // BlocProvider<FormBloc>(
    //   create: (_) => FormBloc(),
    //   child:   Builder(builder: (context)
    //   {
    //     return CarTypeState();
    //   })
    // );
  }
}
