import 'package:brasilnews/providers/categorias.dart';
import 'package:brasilnews/widgets/noticias_grid_widget.dart';
import 'package:brasilnews/widgets/noticias_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriaScreen extends StatelessWidget {
  static const String ROUTE_NAME = '/categoria';
  const CategoriaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final categoriasProvider = Provider.of<Categorias>(context);
    final categoria = categoriasProvider.findById(id);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              child: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  color: Colors.white,
                  child: Text(
                    categoria.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 12,
                    ),
                  ),
                ),
                background: Image.network(
                  categoria.imageUrl,
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.5),
                  colorBlendMode: BlendMode.color,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: NoticiasGridView(),
          ),
        ],
      ),
    );
  }
}
