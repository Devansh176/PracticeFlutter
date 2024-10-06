import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drawer Widget'),
      ),
      drawer: Drawer(
        elevation: 15,
        width: 250,
        child: Container(
          color: Colors.white38,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(padding),
                  color: Colors.black38,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: padding * 2.0,
                        backgroundImage: NetworkImage('https://picsum.photos/id/237/200'),
                      ),
                      SizedBox(width: width * 0.02,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tommy'),
                          Text('tom@gmail.com')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder_copy),
                title: Text('Add Folder'),
              ),
              const ListTile(
                leading: Icon(Icons.download),
                title: Text('Download'),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text('Upload'),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete'),
              ),
              const ListTile(
                leading: Icon(Icons.contact_page_rounded),
                title: Text('Contact Us'),
              ),
              const ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
