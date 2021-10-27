import 'package:brasilnews/models/noticia.dart';
import 'package:brasilnews/providers/favoritos.dart';
import 'package:brasilnews/providers/noticias.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';

class NoticiaScreen extends StatefulWidget {
  static const String ROUTE_NAME = '/noticia';

  @override
  _NoticiaScreenState createState() => _NoticiaScreenState();
}

class _NoticiaScreenState extends State<NoticiaScreen> {
  late FlutterTts flutterTts;
  bool isPlaying = false;
  late double _bodyFontSize;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage('pt-BR');
    _bodyFontSize = 16;
  }

  Future _speak(Noticia not) async {
    print(isPlaying);
    if (isPlaying) {
      await flutterTts.stop();
    } else {
      await flutterTts.speak(not.text);
    }

    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final not = Provider.of<Noticias>(context).findById(id);
    final favoritosProvider = Provider.of<Favoritos>(context);
    final isOnFavorites = favoritosProvider.isFavorited(id);

    void updateFontSize(double newValue) {
      setState(() {
        _bodyFontSize = newValue;
      });
    }

    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _speak(not),
      //   elevation: 8,
      //   child: isPlaying ? Icon(Icons.stop) : Icon(Icons.music_note),
      // ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.black,
        children: [
          SpeedDialChild(
            child: isPlaying ? Icon(Icons.stop) : Icon(Icons.music_note),
            label: 'Ler Para Mim',
            onTap: () {
              _speak(not);
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.zoom_in_rounded),
            label: 'Tamanho da Fonte',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    content: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return Container(
                        height: 80,
                        width: 80,
                        child: Column(
                          children: [
                            Text('Escolha o tamanho da fonte:'),
                            Slider(
                              value: _bodyFontSize,
                              label: _bodyFontSize.round().toString(),
                              min: 16,
                              max: 30,
                              divisions: 10,
                              onChanged: (newValue) {
                                setState(() {});
                                updateFontSize(newValue);
                              },
                            ),
                          ],
                        ),
                      );
                    }),
                    actions: [
                      FlatButton(
                        onPressed: () {
                          // Use the second argument of Navigator.pop(...) to pass
                          // back a result to the page that opened the dialog
                          Navigator.pop(context, _bodyFontSize);
                        },
                        child: Text('Confirmar'),
                      )
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(isOnFavorites
                          ? 'Removido dos Favoritos'
                          : 'Adicionado ao Favoritos'),
                    ),
                  );
                  isOnFavorites
                      ? favoritosProvider.removeFromFavorites(id)
                      : favoritosProvider.addToFavorites(id);
                },
                child: isOnFavorites
                    ? Icon(Icons.bookmark_remove)
                    : Icon(Icons.bookmark_add),
              ),
              IconButton(
                  onPressed: () {
                    Share.share(
                        "Gostei desse artigo do https://brasilnews.co.nz");
                  },
                  icon: Icon(Icons.share))
            ],
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
                    not.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 12,
                    ),
                  ),
                ),
                background: Hero(
                  tag: 'image' + not.id,
                  child: Image.network(
                    not.imageUrl,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.5),
                    colorBlendMode: BlendMode.color,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(4),
                  color: Colors.red,
                  child: Text(
                    'Nova Zelândia',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("por ${not.author}"),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.grey,
                    ),
                    Text(not.views.toString())
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 100),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: DropCapText(
                    not.text,
                    style: TextStyle(fontSize: _bodyFontSize),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
