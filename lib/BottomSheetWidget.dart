import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Widget',
          style: TextStyle(
            fontSize: fontsize * 1.5,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              backgroundColor: Colors.white10,
              context: context,
              builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Operating System'),
                    subtitle: Text('07/15'),
                  ),
                  ListTile(
                    title: Text('Computer Networks'),
                    subtitle: Text('11/15'),
                  ),
                  ListTile(
                    title: Text('Compiler Design'),
                    subtitle: Text('05/15'),
                  ),
                  ListTile(
                    title: Text('Machine Learning'),
                    subtitle: Text('12/15'),
                  ),
                  ListTile(
                    title: Text('Managerial Economics'),
                    subtitle: Text('10/15'),
                  ),
                ],
              );
            }
          );
        },
        child: const Text('Show Bottom Sheet')),
      ),
    );
  }
}
