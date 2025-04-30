
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Üniversite Bilgileri:
// Üniversite: Erciyes Üniversitesi
// Fakülte: Mühendislik Fakültesi
// Bölüm: Bilgisayar Mühendisliği
// Ders: Mobile Application Development
// Öğretim Üyesi: Dr. Öğr. Üyesi Fehim Köylü

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayaç Uygulaması',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increase() {
    setState(() {
      _counter++;
    });
  }

  void _decrease() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sayaç Uygulaması')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sayı:', style: TextStyle(fontSize: 24)),
            Text('$_counter', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _increase, child: Text('Arttır')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _decrease, child: Text('Azalt')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _reset, child: Text('Sıfırla')),
              ],
            ),
            SizedBox(height: 40),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '''Erciyes Üniversitesi
Mühendislik Fakültesi
Bilgisayar Mühendisliği
Mobile Application Development
Dr. Öğr. Üyesi Fehim Köylü''',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
