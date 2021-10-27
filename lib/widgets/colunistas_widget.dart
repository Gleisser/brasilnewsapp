import 'package:brasilnews/providers/colunistas.dart';
import 'package:brasilnews/screens/colunista_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColunistasWidget extends StatelessWidget {
  const ColunistasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colunistasProvider = Provider.of<Colunistas>(context);
    final colunistas = colunistasProvider.colunistas;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...colunistas
              .map((col) => InkWell(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 32,
                        child: CircleAvatar(
                          radius: 30.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: FadeInImage.assetNetwork(
                              width: 60,
                              height: 60,
                              placeholder:
                                  'assets/images/avatar/av_${col.id + '.png'}',
                              image: col.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                          ColunistaScreen.ROUTE_NAME,
                          arguments: col.id);
                    },
                  ))
              .toList(),
        ],
      ),
    );
  }
}
