import 'package:flutter/material.dart';

void main() {
  runApp(const ChatsPage());
}

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

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
                    BoxShadow(
                        color: Colors.grey, blurRadius: 3, spreadRadius: 2)
                  ]),
              child: const Icon(
                Icons.message,
                color: Colors.white,
                size: 33,
              ),
            )),
        ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT86cyCL8Lw2_MgVQDZo-G9AUsWPnv5KNntgA&usqp=CAU',
                'Mom',
                'Have you lunched ?',
                'Today',
                Color.fromARGB(255, 73, 163, 204)),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4gXYvQZDWhF7eYJxkQFZ8GlDyHHqAAJ06c8uG0TL2g1wGmcnDX7gWEp8inhpraKLZoio&usqp=CAU',
              'Dad',
              'Where are you ?',
              'Yesterday',
            ),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1WXM5IVq1TJWzhGKuAC6F6YBcY1yJH4Cc9Q&usqp=CAU',
                'Brother',
                'Call me.',
                '1/2/2023',
                Color.fromARGB(255, 73, 163, 204)),
            customStatusWidget('https://jawan-tech.web.app/landscape_logo.png',
                'Flutter Course', 'Submit Assignments', 'Today'),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://1000logos.net/wp-content/uploads/2020/09/JavaScript-Logo.png',
                'JavaScript Course',
                'Assignments...?',
                '1/2/2023',
                Color.fromARGB(255, 73, 163, 204)),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzAn8tEU1Jag0WcLaHcdxaBLxLClw-zArNvg&usqp=CAU',
                '92+3037645278',
                'How r u?',
                '3/4/2023',
                Color.fromARGB(255, 73, 163, 204)),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROitDlmEnYYyV-cFiCW3wLRoTJeqjGHg354w&usqp=CAU',
                '92+3033045244',
                'Hey....?',
                '1/6/2023'),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT86cyCL8Lw2_MgVQDZo-G9AUsWPnv5KNntgA&usqp=CAU',
                'Mom',
                'Have you lunched ?',
                'Today',
                Color.fromARGB(255, 73, 163, 204)),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4gXYvQZDWhF7eYJxkQFZ8GlDyHHqAAJ06c8uG0TL2g1wGmcnDX7gWEp8inhpraKLZoio&usqp=CAU',
                'Dad',
                'Where are you ?',
                'Yesterday',
                Color.fromARGB(255, 73, 163, 204)),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1WXM5IVq1TJWzhGKuAC6F6YBcY1yJH4Cc9Q&usqp=CAU',
                'Brother',
                'Call me.',
                '1/2/2023'),
            customStatusWidget('https://jawan-tech.web.app/landscape_logo.png',
                'Flutter Course', 'Submit Assignments', 'Today'),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://1000logos.net/wp-content/uploads/2020/09/JavaScript-Logo.png',
                'JavaScript Course',
                'Assignments...?',
                '1/2/2023',
                Color.fromARGB(255, 73, 163, 204)),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzAn8tEU1Jag0WcLaHcdxaBLxLClw-zArNvg&usqp=CAU',
                '92+3037645278',
                'How r u?',
                '3/4/2023'),
            const SizedBox(
              height: 15,
            ),
            customStatusWidget(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROitDlmEnYYyV-cFiCW3wLRoTJeqjGHg354w&usqp=CAU',
                '92+3033045244',
                'Hey....?',
                '1/6/2023',
                Color.fromARGB(255, 73, 163, 204)),
          ],
        ),
      ]),
    );
  }
}

customStatusWidget(img, title, subtitle, trailing, [clr]) {
  return Container(
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage('$img'),
        radius: 30,
      ),
      title: Text(
        '$title',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.done_all,
            size: 27,
            color: clr,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            '$subtitle',
            style: TextStyle(fontSize: 19),
          ),
        ],
      ),
      trailing: Text('$trailing', style: TextStyle(fontSize: 19)),
    ),
  );
}
