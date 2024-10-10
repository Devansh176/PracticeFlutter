import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/AnimatedText.dart';
import 'package:practice/CloneUIOne/Grid.dart';

class CloneOne extends StatefulWidget {
  const CloneOne({super.key});

  @override
  State<CloneOne> createState() => _CloneOneState();
}

class _CloneOneState extends State<CloneOne> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(index){
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    final padding = width * 0.05;
    final fontSize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.07,),
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/31.jpg'),
              backgroundColor: Colors.yellow,
            ),
            Text('JOHN DOE',
              style: GoogleFonts.paprika(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Co-Founder of RBU',
              style: GoogleFonts.paprika(
                color: Colors.white,
                fontSize: fontSize * 0.6,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.05,),
            Padding(padding: EdgeInsets.only(top: padding * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('23',
                        style: GoogleFonts.paprika(
                          fontSize: fontSize * 0.7,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text('Posts',
                        style: GoogleFonts.paprika(
                          fontSize: fontSize * 0.7,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('328',
                        style: GoogleFonts.paprika(
                          fontSize: fontSize * 0.7,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text('Followers',
                        style: GoogleFonts.paprika(
                          fontSize: fontSize * 0.7,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('224',
                        style: GoogleFonts.paprika(
                          fontSize: fontSize * 0.7,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text('Following',
                        style: GoogleFonts.paprika(
                          fontSize: fontSize * 0.7,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03,),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.white,
            ),
            SizedBox(height: height * 0.05,),
            Padding(
              padding: EdgeInsets.only(left: padding * 1.7, right: padding * 1.7,),
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem> [
                  BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.list_outlined),label: ''),
                ],
                currentIndex: selectedIndex,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                onTap: onTapped,
              ),
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: const [
                  Grid(),
                  AnimatedTextWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.request_page_sharp,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: ''),
        ]
      ),
    );
  }
}
