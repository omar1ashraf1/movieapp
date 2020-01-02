import 'package:flutter/material.dart';
import './category.dart';


void main() => runApp(HomePage());

/// This Widget is the main application widget.
class HomePage extends StatelessWidget {
  static const String _title = 'movie app sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static  List<Widget> _widgetOptions = <Widget>[
    
    ListImages(),
    Text(
      'Index 1: CONTACT',
    ),
    Text(
      'Index 2: REGISTER',
      
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            title: Text('contact'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.contacts),
            title: Text('register'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}
