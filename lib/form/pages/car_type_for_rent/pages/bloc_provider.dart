import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_bloc.dart';
import '../bloc/transportbloc_bloc.dart';
import 'add_car_rent.dart';

class FormBlocProvider extends StatelessWidget{
  const FormBlocProvider({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [
      BlocProvider<PersonalBloc>(create: (_) => PersonalBloc()),
       BlocProvider<TransportBlocRent>(create: (_) => TransportBlocRent())
      ], 
      child: const CarTypeRent());
  }
}