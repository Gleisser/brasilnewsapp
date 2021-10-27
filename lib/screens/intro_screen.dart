import 'package:brasilnews/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildIntroText(String titleText) {
      return Text(
        titleText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      );
    }

    return IntroViewsFlutter(
      [
        PageViewModel(
          title: buildIntroText(
            'Conecte-se com a comunidade brasileira na Nova Zelândia.',
          ),
          mainImage: Lottie.asset('assets/images/lotties/intro_1.json'),
          pageColor: Colors.green.shade500,
        ),
        PageViewModel(
          title: buildIntroText(
            'Esteja atualizado com que acontece aqui na sua língua',
          ),
          mainImage: Lottie.asset('assets/images/lotties/intro_2.json'),
          pageColor: Colors.blue.shade500,
        ),
        PageViewModel(
          title: buildIntroText(
            'Compre e Venda seus itens com a comunidade',
          ),
          mainImage: Lottie.asset('assets/images/lotties/intro_3.json'),
          pageColor: Colors.yellow.shade800,
        ),
      ],
      doneText: const Text('COMEÇAR'),
      skipText: const Text('PULAR'),
      onTapDoneButton: () {
        Navigator.of(context).pushReplacementNamed(TabsScreen.ROUTE_NAME);
      },
    );
  }
}
