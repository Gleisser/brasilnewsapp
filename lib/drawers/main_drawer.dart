import 'package:brasilnews/screens/favoritos_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    Widget buildListTile(String title, Icon icon, String routeName) {
      return ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () => Navigator.of(context).pushNamed(routeName),
      );
    }

    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.3,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
                ),
                CircleAvatar(
                  maxRadius: 40,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/04/06/19/34/girl-2209147_1280.jpg'),
                ),
                Text(
                  'Juliana da Silva',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
          ),
          buildListTile('Configurações', Icon(Icons.build_circle), "/"),
          buildListTile('Perfil', Icon(Icons.account_circle_sharp), "/"),
          buildListTile('Salvos', Icon(Icons.bookmark_add_sharp),
              FavoritosScreen.ROUTE_NAME),
          buildListTile('Sobre Nós', Icon(Icons.apartment_sharp), "/"),
          buildListTile('Fale Conosco', Icon(Icons.chat_bubble_sharp), "/"),
          Spacer(),
          buildListTile('Sair', Icon(Icons.directions_run), "/"),
        ],
      ),
    );
  }
}
