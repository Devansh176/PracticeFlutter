import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

  String selectedValue = "Orange";

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
        backgroundColor: Colors.amber,
        title: Text("Drop Down Widget",
        style: TextStyle(
          color: Colors.black,
          fontSize: fontsize * 1.5,
          fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(padding * 1.6),
              height: height * 0.09,
              color: Colors.amber,
              width: width * 1.2,
              child: Padding(
                padding: EdgeInsets.only(left: padding, right: padding),
                child: DropdownButton<String>(
                  style: TextStyle(
                    color: Colors.amber
                  ),
                  dropdownColor: Colors.black,
                  isExpanded: true,
                  value: selectedValue,
                  icon: Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.black,),
                  onChanged: (String? newValue){
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: <String>[
                    "Orange",
                    "Apple",
                    "Banana",
                    "Grapes",
                    "Mango",
                  ].map<DropdownMenuItem<String>>((String val){
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(
                        val,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: fontsize
                        ),
                      )
                    );}
                  ).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

