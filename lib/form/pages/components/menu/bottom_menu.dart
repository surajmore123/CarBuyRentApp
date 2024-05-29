

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bloc/menu_bloc.dart';

List<String> bottomNavRoutes = ["/", "/second", "/third", "/forth",];

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MenuBloc menuBloc = BlocProvider.of<MenuBloc>(context);
    final state = context.watch<MenuBloc>().state;
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.blueAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.request_page_outlined),
          label: 'MyRequest',
          backgroundColor: Colors.blueAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
          backgroundColor: Colors.blueAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon( FontAwesomeIcons.ellipsis,),
          label: 'More',
          backgroundColor: Colors.blueAccent,
        ),
      

      
      ],
      currentIndex: state.bottomMenuSelectedIndex,
      selectedItemColor: Colors.black,
      onTap: (value) {
        if (state.bottomMenuSelectedIndex != value) {
          menuBloc.add(MenuSelected(
              bottomMenuSelectedIndex: value,
              leftMenuSelectedIndex: state.leftMenuSelectedIndex));
          Navigator.pushNamed(context, bottomNavRoutes[value]);
        }
      },
    );
  }
}
