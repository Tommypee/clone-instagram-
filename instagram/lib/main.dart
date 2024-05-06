import 'package:flutter/material.dart';
import 'components/post.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/circle.dart';

void main() {
  runApp(MaterialApp(
    title: 'Instagram',
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _stories = ['Your story', 'overcomer', 'tommypee', 'kingvardo'];
  final List _images = [
    'assets/users/ball.jpeg',
    'assets/users/mom.jpeg',
    'assets/users/tom.jpeg',
    'assets/users/king.jpeg',
  ];
  final List _posts = [
    'assets/users/ball.jpeg',
    'assets/users/mom.jpeg',
    'assets/users/tom.jpeg',
    'assets/users/king.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Your existing content
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Instagram',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Billabong',
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  FaIcon(
                    Icons.favorite_outline,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.facebookMessenger,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Container(
                height: 135,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _stories.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Stack(
                        children: [
                          MyCircle(
                            image: AssetImage(_images[index]),
                            child: _stories[index],
                          ),
                          Positioned(
                            top: 55,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              padding: EdgeInsets.all(4),
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.white,
                                    offset: Offset(2, 20),
                                    blurRadius: 50,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return MyCircle(
                        image: AssetImage(_images[index]),
                        child: _stories[index],
                      );
                    }
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  _posts.length - 1,
                  (index) {
                    final postIndex = index + 1;
                    return Container(
                      height: 600,
                      child: InstagramPostTemplate(
                        image: AssetImage(_posts[postIndex]),
                        child: _stories[postIndex],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0, // Adjust the height as needed
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/icons/home.png'),
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/icons/search.png'),
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/icons/post.png'),
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/icons/reel_logo.png'),
              ),
              CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage('assets/users/tom.jpeg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
