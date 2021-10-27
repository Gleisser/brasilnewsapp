import 'package:brasilnews/providers/noticias.dart';
import 'package:brasilnews/screens/noticia_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NoticiasListWidget extends StatelessWidget {
  const NoticiasListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final noticiasProvider = Provider.of<Noticias>(context);
    final ultimasNoticias = noticiasProvider.ultimas;

    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        // This avoids problems between ListView inside SingleChildScrollView and Column,
        // so here I avoid the list view to create a scroll feature and accept the feature coming
        //vfrom Single Child Scroll View. This applies to shrinkWrap and NeverScrollableScrollPhysics().
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: ultimasNoticias.length,
        itemBuilder: (context, index) {
          final not = ultimasNoticias[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                NoticiaScreen.ROUTE_NAME,
                arguments: not.id,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.05),
              ),
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Hero(
                      tag: 'image' + not.id,
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/avatar/logo.png',
                        width: MediaQuery.of(context).size.width * 0.3,
                        image: not.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          not.title,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.person,
                            size: 10,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            not.author,
                            style: TextStyle(
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            not.views.toString(),
                            style: TextStyle(
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
