import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:brasilnews/providers/noticias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RunningTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final noticiasProvider = Provider.of<Noticias>(context);
    final noticias = noticiasProvider.noticias;
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(2),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.05,
      color: Colors.red,
      child: AnimatedTextKit(
        animatedTexts: noticias
            .map((not) => TypewriterAnimatedText(
                  not.title,
                  textAlign: TextAlign.center,
                ))
            .toList(),
      ),
    );
  }
}
