import 'package:flutter/material.dart';
import 'package:redrondo/page/lessons.dart';
import 'home.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:redrondo/page/myprofile_page.dart';
void main() => runApp(MainPage());


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  int _selectedPage=0;
  final _pageOptions=[

    home_page(),
    lessons(),

    MyProfilePage(),

  ];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: _pageOptions.length);
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: SearchBar( /* buraya sonra sorgu yazacaksı */
        defaultBar: AppBar(
          backgroundColor: Colors.grey,
        leading: IconButton(
        icon: Icon(Icons.menu),

    ),
        ),
        ),
    //body: _pageOptions[_selectedPage] ,
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: _pageOptions,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.deepOrange,
          backgroundColor: Colors.red,
          currentIndex: _selectedPage,
          onTap: (int index){
            setState(() {
              _selectedPage = index;
              _tabController.index = _selectedPage;
            });
          },
          items: [
            BottomNavigationBarItem(

                icon: Icon(Icons.home),
                backgroundColor:  Color(0xFF1D1E33),
                title: Text('Home')
            ),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFF1D1E33),
                icon: Icon(Icons.book),
                title: Text('Derslerim')
            ),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFF1D1E33),
                icon: Icon(Icons.school),
                title: Text('Hedeflerim')
            ),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFF1D1E33),
                icon: Icon(Icons.person),
                title: Text('Profilim')
            ),

          ],
        ),
      ),

    );
  }
}
