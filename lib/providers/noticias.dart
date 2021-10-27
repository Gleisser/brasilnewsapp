import 'package:brasilnews/models/noticia.dart';
import 'package:flutter/material.dart';

class Noticias with ChangeNotifier {
  List<Noticia> _noticias = [
    Noticia(
      id: '0',
      title: 'Covid-19: Conheca as regras para os niveis 2 e 3',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/Regras-para-business-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: true,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Assim mesmo, a estrutura atual da organização promove a alavancagem das diversas correntes de pensamento. 
        Por outro lado, a adoção de políticas descentralizadoras não pode mais se dissociar das diretrizes de desenvolvimento para o futuro. 
        Desta maneira, a crescente influência da mídia é uma das consequências das direções preferenciais no sentido do progresso.
        No entanto, não podemos esquecer que o início da atividade geral de formação de atitudes auxilia a preparação e a 
        composição dos modos de operação convencionais. Por conseguinte, o comprometimento entre as equipes garante a contribuição de um 
        grupo importante na determinação de alternativas às soluções ortodoxas. Nunca é demais lembrar o peso e o significado destes problemas, 
        uma vez que o acompanhamento das preferências de consumo assume importantes posições no estabelecimento do sistema de formação de 
        quadros que corresponde às necessidades. Pensando mais a longo prazo, a hegemonia do ambiente político desafia a capacidade de 
        equalização dos procedimentos normalmente adotados.""",
      categoriaId: "0",
    ),
    Noticia(
      id: '1',
      title: 'Auckland vai para o nível 3 por duas semanas',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/auckland-2160547_1920-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: true,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "0",
    ),
    Noticia(
      id: '2',
      title: 'Uma Luta Contra a Imigração | O que ninguém te conta',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/08/familia-MIcaela-780x470.png',
      author: 'Flavia Bonturi Previato',
      isDestaque: true,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "1",
    ),
    Noticia(
      id: '3',
      title: 'Covid-19: últimas informações atualizações',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/virus-4937553_1920-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: true,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "1",
    ),
    Noticia(
      id: '4',
      title: 'A incrível Ruakuri Cave',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/Design-sem-nome-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: true,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "1",
    ),
    Noticia(
      id: '5',
      title: 'Eles viajaram 50 países | O que ninguém te conta',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/eles-viajaram-50-pa-ses-RMDGrOVI7gg-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: true,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "1",
    ),
    Noticia(
      id: '6',
      title: 'Covid-19: Conheca as regras para os niveis 2 e 3',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/Regras-para-business-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: false,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "3",
    ),
    Noticia(
      id: '7',
      title: 'Auckland vai para o nível 3 por duas semanas',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/auckland-2160547_1920-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: false,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "3",
    ),
    Noticia(
      id: '8',
      title: 'Uma Luta Contra a Imigração | O que ninguém te conta',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/08/familia-MIcaela-780x470.png',
      author: 'Flavia Bonturi Previato',
      isDestaque: false,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "4",
    ),
    Noticia(
      id: '9',
      title: 'Covid-19: últimas informações atualizações',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/virus-4937553_1920-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: false,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "4",
    ),
    Noticia(
      id: '10',
      title: 'A incrível Ruakuri Cave',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/Design-sem-nome-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: false,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "4",
    ),
    Noticia(
      id: '11',
      title: 'Eles viajaram 50 países | O que ninguém te conta',
      imageUrl:
          'https://brasilnews.co.nz/wp-content/uploads/2021/09/eles-viajaram-50-pa-ses-RMDGrOVI7gg-780x470.jpg',
      author: 'Flavia Bonturi Previato',
      isDestaque: false,
      summary:
          'Para garantir mais fluidez e organização as empresas precisam seguir certas regras específicas que mudam entre um nível e outro…',
      views: 33,
      text:
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non fermentum lacus. 
        Pellentesque a fermentum orci, vitae convallis nunc. In vel suscipit tortor. 
        Sed eu libero eu velit venenatis pharetra eu eu quam. Sed interdum ac velit aliquet aliquet. 
        Nullam dui ante, placerat ac congue sed, molestie nec libero. Vivamus at congue augue, blandit convallis nisi. 
        In a auctor diam, non scelerisque purus. Donec malesuada viverra lorem, eget luctus enim posuere non. 
        Nam eget velit id quam eleifend mattis. Morbi efficitur sapien in risus ullamcorper, sit amet tincidunt mauris fermentum. 
        Nullam interdum lectus sit amet nisl sodales porta sit amet in est. Vestibulum varius malesuada dictum. 
        Quisque massa ligula, convallis id dolor nec, egestas ullamcorper urna. Fusce varius semper quam.""",
      categoriaId: "5",
    ),
  ];

  List<Noticia> get noticias {
    return [..._noticias];
  }

  List<Noticia> get destaques {
    return [..._noticias.where((noticia) => noticia.isDestaque)];
  }

  List<Noticia> get ultimas {
    return [..._noticias.where((noticia) => !noticia.isDestaque)];
  }

  Noticia findById(String id) {
    return _noticias.firstWhere((not) => not.id == id);
  }

  List<Noticia> findByCategoria(String id) {
    return _noticias.where((not) => not.categoriaId == id).toList();
  }
}
