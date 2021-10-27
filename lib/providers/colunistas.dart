import 'package:brasilnews/models/colunistas.dart';
import 'package:flutter/material.dart';

class Colunistas with ChangeNotifier {
  List<Colunista> _colunistas = [
    Colunista(
      "0",
      "Flavia",
      "https://brasilnews.co.nz/wp-content/uploads/2021/03/WhatsApp-Image-2021-03-20-at-15.20.56.jpeg",
    ),
    Colunista(
      "1",
      "Amanda",
      "https://brasilnews.co.nz/wp-content/uploads/2021/07/Amanda.png",
    ),
    Colunista(
      "2",
      "Gleisser",
      "https://brasilnews.co.nz/wp-content/uploads/2021/08/DSC_0087-scaled.jpg",
    ),
    Colunista(
      "3",
      "Tamires",
      "https://brasilnews.co.nz/wp-content/uploads/2020/03/Bio-scaled.jpg",
    ),
    Colunista(
      "4",
      "Clarisse",
      "https://brasilnews.co.nz/wp-content/uploads/2019/10/20190921_120418.jpg",
    ),
  ];

  List<Colunista> get colunistas {
    return [..._colunistas];
  }

  Colunista findById(String id) {
    return _colunistas.firstWhere((col) => col.id == id);
  }
}
