import 'package:brasilnews/providers/favoritos.dart';
import 'package:brasilnews/providers/noticias.dart';
import 'package:brasilnews/screens/noticia_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritosScreen extends StatelessWidget {
  static const String ROUTE_NAME = '/favoritos';
  @override
  Widget build(BuildContext context) {
    final favoritosProvider = Provider.of<Favoritos>(context);
    final noticiasProvider = Provider.of<Noticias>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.only(left: 30, right: 30, top: 30),
        child: favoritosProvider.favoritos.length == 0
            ? Center(
                heightFactor: 3 / 2,
                child: Text('Não há artigos no momento'),
              )
            : GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 5 / 3,
                  crossAxisCount: 2,
                  crossAxisSpacing: MediaQuery.of(context).size.width * 0.02,
                  mainAxisSpacing: MediaQuery.of(context).size.width * 0.02,
                ),
                itemCount: favoritosProvider.favoritos.length,
                itemBuilder: (context, index) {
                  final noticia = noticiasProvider
                      .findById(favoritosProvider.favoritos[index]);
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(NoticiaScreen.ROUTE_NAME,
                          arguments: noticia.id);
                    },
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Stack(
                        children: [
                          Container(
                            child: FadeInImage.assetNetwork(
                              placeholder: 'assets/images/avatar/logo.png',
                              width: 250,
                              image: noticia.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                noticia.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: Colors.black38,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -5,
                            bottom: -10,
                            child: IconButton(
                                onPressed: () {
                                  favoritosProvider
                                      .removeFromFavorites(noticia.id);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                )),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
