import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:podcastapp/modules/home_screen.dart';
import 'package:podcastapp/modules/podcast_screen.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int currentIndex = 0;
  List screens = const <Widget>[
    HomeScreen(),
    PodcastScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: HexColor('#8fa3b3'),
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: (currentIndex == 0)
                  ? Column(
                      children: const [
                        Text(
                          'Home',
                          style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          radius: 4,
                        )
                      ],
                    )
                  : const Icon(Icons.home_filled),
              label: ''),
          BottomNavigationBarItem(
              icon: (currentIndex == 1)
                  ? Column(
                      children: const [
                        Text(
                          'Listening',
                          style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          radius: 4,
                        )
                      ],
                    )
                  : Image.asset("assets/hearico.png"),
              label: ''),
          BottomNavigationBarItem(
              icon: (currentIndex == 2)
                  ? Column(
                      children: const [
                        Text(
                          'Chat',
                          style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          radius: 4,
                        )
                      ],
                    )
                  : Image.asset("assets/gapico.png"),
              label: ''),
        ],
      ),
    );
  }
}
