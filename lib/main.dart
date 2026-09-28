import 'package:flutter/material.dart';

void main() => runApp(const AppLayout());

class AppLayout extends StatelessWidget{
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Trip')),
        body: Column(
          children: [
            Image.network('https://easytraveljapan.com/images/upload/travelinfo/20260608110722_tokyo-skytree.webp', fit: BoxFit.cover),
            TitleSection(),
            ButtonsSection()
          ],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget{
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Tokyo Skytree", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text("Sumida, Tokyo, Japan")
              ],
            ),
            ),
            const Icon(Icons.start, color: Colors.red),
            const Text('41'),
          ],
        ),
    );

  }
}

class ButtonsSection extends StatelessWidget{
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _button(Icons.call, 'CALL'),
        _button(Icons.near_me, 'ROUTE'),
        _button(Icons.share, 'SEND'),
      ],
    );
  }

  Widget _button(IconData icon, String text){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.blue),
        Padding(padding: const EdgeInsets.only(top: 8), child: Text(text, style: const TextStyle(fontSize: 12, color: Colors.blue)),
        ),
      ],
    );
  }
}




