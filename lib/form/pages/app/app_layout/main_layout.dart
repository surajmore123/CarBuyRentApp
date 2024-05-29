

import 'package:flutter/material.dart';

import '../../filterform/filterForm.dart';

class MainLayout extends StatelessWidget {
  final Widget? drawer;
  final Widget? bootomNavigationBar;
  final List<Widget>? actions;
  final Widget body;
  

  const MainLayout(
      {Key? key, required this.body, this.bootomNavigationBar, this.drawer, this.actions,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              //  Navigator.of(context).pushNamed('/filterForm');
                Navigator.of(context).push(
                  PageRouteBuilder(
                    
                    transitionDuration: Duration(milliseconds: 1500),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0.0, 1.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return FilterForm(
                     
                      );
                    },
                  ),
               );
            }, icon: Icon(Icons.search,color: Colors.black,)),
         Text('Latest',style: TextStyle(color: Colors.black),),
         IconButton(onPressed: (){
              Navigator.of(context).push(
                  PageRouteBuilder(
                    
                    transitionDuration: Duration(milliseconds: 1500),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0.0, 1.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return FilterForm(
                     
                      );
                    },
                  ),
               );
         }, icon: Icon(Icons.filter_alt,color: Colors.black,)),
          ],
        ),
      //  leading: drawer != null ? const LeadingIcon() : Container(),
    //  leading: Icon(Icons.search),
        actions: actions,
      ),
 
      body: body,
      bottomNavigationBar: bootomNavigationBar,
    );
  }
}

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    );
  }
}
