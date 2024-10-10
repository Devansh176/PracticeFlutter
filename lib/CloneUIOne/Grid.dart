import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    final padding = width * 0.05;
    final fontSize = width * 0.05;


    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: padding * 0.6,
          mainAxisSpacing: padding * 0.6,
        ),
        children: const [
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/33.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/34.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/35.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/36.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/32.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/37.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/38.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/39.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/40.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/41.jpg',),
          ),
          Image(
            image: NetworkImage('https://randomuser.me/api/portraits/men/42.jpg',),
          ),
        ],
      ),
    );
  }
}
