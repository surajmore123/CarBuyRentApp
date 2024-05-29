


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/router.dart';
import 'pages/components/menu/bloc/menu_bloc.dart';
import 'pages/filterform/bloc/filter_form_bloc.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  // final AuthenticationRepository _authenticationRepository =
  //     AuthenticationRepository();

  const MyApp({super.key, required this.appRouter, });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
          providers: [
         BlocProvider<FilterFormBloc>(
          create: (context) => FilterFormBloc(),
        ),
   
            BlocProvider<MenuBloc>(
              create: (context) => MenuBloc(),
            ),
          ],
      
            child: MaterialApp(
              title: 'Flutter Demo',
              navigatorKey: MyApp.navigatorKey,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              onGenerateRoute: appRouter.onGenerateRoute,
            ),
          );
      
 
  }
}
