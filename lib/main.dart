import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key); //コンストラクタ
  @override
  State<FirstScreen> createState() =>  _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('第一画面')),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('第一画面です',style:TextStyle(fontSize: 20.0)),
              ]
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(label:'1画面', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:'2画面', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label:'3画面', icon: Icon(Icons.list)),
        ],
        onTap: (int index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/second');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/third');
          }
        },
      ),
    );
  }
}
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key); //コンストラクタ
  @override
  State<SecondScreen> createState() =>  _SecondScreenState();
}
class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('第二画面')),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('第二画面です',style:TextStyle(fontSize: 20.0)),
              ]
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(label:'1画面', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:'2画面', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label:'3画面', icon: Icon(Icons.list)),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/third');
          }
        },
      ),
    );
  }
}
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key); //コンストラクタ
  @override
  State<ThirdScreen> createState() =>  _ThirdScreenState();
}
class _ThirdScreenState extends State<ThirdScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('第三画面')),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('第三画面です',style:TextStyle(fontSize: 20.0)),
              ]
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(label:'1画面', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:'2画面', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label:'3画面', icon: Icon(Icons.list)),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/second');
          }
        },
      ),
    );
  }
}
