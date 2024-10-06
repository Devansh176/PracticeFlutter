import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    List<String> fruits = ['Orange', 'Mango', 'Apple', 'Banana', 'Kiwi', 'Guava', 'Papaya'];

    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Dismissible Widget',
          style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: fontsize * 1.5
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: padding * 1.5),
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index){
            final fruit = fruits[index];
            return Padding(
              padding: EdgeInsets.only(left: padding * 0.7, right: padding * 0.7),
              child: Card(
                elevation: 15,
                child: Dismissible(
                  onDismissed: (direction) {
                    if(direction == DismissDirection.startToEnd) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                      backgroundColor: Colors.green,)
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                        backgroundColor: Colors.red,),
                      );
                    }
                  },
                  key: Key(fruit),
                  background: Container(color: Colors.green,),
                  secondaryBackground: Container(color: Colors.red,),
                  child: ListTile(
                  title: Text(fruits[index]),
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
