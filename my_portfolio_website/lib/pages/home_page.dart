import 'package:sparshsingh/config/assets.dart';
import 'package:sparshsingh/tabs/about_tab.dart';
import 'package:sparshsingh/tabs/skills_tab.dart';
import 'package:sparshsingh/tabs/projects_tab.dart';
import 'package:sparshsingh/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    SkillsTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Row(
              children: [
                Text(ThemeSwitcher.of(context).isDarkModeOn?'Light Mode':'Dark Mode'),
                IconButton(
                  icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny, color: Colors.yellow,):Image.asset(Assets.moon,height: 20,width: 20,),
                  onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
                ),
              ],
            )
          ],
        ),
        body: Center(
          child: tabWidgets.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('About Me'),
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.star_border),
              title: Text('My Skills'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text('My Projects'),
            )
          ],
          currentIndex: _selectedIndex,
          onTap: (index)=> setState(() => _selectedIndex = index),
          selectedItemColor: ThemeSwitcher.of(context).isDarkModeOn?Colors.yellow: Theme.of(context).accentColor,
        ),
    );
  }
}
