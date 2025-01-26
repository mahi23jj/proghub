import 'package:flutter/material.dart';
import 'package:travel/page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
   int _Index = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // List for BottomNavigationBar content
  static  List<Widget> _bottomNavOptions = <Widget>[
    Homepage(),
    search(),
    Message(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
 
    });
  }
    void _onTapped(int index) {
    setState(() {
      _Index = index;
  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Demo'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Center(
        // Show the content from the appropriate list based on selectedIndex
        child:
             _bottomNavOptions[_selectedIndex] // BottomNavigationBar content
            // Drawer content (shifting index)
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text(' Profile'),
              selected: _Index == 0,
              onTap: () {
                Navigator.pop(context);
             
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()));
              },
            ),
            ListTile(
              title: const Text('Settings'),
              selected: _Index == 1,
              onTap: () {
                Navigator.pop(context);
             
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));// Business index (1)
              },
            ),
            ListTile(
              title: const Text('About'),
              selected: _Index == 1,
              onTap: () {
                Navigator.pop(context);
             
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()));// Business index (1)
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: ' Search'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Messages'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(child: Text('Settings Page')),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Center(child: Text('About Page')),
    );
  }
}
class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Center(child: Text('Search Page')),
    );
  }
}

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Center(child: Text('Message Page')),
    );
  }
}
class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('profile')),
      body: Center(child: Text('profile Page')),
    );
  }
}

// class AboutPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('About')),
//       body: Center(child: Text('About Page')),
//     );
//   }
// }