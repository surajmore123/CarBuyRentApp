import 'package:flutter/material.dart';

import '../app/app_layout/main_layout.dart';
import '../components/menu/bottom_menu.dart';

class MyRequestPage extends StatelessWidget
{
  

  const MyRequestPage({super.key,});
  @override
  Widget build(BuildContext context)
  {
    return const MainLayout(
     
      bootomNavigationBar: BottomMenu(),
    
      body:
    
       Center(child: Text('request page')), 
      
     
    );
  }
}