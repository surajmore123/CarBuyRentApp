import 'package:flutter/material.dart';
import 'package:newcarapp/form/pages/home/fetchIsarDataById/detailedData.dart';
import 'package:newcarapp/form/pages/home/fetchIsarDataById/detailedPagearg.dart';

import '../pages/chats/chatPage.dart';
import '../pages/home/homePage.dart';
import '../pages/more/car_page.dart';
import '../pages/myrequest/myrequestPage.dart';

class AppRouter {
  

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) =>  const HomePage(),
        );
        //   return MaterialPageRoute(
        //   builder: (_) =>  BlocProvider.value(value: filterFormBloc,child: HomePage(),)
        // );
      case '/second':
        return MaterialPageRoute(
          builder: (_) =>  const MyRequestPage(
           
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) =>  const ChatPage(
            
          ),
        );
      case '/forth':
        return MaterialPageRoute(
          builder: (_) =>  const CarPage(),
        );
      case '/detailedData':
     // final userId = routeSettings.arguments as Id;
      final args = routeSettings.arguments as DetailedPageArguments;
         return MaterialPageRoute(
          builder: (_)
          {
return DetailedData();
          },
           settings: RouteSettings(arguments: args),
        );
       
    
      default:
        return null;
    }
  }
}

