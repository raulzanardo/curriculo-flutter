import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/widget_custom_icon.dart';
import '../widgets/widget_photo.dart';
import '../widgets/widget_text_box.dart';

import '../localization/localization_about.i18n.dart';

class PageAbout extends StatefulWidget {
  const PageAbout({super.key});

  @override
  State<PageAbout> createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 700,
          child: Column(
            children: [
              WidgetTextBox(
                'Oi, meu nome é Raul!'.i18n,
                'Sou desenvolvedor Flutter há 3 anos. Como sou formado em Engenharia de controle e automação, desenvolvo aplicativos para o setor industrial, trabalhando desde o início do conceito, definindo e criando interfaces e fluxos de usuário, fazendo testes, até a publicação.'
                    .i18n,
              ),
              WidgetTextBox(
                '',
                'Nascido e criado em São Paulo, adoro exercitar minha criatividade programando, criando interfaces, desenvolvendo dispositivos eletrônicos e fazendo música.'
                    .i18n,
              ),
              WidgetTextBox(
                '',
                'Sou conhecido pela minha forma criativa de pensar e resolver problemas, minha paixão por construir e modificar coisas, por sempre pensar no futuro e não ter medo de experimentar ou fazer algo novo e excitante. Valorizando uma meta bem definida, com estrutura e ordem, gosto de comunicação clara e objetiva. Família e amigos são minhas coisas mais importantes.'
                    .i18n,
              ),
              WidgetTextBox(
                '',
                'Já trabalhei programando Controladores lógicos industriais, desenvolvendo trajetórias e interfaces gráficas para sistemas que utilizam robôs de pintura e paletização, criando e integrando sistemas de monitoramento e coleta de dados para plantas industriais. Também me aventurei no mundo da música, como produtor, engenheiro de som de palco e em estúdios e como roadie.'
                    .i18n,
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(width: 5.0),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        launchUrl(emailLaunchUri);
                      },
                      child: const Text(
                        'raulzanardo@gmail.com',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3.0),
              Row(
                children: [
                  WidgetCustomIcon(iconName: 'github'),
                  const SizedBox(width: 5.0),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse('https://github.com/raulzanardo'));
                      },
                      child: const Text(
                        'github.com/raulzanardo',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3.0),
              Row(
                children: [
                  WidgetCustomIcon(iconName: 'linkedin'),
                  const SizedBox(width: 5.0),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        launchUrl(
                          Uri.parse('https://www.linkedin.com/in/raulzanardo/'),
                        );
                      },
                      child: const Text(
                        'linkedin.com/in/raulzanardo/',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),

              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: constraints.maxWidth,
                    height: constraints.maxWidth * 0.7,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/photo_about.png'),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
