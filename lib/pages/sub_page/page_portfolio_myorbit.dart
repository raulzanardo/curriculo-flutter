import 'package:curriculo/localization/localization_portfolio_myorbit.i18n.dart';
import 'package:curriculo/widgets/widget_text_box.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> printsList = ["feed_1.png", "feed_2.png", "orbit_1.png", "orbit_2.png", "orbits.png", "post_1.png", "profile_1.png", "profile_2.png", "share.png", "sidebar.png", "updates.png"];

class PagePortfolioMyOrbit extends StatefulWidget {
  final String title;
  final String image;

  const PagePortfolioMyOrbit({super.key, required this.title, required this.image});

  @override
  State<PagePortfolioMyOrbit> createState() => _PagePortfolioMyOrbitState();
}

class _PagePortfolioMyOrbitState extends State<PagePortfolioMyOrbit> {
  final CarouselSliderController _carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyOrbit'),
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
                WidgetTextBox('MyOrbit', 'MyOrbit é um aplicativo inovador focado na gestão de relacionamentos pessoais e organização de círculos sociais, com forte ênfase em privacidade e controle de dados pelo usuário.'.i18n),
                WidgetTextBox('', 'O aplicativo permite aos usuários mapear e organizar seus relacionamentos em diferentes órbitas (círculos sociais), facilitando a gestão de conexões pessoais e profissionais de forma privada e segura.'.i18n),
                WidgetTextBox('', 'Desenvolvido em Flutter para Android e iOS, o MyOrbit foi construído com arquitetura limpa e design patterns modernos, garantindo escalabilidade e manutenibilidade do código.'.i18n),
                WidgetTextBox(
                  '',
                  'Participei ativamente da concepção do produto, trabalhando em estreita colaboração com o time de design para criar fluxos de UX/UI intuitivos e centrados no usuário. A experiência foi projetada para ser simples, mas poderosa, permitindo que os usuários gerenciem suas conexões sociais de forma eficiente.'
                      .i18n,
                ),

                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Theme.of(context).dialogBackgroundColor.withOpacity(0.7),
                            insetPadding: const EdgeInsets.all(10),
                            contentPadding: const EdgeInsets.all(10),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            title: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.close),
                                ),
                              ],
                            ),
                            content: SizedBox(
                              width: double.maxFinite,
                              height: double.maxFinite,
                              child: Stack(
                                children: [
                                  CarouselSlider(
                                    options: CarouselOptions(height: double.maxFinite, viewportFraction: 2),
                                    carouselController: _carouselController,
                                    items: printsList.map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            width: double.maxFinite,
                                            height: double.maxFinite,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(fit: BoxFit.fitHeight, image: AssetImage('assets/images/portfolio/myorbit/$i')),
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          onPressed: () => _carouselController.previousPage(),
                                          icon: const SizedBox(height: double.infinity, width: 20, child: Icon(Icons.navigate_before)),
                                        ),
                                        IconButton(
                                          onPressed: () => _carouselController.nextPage(),
                                          icon: const SizedBox(height: double.infinity, width: 20, child: Icon(Icons.navigate_next)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actionsAlignment: MainAxisAlignment.spaceBetween,
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fitHeight, image: AssetImage('assets/images/portfolio/myorbit/feed_1.png')),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20.0),

                WidgetTextBox('', 'Além do desenvolvimento mobile, contribuí com o backend implementando APIs RESTful e regras de negócio, garantindo integração perfeita entre frontend e backend.'.i18n),
                const SizedBox(height: 20.0),

                // Technology Stack
                Text('Stack Tecnológico:'.i18n, style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                const Text('• Flutter & Dart'),
                const Text('• Clean Architecture'),
                const Text('• Provider (State Management)'),
                const Text('• RESTful APIs'),
                const Text('• Git & GitHub'),
                const SizedBox(height: 20.0),

                // Website link
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse('https://www.myorbit.chat'));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 66, 133, 244), borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Visitar Website MyOrbit'.i18n,
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
