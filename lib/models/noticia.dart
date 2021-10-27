import 'package:flutter/material.dart';

class Noticia with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String summary;
  final bool isDestaque;
  final int views;
  final String author;
  final String text;
  final String categoriaId;

  Noticia({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.isDestaque,
    required this.summary,
    required this.views,
    required this.author,
    required this.text,
    required this.categoriaId,
  });
}
