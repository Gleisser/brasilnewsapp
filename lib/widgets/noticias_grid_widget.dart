import 'package:brasilnews/providers/noticias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NoticiasGridView extends StatelessWidget {
  const NoticiasGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final noticiasProvider = Provider.of<Noticias>(context);
    final noticias = noticiasProvider.findByCategoria(id);

    print(id);

    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: noticias.length == 0
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
              itemCount: noticias.length,
              itemBuilder: (context, index) {
                return Card(
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
                          image: noticias[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            noticias[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.black38,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
