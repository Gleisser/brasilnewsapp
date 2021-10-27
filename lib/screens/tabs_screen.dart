import 'package:brasilnews/drawers/main_drawer.dart';
import 'package:brasilnews/screens/busca_screen.dart';
import 'package:brasilnews/screens/comunidade_screen.dart';
import 'package:brasilnews/screens/home_screen.dart';
import 'package:brasilnews/screens/marketplace_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  static const String ROUTE_NAME = '/tabs';
  TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> _screens = <Widget>[
    HomeScreen(),
    ComunidadeScreen(),
    BuscaScreen(),
    MarketplaceScreen(),
  ];

  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _items = [
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.people,
        size: 30,
      ),
      Icon(
        Icons.search,
        size: 30,
      ),
      Icon(
        Icons.shopping_bag,
        size: 30,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Brasil News'),
        actions: [
          _selectedIndex == 0
              ? PopupMenuButton(
                  icon: Icon(Icons.filter_alt),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Destaques'),
                    ),
                    PopupMenuItem(
                      child: Text('Recentes'),
                    ),
                    PopupMenuItem(
                      child: Text('Populares'),
                    )
                  ],
                )
              : Container(),
        ],
      ),
      drawer: MainDrawer(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.black12,
        items: _items,
        onTap: _selectPage,
      ),
    );
  }
}
