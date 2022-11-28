import 'package:flutter/material.dart';
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