import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": ""} +
      {"pt-BR": "24Pet Shelter é uma plataforma SaaS completa desenvolvida para otimizar a gestão de abrigos de animais e ONGs de proteção animal.", "en-US": "24Pet Shelter is a comprehensive SaaS platform developed to optimize the management of animal shelters and animal protection NGOs."} +
      {
        "pt-BR": "A plataforma oferece funcionalidades completas para cadastro de animais, controle de adoções, gestão de voluntários, controle veterinário, e muito mais, tudo em uma interface moderna e intuitiva.",
        "en-US": "The platform offers complete functionalities for animal registration, adoption control, volunteer management, veterinary control, and much more, all in a modern and intuitive interface.",
      } +
      {
        "pt-BR": "Trabalhei no desenvolvimento e evolução do frontend utilizando React e TypeScript, implementando interfaces acessíveis, responsivas e performáticas seguindo as melhores práticas de desenvolvimento web moderno.",
        "en-US": "I worked on the development and evolution of the frontend using React and TypeScript, implementing accessible, responsive, and performant interfaces following modern web development best practices.",
      } +
      {
        "pt-BR": "Um dos principais desafios foi otimizar fluxos críticos para usuários não técnicos, tornando o sistema intuitivo e fácil de usar mesmo para pessoas com pouca experiência em tecnologia. Isso envolveu redesenho de interfaces e simplificação de processos complexos.",
        "en-US": "One of the main challenges was optimizing critical flows for non-technical users, making the system intuitive and easy to use even for people with little technology experience. This involved interface redesign and simplification of complex processes.",
      } +
      {
        "pt-BR": "Trabalhei em ambiente ágil, colaborando próxima com times de produto, QA e DevOps. Participei ativamente da integração com pipelines de CI/CD no Microsoft Azure, garantindo deployments seguros e eficientes.",
        "en-US": "I worked in an agile environment, collaborating closely with product, QA, and DevOps teams. I actively participated in integration with CI/CD pipelines on Microsoft Azure, ensuring safe and efficient deployments.",
      } +
      {"pt-BR": "Stack Tecnológico:", "en-US": "Technology Stack:"} +
      {"pt-BR": "Visitar 24Pet Shelter", "en-US": "Visit 24Pet Shelter"} +
      {"pt-BR": "", "en-US": ""};

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
