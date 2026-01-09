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
                'Sou desenvolvedor Flutter há mais de 5 anos e também trabalho com desenvolvimento web utilizando React e backend com NestJS. Com formação em Engenharia de Controle e Automação, especializo-me no desenvolvimento de aplicativos mobile e web para o setor industrial, atuando em todo o ciclo de desenvolvimento: desde a concepção e design de interfaces até testes, otimização e publicação de soluções robustas e escaláveis.'
                    .i18n,
              ),
              WidgetTextBox('', 'Nascido e criado em São Paulo, sou apaixonado por tecnologia e inovação. Nos meus momentos livres, exercito minha criatividade através da programação, design de interfaces, desenvolvimento de projetos eletrônicos e produção musical.'.i18n),
              WidgetTextBox(
                '',
                'Reconhecido pela minha abordagem criativa na resolução de problemas e paixão por inovação, valorizo a experimentação e não tenho receio de explorar novas tecnologias. Acredito em metas bem definidas, comunicação clara e processos estruturados. Família e amigos são fundamentais na minha vida, proporcionando equilíbrio entre vida pessoal e profissional.'
                    .i18n,
              ),
              WidgetTextBox(
                '',
                'Minha experiência inclui desenvolvimento web com React, desenvolvimento de APIs backend com NestJS, programação de CLPs (Controladores Lógicos Programáveis), desenvolvimento de sistemas para robótica industrial (pintura e paletização), e criação de soluções completas de IoT para monitoramento e análise de dados em plantas industriais. Também possuo experiência diversificada no setor de áudio e música, atuando como produtor musical, engenheiro de som e técnico de palco.'
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
                      child: const Text('raulzanardo@gmail.com', style: TextStyle(color: Colors.blue)),
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
                      child: const Text('github.com/raulzanardo', style: TextStyle(color: Colors.blue)),
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
                        launchUrl(Uri.parse('https://www.linkedin.com/in/raulzanardo/'));
                      },
                      child: const Text('linkedin.com/in/raulzanardo/', style: TextStyle(color: Colors.blue)),
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
                      image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage('assets/images/photo_about.png')),
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
