import 'package:brasilnews/models/noticia.dart';
import 'package:flutter/material.dart';

class Favoritos with ChangeNotifier {
  List<String> _favoritos = [];

  List<String> get favoritos {
    return [..._favoritos];
  }

  void addToFavorites(String id) {
    _favoritos.add(id);
    notifyListeners();
  }

  void removeFromFavorites(String id) {
    _favoritos.remove(id);
    notifyListeners();
  }

  bool isFavorited(String id) {
    return _favoritos.contains(id);
  }
}
