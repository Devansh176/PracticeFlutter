import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('WhatsApp',
            style: TextStyle(
              color: Colors.black,
              fontSize: fontsize * 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            // isScrollable: true,
            indicatorColor: Colors.green[900],
            indicatorWeight: 5,
            tabAlignment: TabAlignment.fill,
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.chat_outlined,
                    ),
                  ],
                ),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(
                  Icons.tips_and_updates,
                ),
                text: 'Updates',
              ),
              Tab(
                icon: Icon(
                  Icons.people_alt_outlined,
                ),
                text: 'Communities',
              ),
              Tab(
                icon: Icon(
                  Icons.call_sharp,
                ),
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children:[
            Center(
              child: Container(
                child: Text('Chats here',
                  style: TextStyle(
                    fontSize: fontsize * 1.9,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text('Status here',
                  style: TextStyle(
                    fontSize: fontsize * 1.9,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text('Communities here',
                  style: TextStyle(
                    fontSize: fontsize * 1.9,
                  ),
                ),
              ),
            ),Center(
              child: Container(
                child: Text('Calls here',
                  style: TextStyle(
                    fontSize: fontsize * 1.9,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
