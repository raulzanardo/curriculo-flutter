import 'package:curriculo/localization/localization_portfolio_petplace.i18n.dart';
import 'package:curriculo/widgets/widget_text_box.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PagePortfolioPetplace extends StatefulWidget {
  final String title;
  final String image;

  const PagePortfolioPetplace({super.key, required this.title, required this.image});

  @override
  State<PagePortfolioPetplace> createState() => _PagePortfolioPetplaceState();
}

class _PagePortfolioPetplaceState extends State<PagePortfolioPetplace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('24Pet Shelter'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.navigate_before),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: 700,
            child: Column(
              children: [
                Hero(
                  tag: widget.title,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      image: DecorationImage(fit: BoxFit.fitHeight, image: AssetImage(widget.image)),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                WidgetTextBox('24Pet Shelter', '24Pet Shelter é uma plataforma SaaS completa desenvolvida para otimizar a gestão de abrigos de animais e ONGs de proteção animal.'.i18n),
                WidgetTextBox('', 'A plataforma oferece funcionalidades completas para cadastro de animais, controle de adoções, gestão de voluntários, controle veterinário, e muito mais, tudo em uma interface moderna e intuitiva.'.i18n),
                WidgetTextBox('', 'Trabalhei no desenvolvimento e evolução do frontend utilizando React e TypeScript, implementando interfaces acessíveis, responsivas e performáticas seguindo as melhores práticas de desenvolvimento web moderno.'.i18n),
                WidgetTextBox(
                  '',
                  'Um dos principais desafios foi otimizar fluxos críticos para usuários não técnicos, tornando o sistema intuitivo e fácil de usar mesmo para pessoas com pouca experiência em tecnologia. Isso envolveu redesenho de interfaces e simplificação de processos complexos.'.i18n,
                ),
                WidgetTextBox('', 'Trabalhei em ambiente ágil, colaborando próxima com times de produto, QA e DevOps. Participei ativamente da integração com pipelines de CI/CD no Microsoft Azure, garantindo deployments seguros e eficientes.'.i18n),
                const SizedBox(height: 20.0),

                // Technology Stack
                Text('Stack Tecnológico:'.i18n, style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                const Text('• React & TypeScript'),
                const Text('• HTML5 & CSS3'),
                const Text('• RESTful APIs'),
                const Text('• Microsoft Azure'),
                const Text('• CI/CD Pipelines'),
                const Text('• Git & GitHub'),
                const SizedBox(height: 20.0),

                // Website link
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse('https://www.24pet.com/products/24petshelter'));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 52, 168, 83), borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Visitar 24Pet Shelter'.i18n,
                        style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
