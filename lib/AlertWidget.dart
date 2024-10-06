import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Alert Dialog Widget',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: fontsize * 1.5,
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: const Text('Show Alert'),
        ),
      ),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation: 15,
        title: const Text('Turn on Notification'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Instagram'),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text('Accept')),
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Reject')),
        ],
      );
  });
}