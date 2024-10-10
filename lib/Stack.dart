import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    final padding = width * 0.05;
    final fontSize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget',
          style: TextStyle(
              fontSize: fontSize * 1.5,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightBlue,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                left: padding * 2.05,
                top: padding * 2,
                child: Container(
                  height: height * 0.4,
                  width: width * 0.8,
                  color: Colors.blueGrey,
                ),
              ),
              Center(
                child: Container(
                  height: height * 0.2,
                  width: width * 0.4,
                  color: Colors.black,
                ),
              ),
              Center(
                child: Container(
                  height: height * 0.1,
                  width: width * 0.2,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
