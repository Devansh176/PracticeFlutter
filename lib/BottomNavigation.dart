import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:practice/AnimatedText.dart';
import 'package:practice/BottomSheetWidget.dart';
import 'package:practice/Drawer.dart';
import 'package:practice/dismissible.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  int selectedIndex = 0;
  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text("Home"),
  //   Text("Search"),
  //   Text("Notification"),
  //   Text("Profile"),
  // ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).primaryColor,
      //   centerTitle: true,
      //   title: Text('Bottom Navigation Widget',
      //     style: TextStyle(
      //       fontSize: fontsize * 1.4,
      //       fontWeight: FontWeight.w700,
      //       color: Colors.black
      //     ),
      //   ),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AnimatedTextWidget(),
          BottomSheetWidget(),
          DismissibleWidget(),
          DrawerWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
