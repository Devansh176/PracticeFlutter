import 'package:flutter/material.dart';
import 'package:practice/CloneUIOne/Grid.dart';

class InstaProfile extends StatefulWidget {
  const InstaProfile({super.key});

  @override
  State<InstaProfile> createState() => _InstaProfileState();
}

class _InstaProfileState extends State<InstaProfile> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    final padding = width * 0.05;
    final fontSize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_outlined,),
        backgroundColor: Colors.black,
        title: Text('Devansh.D',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize * 1.5,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: height * 0.27,
              color: Colors.black,
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.38,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/31.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: padding * 0.2,),
                          child: Text('Devansh D.',
                            style: TextStyle(
                              fontSize: fontSize * 1.2,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: padding * 1.3,),
                          child: Text('App Developer using Flutter',
                            style: TextStyle(
                              fontSize: fontSize * 0.8,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProfileDetails("25", "Posts"),
                            SizedBox(width: width * 0.05,),
                            ProfileDetails("511", "Followers"),
                            SizedBox(width: width * 0.05,),
                            ProfileDetails("234", "Following"),
                          ],
                        ),
                        SizedBox(height: height * 0.014,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height * 0.05,
                              width: width * 0.41,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(Colors.transparent,),
                                  side: WidgetStateProperty.all(const BorderSide(color: Colors.blue,),),
                                ),
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontSize * 0.8,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: width * 0.02,),
                            Container(
                              height: height * 0.055,
                              width: width * 0.135,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue,),
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.arrow_downward_outlined,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.16,
              color: Colors.black,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  if(index == 0){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(padding * 0.65,),
                          height: height * 0.1,
                          width: width * 0.18,
                          decoration: const BoxDecoration(
                            // border: Border.all(color: Colors.blue,),
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const Text('New Highlight')
                      ],
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(padding * 0.65,),
                          height: height * 0.1,
                          width: width * 0.18,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://randomuser.me/api/portraits/men/61.jpg'),
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Text('Highlights',),
                      ],
                    );
                  }
                }
              ),
            ),
            const Divider(color: Colors.white30,),
            Container(
              height: height * 0.06,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Email',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: fontSize,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                    child: const VerticalDivider(
                      color: Colors.white,
                      width: 5,
                      thickness: 0.25,
                    ),
                  ),
                  Text('Site',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: fontSize,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                    child: const VerticalDivider(
                      color: Colors.white,
                      width: 5,
                      thickness: 0.34,
                    ),
                  ),
                  Text('Phone',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white30,),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                child: const DefaultTabController(
                  initialIndex: 0,
                  length: 4,
                  child: Scaffold(
                    backgroundColor: Colors.black,
                    body: TabBar(
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.grid_view,color: Colors.blue,),
                        ),
                        Tab(
                          icon: Icon(Icons.view_list_sharp,color: Colors.blue,),
                        ),Tab(
                          icon: Icon(Icons.person_2_outlined,color: Colors.blue,),
                        ),Tab(
                          icon: Icon(Icons.favorite_border,color: Colors.blue,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget ProfileDetails(String text1, String text2){
    final fontSize = MediaQuery.of(context).size.width * 0.05;
    return Column(
      children: [
        Text(text1,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: fontSize * 1.2,
          ),
        ),
        Text(text2,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w500,
            fontSize: fontSize * 0.8,
          ),
        ),
      ],
    );
  }
}
