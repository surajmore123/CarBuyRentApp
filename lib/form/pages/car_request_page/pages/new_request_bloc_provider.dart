import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_bloc.dart';
import 'request_page.dart';

class NewRequestBlocProvider extends StatelessWidget
{
  const NewRequestBlocProvider({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(providers: [
      BlocProvider< NewRequestBloc>(create: (_) => NewRequestBloc() )

    ], child: const NewRequest());
  }
}