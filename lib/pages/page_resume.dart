import 'package:curriculo/widgets/widget_custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/widget_photo.dart';
import '../widgets/widget_text_box.dart';

import '../localization/localization_resume.i18n.dart';

class PageResume extends StatefulWidget {
  const PageResume({super.key});

  @override
  State<PageResume> createState() => _PageResumeState();
}

class _PageResumeState extends State<PageResume> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  Container(alignment: Alignment.center, width: (MediaQuery.of(context).size.width > 800) ? 200 : double.infinity, child: const WidgetPhoto()),
                  Container(
                    padding: (MediaQuery.of(context).size.width > 800) ? const EdgeInsets.fromLTRB(20.0, 0, 0, 20.0) : const EdgeInsets.all(0.0),
                    width: (MediaQuery.of(context).size.width > 800) ? 500 : double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WidgetTextBox(
                          'Resumo Profissional'.i18n,
                          'Desenvolvedor Frontend e Mobile com mais de 5 anos de experiência na criação de produtos digitais para web e mobile. Especialista em Flutter e React, com forte foco em UX/UI, performance e qualidade de código.\n\nAtuação em produtos SaaS e aplicativos em produção, participando ativamente de decisões técnicas, arquitetura e evolução de produto. Possui background em automação industrial e eletrônica, trazendo visão sistêmica, confiabilidade e engenharia de alto nível para o desenvolvimento de software moderno.\n\nExperiência em AI-assisted development, utilizando ferramentas como GitHub Copilot, Cursor e Windsurf para acelerar desenvolvimento e otimizar produtividade. Proficiente em prompt engineering para maximizar eficiência com AI agents no ciclo de desenvolvimento.'
                              .i18n,
                        ),
                        Visibility(
                          visible: (MediaQuery.of(context).size.width > 800),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      launchUrl(Uri.parse('https://github.com/raulzanardo'));
                                    },
                                    icon: WidgetCustomIcon(iconName: 'github'),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      launchUrl(Uri.parse('https://www.linkedin.com/in/raulzanardo/'));
                                    },
                                    icon: WidgetCustomIcon(iconName: 'linkedin'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                ],
              ),
              Text('Experiência Profissional'.i18n, style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20.0),
              WidgetTextBox(
                'Desenvolvedor Frontend na Petplace'.i18n,
                'Atuação no desenvolvimento do 24Pet Shelter, plataforma SaaS para gestão de abrigos e ONGs de proteção animal. Desenvolvimento e evolução do frontend utilizando React e TypeScript, implementação de interfaces acessíveis, responsivas e performáticas. Otimização de fluxos críticos para usuários não técnicos, melhorando a usabilidade do sistema. Colaboração próxima com times de produto, QA e DevOps em ambiente ágil. Integração com pipelines de CI/CD no Microsoft Azure. - Maio de 2024 até Dezembro de 2025'
                    .i18n,
              ),
              WidgetTextBox(
                'Desenvolvedor Flutter na MyOrbit'.i18n,
                'Desenvolvimento do aplicativo MyOrbit, focado na gestão de relacionamentos e organização de círculos sociais com forte ênfase em privacidade. Desenvolvimento mobile com Flutter/Dart para Android e iOS, participação direta na concepção do produto e decisões técnicas. Implementação de fluxos complexos de UX/UI em colaboração com design. Contribuição no backend, implementando APIs e regras de negócio. Aplicação de clean architecture e design patterns para escalabilidade. - Maio de 2024 até Dezembro de 2025'
                    .i18n,
              ),
              WidgetTextBox(
                'Desenvolvedor Flutter na Pensenova'.i18n,
                'Liderança técnica no desenvolvimento de aplicativos móveis voltados à automação industrial. Desenvolvimento completo de aplicações Flutter, da concepção à publicação. Criação do aplicativo CoPal, utilizado para parametrização e controle de robôs industriais. Design e implementação da UX/UI focada em ambientes industriais. Garantia de alta performance e confiabilidade em sistemas críticos. Integração entre software mobile e hardware de automação (IoT). - Outubro de 2020 até Maio de 2024'
                    .i18n,
              ),
              WidgetTextBox(
                'Desenvolvedor de Automação na Nova Tecnologia'.i18n,
                'Desenvolvimento de sistemas de automação industrial com SCADA. Programação de robôs industriais para processos de pintura. Elaboração de projetos elétricos e quadros de comando (EPLAN). Otimização e controle de processos industriais. - Outubro de 2014 até Abril de 2018'.i18n,
              ),
              WidgetTextBox('Técnico em Eletrônica na Flex Automation'.i18n, 'Manutenção e montagem de placas eletrônicas (SMD e PTH). Gerenciamento do setor de manutenção de automação residencial. Testes, controle de qualidade e diagnóstico de falhas. - Maio de 2014 até Setembro de 2014'.i18n),
              WidgetTextBox('Estagiário de Automação na Nova Tecnologia'.i18n, 'Desenvolvimento de sistemas de controle para automação predial. Implementação de soluções de eficiência energética. Suporte técnico em projetos industriais. - Novembro de 2012 até Outubro de 2013'.i18n),
              Text('Formação Acadêmica'.i18n, style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20.0),
              WidgetTextBox('Engenharia de Controle e Automação'.i18n, 'IFSP – Instituto Federal de São Paulo - 2009 – 2019'.i18n),
              WidgetTextBox('Técnico em Eletrônica'.i18n, 'ETEC Professor Aprígio Gonzaga - 2007 – 2008'.i18n),
              Text('Cursos e Certificações'.i18n, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              Text('Google UX Design Certificate – Coursera (2024)'.i18n, textAlign: TextAlign.justify),
              Text('Flutter Provider Essential Course – Udemy (2024)'.i18n, textAlign: TextAlign.justify),
              const SizedBox(height: 20.0),
              Text('Tecnologias'.i18n, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              Text('Mobile: Flutter • Dart • Android • iOS • Provider'.i18n, textAlign: TextAlign.justify),
              Text('Web: React • TypeScript • JavaScript • HTML • CSS • Node.js'.i18n, textAlign: TextAlign.justify),
              Text('Cloud & DevOps: Microsoft Azure • CI/CD • Git • GitHub • Docker'.i18n, textAlign: TextAlign.justify),
              Text('Outras Tecnologias: Python • C/C++ • Bash • Arduino • PlatformIO • Linux'.i18n, textAlign: TextAlign.justify),
              Text('Ferramentas: VS Code • Android Studio • Xcode • Figma • EPLAN'.i18n, textAlign: TextAlign.justify),
              Text('AI & Produtividade: GitHub Copilot • Cursor • Windsurf • Prompt Engineering'.i18n, textAlign: TextAlign.justify),
              Text('Idiomas: Português (Nativo) • Inglês (Avançado)'.i18n, textAlign: TextAlign.justify),
            ],
          ),
        ),
      ),
    );
  }
}
