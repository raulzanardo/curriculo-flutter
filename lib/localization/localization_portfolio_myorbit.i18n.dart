import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": ""} +
      {
        "pt-BR": "MyOrbit é um aplicativo inovador focado na gestão de relacionamentos pessoais e organização de círculos sociais, com forte ênfase em privacidade e controle de dados pelo usuário.",
        "en-US": "MyOrbit is an innovative application focused on personal relationship management and social circle organization, with strong emphasis on privacy and user data control.",
      } +
      {
        "pt-BR": "O aplicativo permite aos usuários mapear e organizar seus relacionamentos em diferentes órbitas (círculos sociais), facilitando a gestão de conexões pessoais e profissionais de forma privada e segura.",
        "en-US": "The application allows users to map and organize their relationships in different orbits (social circles), facilitating the management of personal and professional connections in a private and secure way.",
      } +
      {
        "pt-BR": "Desenvolvido em Flutter para Android e iOS, o MyOrbit foi construído com arquitetura limpa e design patterns modernos, garantindo escalabilidade e manutenibilidade do código.",
        "en-US": "Developed in Flutter for Android and iOS, MyOrbit was built with clean architecture and modern design patterns, ensuring code scalability and maintainability.",
      } +
      {
        "pt-BR":
            "Participei ativamente da concepção do produto, trabalhando em estreita colaboração com o time de design para criar fluxos de UX/UI intuitivos e centrados no usuário. A experiência foi projetada para ser simples, mas poderosa, permitindo que os usuários gerenciem suas conexões sociais de forma eficiente.",
        "en-US": "I actively participated in product conception, working closely with the design team to create intuitive and user-centered UX/UI flows. The experience was designed to be simple yet powerful, allowing users to efficiently manage their social connections.",
      } +
      {
        "pt-BR": "Além do desenvolvimento mobile, contribuí com o backend implementando APIs RESTful e regras de negócio, garantindo integração perfeita entre frontend e backend.",
        "en-US": "In addition to mobile development, I contributed to the backend by implementing RESTful APIs and business rules, ensuring seamless integration between frontend and backend.",
      } +
      {"pt-BR": "Stack Tecnológico:", "en-US": "Technology Stack:"} +
      {"pt-BR": "Visitar Website MyOrbit", "en-US": "Visit MyOrbit Website"} +
      {"pt-BR": "", "en-US": ""};

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
