import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": ""} +
      {"pt-BR": "Oi, meu nome é Raul!", "en-US": "Hello, my name is Raul!"} +
      {
        "pt-BR":
            "Sou desenvolvedor Flutter há 3 anos. Como sou formado em Engenharia de controle e automação, desenvolvo aplicativos para o setor industrial, trabalhando desde o início do conceito, definindo e criando interfaces e fluxos de usuário, fazendo testes, até a publicação.",
        "en-US":
            "I've been a Flutter developer for 3 years. As I have a degree in Control and Automation Engineering, I develop applications for the industrial sector, working from the beginning of the concept, defining and creating interfaces and user flows, testing, until publication.",
      } +
      {
        "pt-BR":
            "Nascido e criado em São Paulo, adoro exercitar minha criatividade programando, criando interfaces, desenvolvendo dispositivos eletrônicos e fazendo música.",
        "en-US":
            "Born and raised in São Paulo, I love exercising my creativity by programming, creating interfaces, developing electronic devices and making music.",
      } +
      {
        "pt-BR":
            "Sou conhecido pela minha forma criativa de pensar e resolver problemas, minha paixão por construir e modificar coisas, por sempre pensar no futuro e não ter medo de experimentar ou fazer algo novo e excitante. Valorizando uma meta bem definida, com estrutura e ordem, gosto de comunicação clara e objetiva. Família e amigos são minhas coisas mais importantes.",
        "en-US":
            "I am known for my creative way of thinking and solving problems, my passion for building and modifying things, for always thinking about the future and not being afraid to experiment or do something new and exciting. Valuing a well-defined goal, with structure and order, I like clear and objective communication. Family and friends are my most important things.",
      } +
      {
        "pt-BR":
            "Já trabalhei programando Controladores lógicos industriais, desenvolvendo trajetórias e interfaces gráficas para sistemas que utilizam robôs de pintura e paletização, criando e integrando sistemas de monitoramento e coleta de dados para plantas industriais. Também me aventurei no mundo da música, como produtor, engenheiro de som de palco e em estúdios e como roadie.",
        "en-US":
            "I have worked programming industrial logic controllers, developing trajectories and graphical interfaces for systems that use painting and palletizing robots, creating and integrating monitoring and data collection systems for industrial plants. I also ventured into the world of music, as a producer, sound engineer on stage and in studios and as a roadie.",
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
