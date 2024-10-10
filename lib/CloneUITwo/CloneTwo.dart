import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CloneTwo extends StatelessWidget {
  const CloneTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    final padding = width * 0.05;
    final fontSize = width * 0.05;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: SizedBox(
                  height: height * 0.5,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: height * 0.45,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://images.unsplash.com/photo-1508923567004-3a6b8004f3d7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fHw%3D'),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: padding * 14.5,
                child: const CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/31.jpg'),
                ),
              ),
              Container(
                height: height * 0.18,
                padding: EdgeInsets.only(left: padding * 1.1, right: padding * 1.1,),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white,),
                    Icon(Icons.favorite_border, color: Colors.white,),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: padding * 0.01, left: padding),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Madrid City tour for designers',
                  style: GoogleFonts.palanquin(
                    fontSize: fontSize * 1.67,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.009,),
                const Text('This is a random description my flutter project'),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowIconText('25', Icons.favorite_border, context),
                rowIconText('34', Icons.ios_share, context),
                rowIconText('25', Icons.chat_bubble_outline, context),
                rowIconText('25', Icons.face, context),
              ],
            ),
          ),
          const Divider(),
          Container(
            padding: EdgeInsets.all(padding),
            child: const Text("The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. \nThis is Devansh Dhopte and I am currently working of the developing the UI in flutter, will next learn state management. I will definately be a great app developer."),
          ),
        ],
      ),
    );
  }

  Widget rowIconText(String text, IconData icon, BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Text(text),
        SizedBox(width: width * 0.01,),
        Icon(icon),
      ],
    );
  }
}
