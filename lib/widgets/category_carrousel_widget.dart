import 'package:brasilnews/providers/categorias.dart';
import 'package:brasilnews/screens/categoria_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:provider/provider.dart';

class CategoryCarrousel extends StatelessWidget {
  const CategoryCarrousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriasProvider = Provider.of<Categorias>(context);
    final categorias = categoriasProvider.categorias;
    Widget buildCategoryTile(String title, String id) {
      return InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(CategoriaScreen.ROUTE_NAME, arguments: id);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(0.7),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            width: 110,
            height: 40,
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...categorias
                .map((cat) => buildCategoryTile(cat.title, cat.id))
                .toList(),
          ],
        ),
      ),
    );
  }
}
