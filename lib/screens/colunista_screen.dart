import 'package:brasilnews/providers/colunistas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story_view/story_view.dart';
import 'package:widget_mask/widget_mask.dart';

import 'noticia_screen.dart';

class ColunistaScreen extends StatelessWidget {
  static const String ROUTE_NAME = "/stories";
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final col = Provider.of<Colunistas>(context).findById(id);
    List<StoryItem> storyItems = [
      StoryItem(
        Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Text(
                "${'Veja os artigos de ' + col.nome}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              WidgetMask(
                blendMode: BlendMode.srcATop,
                childSaveLayer: true,
                mask: Image.network(
                  col.imageUrl,
                  fit: BoxFit.cover,
                ),
                child: Image.asset(
                  'assets/images/mask.png',
                  scale: 0.5,
                ),
              ),
            ],
          ),
        ),
        duration: Duration(seconds: 5),
      ),
      StoryItem(
        Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                "https://brasilnews.co.nz/wp-content/uploads/2021/09/Regras-para-business-780x470.jpg",
                fit: BoxFit.cover,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 50, left: 10, right: 10),
                child: Text(
                  'Covid 19 - Conheça as regras para os níveis 2 e 3',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    backgroundColor: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
        duration: Duration(seconds: 5),
      ),
    ];

    return Scaffold(
      body: StoryView(
        storyItems: storyItems,
        controller: controller,
        onComplete: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
