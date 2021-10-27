import 'package:brasilnews/widgets/colunistas_widget.dart';
import 'package:brasilnews/widgets/destaques_carrousel_widget.dart';
import 'package:brasilnews/widgets/noticias_list_widget.dart';
import 'package:brasilnews/widgets/running_text_home_widget.dart';
import 'package:flutter/material.dart';
import 'category_carrousel_widget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildSectionTitle(String title) {
      return Container(
        margin: EdgeInsets.all(8),
        alignment: Alignment.topLeft,
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Noticias de Ultima Hora',
            style: TextStyle(fontSize: 12),
          ),
          RunningTextWidget(),
          CategoryCarrousel(),
          buildSectionTitle('Destaques'),
          DestaquesWidget(),
          buildSectionTitle('Colunistas'),
          ColunistasWidget(),
          buildSectionTitle('Ultimas Noticias'),
          NoticiasListWidget(),
        ],
      ),
    );
  }
}
