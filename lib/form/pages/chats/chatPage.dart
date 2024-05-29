import 'package:flutter/material.dart';

import '../app/app_layout/main_layout.dart';
import '../components/menu/bottom_menu.dart';

class ChatPage extends StatelessWidget
{
   

  const ChatPage({super.key,});
  Widget build(BuildContext context)
  {
    return MainLayout(
     
      bootomNavigationBar: const BottomMenu(),
    
      body:
    
       Container(
           child: Center(child: Text('chat page')),
            ), 
      
     
    );
  }
}