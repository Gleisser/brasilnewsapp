import 'package:brasilnews/models/categoria.dart';
import 'package:flutter/material.dart';

class Categorias with ChangeNotifier {
  List<Categoria> _categorias = [
    Categoria('0', 'Imigraçao',
        'https://images.unsplash.com/photo-1518544866330-4e716499f800'),
    Categoria('1', 'Negócios',
        'https://images.unsplash.com/photo-1520607162513-77705c0f0d4a'),
    Categoria('2', 'Estudos',
        'https://images.unsplash.com/photo-1427504494785-3a9ca7044f45'),
    Categoria('3', 'Estilo de Vida',
        'https://images.unsplash.com/photo-1531983412531-1f49a365ffed'),
    Categoria('4', 'Carreira',
        'https://images.unsplash.com/photo-1507679799987-c73779587ccf'),
    Categoria('5', 'Turismo',
        'https://images.unsplash.com/photo-1518803777327-5a904af70f7c'),
  ];

  List<Categoria> get categorias {
    return [..._categorias];
  }

  Categoria findById(String id) {
    return _categorias.firstWhere((cat) => cat.id == id);
  }
}
