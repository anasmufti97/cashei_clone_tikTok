import 'package:flutter/material.dart';
import 'package:cashei/views/contants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        currentIndex: pageIdx,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Image.asset('assets/icons/home.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Image.asset('assets/icons/challenge.png'),
            ),
            label: 'Challenges',
          ),
          // BottomNavigationBarItem(
          //   icon: CustomIcon(),
          //   label: '',
          // ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Image.asset('assets/icons/winners.png'),
            ),
            label: 'Winnders',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Image.asset('assets/icons/person.png'),
            ),
            label: 'Me',
          ),
        ],
      ),
      body: pages[pageIdx],
    );
  }
}
