import 'package:flutter/material.dart';

void main() {
  runApp(const StatusPage());
}

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
      Positioned(
          bottom: 20,
          right: 30,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Color(0xff075E54),
                borderRadius: BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 3, spreadRadius: 2)
                ]),
            child: const Icon(
              Icons.photo_camera,
              color: Colors.white,
              size: 33,
            ),
          )),
      Positioned(
          bottom: 120,
          right: 40,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 3, spreadRadius: 2)
                ]),
            child: const Icon(
              Icons.edit,
              color: Colors.black,
              size: 33,
            ),
          )),
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/94712571?v=4'),
              ),
              title: const Text(
                'My status',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.add_circle,
                      color: Color(0xff075E54),
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Tap to add status update',
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, top: 22),
            child: Text(
              'Recent updates',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 116, 114, 114)),
            ),
          ),
          const SizedBox(height: 15),
          statusWidgets(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT86cyCL8Lw2_MgVQDZo-G9AUsWPnv5KNntgA&usqp=CAU',
              'Mom',
              '12 : 25 PM',
              Colors.blue),
          statusWidgets(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1WXM5IVq1TJWzhGKuAC6F6YBcY1yJH4Cc9Q&usqp=CAU',
              'Brother',
              '1 : 05 PM',
              Color.fromARGB(255, 72, 202, 211)),
          statusWidgets('https://jawan-tech.web.app/landscape_logo.png',
              'Flutter Course', '12 : 59 AM', Color.fromARGB(255, 189, 21, 85)),
          statusWidgets(
              'https://1000logos.net/wp-content/uploads/2020/09/JavaScript-Logo.png',
              'JavaScript Course',
              '12 : 59 AM',
              Color.fromARGB(255, 28, 129, 91)),
          statusWidgets(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzAn8tEU1Jag0WcLaHcdxaBLxLClw-zArNvg&usqp=CAU',
              '92+3037645278',
              '11 : 34 PM',
              Color.fromARGB(255, 5, 223, 157)),
          statusWidgets(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROitDlmEnYYyV-cFiCW3wLRoTJeqjGHg354w&usqp=CAU',
              '92+3033045244',
              '10 : 14 PM',
              Colors.red),
        ],
      ),
    ]));
  }
}

statusWidgets(img, title, subtitle, clr) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListTile(
          leading: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: clr),
                borderRadius: BorderRadius.circular(80)),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('$img'),
            ),
          ),
          title: Text(
            '$title',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            '$subtitle',
            style: TextStyle(fontSize: 19),
          ),
        ),
      ),
    ],
  );
}
