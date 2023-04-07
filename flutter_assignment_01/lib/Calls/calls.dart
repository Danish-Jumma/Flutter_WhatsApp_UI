import 'package:flutter/material.dart';

void main() {
  runApp(const CallsPAge());
}

class CallsPAge extends StatelessWidget {
  const CallsPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
      Positioned(
          bottom: 20,
          right: 35,
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
              Icons.phone,
              color: Colors.white,
              size: 33,
            ),
          )),
      ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          const ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff075E54),
                child: Icon(
                  Icons.link,
                  size: 30,
                  color: Colors.white,
                )),
            title: Text(
              'Create call link',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 7),
              child: Text(
                'Share a link of your WhatsApp call',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, top: 22),
            child: Text(
              'Recents',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 116, 114, 114)),
            ),
          ),
          customCallsWidget(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4gXYvQZDWhF7eYJxkQFZ8GlDyHHqAAJ06c8uG0TL2g1wGmcnDX7gWEp8inhpraKLZoio&usqp=CAU',
            'Dad',
            'March 8, 12 : 45 AM',
            Icons.subdirectory_arrow_left,
            Colors.green,
            Icons.videocam,
          ),
          customCallsWidget(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1WXM5IVq1TJWzhGKuAC6F6YBcY1yJH4Cc9Q&usqp=CAU',
            'Brother',
            'March 20, 5 : 25 PM',
            Icons.subdirectory_arrow_right,
            Colors.green,
            Icons.call,
          ),
          customCallsWidget(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT86cyCL8Lw2_MgVQDZo-G9AUsWPnv5KNntgA&usqp=CAU',
            'Brother',
            'March  30, 7 : 59 PM',
            Icons.subdirectory_arrow_left,
            Colors.green,
            Icons.videocam,
          ),
          customCallsWidget(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzAn8tEU1Jag0WcLaHcdxaBLxLClw-zArNvg&usqp=CAU',
            'Brother',
            'March 10, 7 : 05 AM',
            Icons.subdirectory_arrow_left,
            Colors.red,
            Icons.call,
          ),
          customCallsWidget(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzAn8tEU1Jag0WcLaHcdxaBLxLClw-zArNvg&usqp=CAU',
            'Jagdesh Kumar',
            'March 10, 7 : 05 PM',
            Icons.subdirectory_arrow_left,
            Colors.red,
            Icons.call,
          ),
          customCallsWidget(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1WXM5IVq1TJWzhGKuAC6F6YBcY1yJH4Cc9Q&usqp=CAU',
            'Brother',
            'March 20, 5 : 25 PM',
            Icons.subdirectory_arrow_right,
            Colors.green,
            Icons.videocam,
          ),
          customCallsWidget(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzAn8tEU1Jag0WcLaHcdxaBLxLClw-zArNvg&usqp=CAU',
            'Jagdesh Kumar',
            'March 11, 1 : 05 AM',
            Icons.subdirectory_arrow_right,
            Colors.green,
            Icons.call,
          ),
        ],
      ),
    ]));
  }
}

customCallsWidget(img, title, subtitle, icon1, clr, icon2) {
  return Column(
    children: [
      const SizedBox(
        height: 15,
      ),
      ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage('$img'),
        ),
        title: Text(
          '$title',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        subtitle: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                icon1,
                color: clr,
                size: 25,
              ),
            ),
            Text(
              '$subtitle',
              style: TextStyle(fontSize: 19),
            ),
          ],
        ),
        trailing: Icon(
          icon2,
          color: Color(0xff075E54),
          size: 30,
        ),
      ),
    ],
  );
}
