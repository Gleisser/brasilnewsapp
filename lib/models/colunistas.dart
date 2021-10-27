import 'package:flutter/material.dart';

class Colunista with ChangeNotifier {
  final String id;
  final String nome;
  final String imageUrl;

  Colunista(this.id, this.nome, this.imageUrl);
}
