import 'dart:math' as math;
import 'package:brasilnews/models/noticia.dart';
import 'package:brasilnews/providers/categorias.dart';
import 'package:brasilnews/providers/noticias.dart';
import 'package:brasilnews/screens/noticia_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DestaquesWidget extends StatelessWidget {
  const DestaquesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final noticiasProvider = Provider.of<Noticias>(context);
    final categoriasProvider = Provider.of<Categorias>(context);
    final destaques = noticiasProvider.destaques;
    String getCategoryName(String categoriaId) {
      return categoriasProvider.findById(categoriaId).title;
    }

    Widget buildDestaqueTile(Noticia noticia) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(
              NoticiaScreen.ROUTE_NAME,
              arguments: noticia.id,
            );
          },
          child: Stack(children: [
            Container(
              child: Hero(
                tag: 'image' + noticia.id,
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/avatar/logo.png',
                  width: 250,
                  image: noticia.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width * 0.02),
                bottom: (MediaQuery.of(context).size.width * 0.02),
              ),
              width: 220,
              height: 150,
              alignment: Alignment.bottomCenter,
              child: Text(
                noticia.title,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black38,
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 15,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(0.8),
                ),
                padding: EdgeInsets.all(4),
                child: Text(
                  getCategoryName(noticia.categoriaId),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            )
          ]),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 150,
        child: Row(
          children: [...destaques.map((n) => buildDestaqueTile(n))],
        ),
      ),
    );
  }
}
