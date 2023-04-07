import 'package:flutter/material.dart';
import 'package:flutter_assignment_01/Chats/chats.dart';
import 'package:flutter_assignment_01/Status/status.dart';
import 'package:flutter_assignment_01/Calls/calls.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontSize: 24),
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 28,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.more_vert,
              size: 28,
            ),
            SizedBox(
              width: 8,
            ),
          ],
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              tabs: [
                Tab(
                  icon: Icon(Icons.photo_camera),
                ),
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Calls',
                ),
              ]),
        ),
        body: const TabBarView(children: [
          Text('WellCome To Chats Page'),
          ChatsPage(),
          StatusPage(),
          CallsPAge(),
        ]),
      ),
    );
  }
}
