import 'package:flutter/material.dart';
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