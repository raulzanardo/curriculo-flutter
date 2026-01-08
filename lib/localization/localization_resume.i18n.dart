import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": ""} +
      {"pt-BR": "Objetivo", "en-US": "Goal"} +
      {
        "pt-BR":
            "Procuro oportunidades como desenvolvedor de aplicativos móveis, especializado em Flutter, para aplicar minha experiência em desenvolvimento de software, conhecimentos de UX e habilidades técnicas na criação de aplicações móveis inovadoras.",
        "en-US":
            "I'm looking for opportunities as a mobile application developer, specializing in Flutter, to apply my software development experience, UX knowledge and technical skills to create innovative mobile applications.",
      } +
      {"pt-BR": "Resumo Profissional", "en-US": "Professional Resume"} +
      {
        "pt-BR":
            "Tenho experiência em desenvolvimento de aplicativos para Android e iOS usando Flutter e Dart, incluindo design de interface de usuário e lançamento nas lojas de aplicativos.",
        "en-US":
            "I have experience developing apps for Android and iOS using Flutter and Dart, including user interface design and launch in app stores.",
      } +
      {
        "pt-BR": "Experiência Profissional",
        "en-US": "Professional experience",
      } +
      {
        "pt-BR": "Desenvolvedor Flutter na Pensenova",
        "en-US": "Flutter Developer at Pensenova",
      } +
      {
        "pt-BR":
            "Responsável pelo desenvolvimento de aplicativos móveis para automação industrial, utilizando Flutter e Dart. Conduzindo o ciclo completo de desenvolvimento de aplicativos, desde a concepção até o lançamento, garantindo alta qualidade e performance e experiência do usuário. Destacando o projeto CoPal, no qual desenvolvi o aplicativo de parametrização juntamente com a UX/UI do sistema de controle do Robô. - 05/10/2020 até o presente",
        "en-US":
            "Responsible for developing mobile applications for industrial automation, using Flutter and Dart. Conducting the complete application development cycle, from conception to launch, ensuring high quality, performance and user experience. Highlighting the CoPal project, in which I developed the parameterization application together with the UX/UI of the Robot control system. - 10/05/2020 to now",
      } +
      {
        "pt-BR": "Desenvolvedor de automação na Nova Tecnologia",
        "en-US": "Automation developer at Nova Tecnologia",
      } +
      {
        "pt-BR":
            "Desenvolvimento de projetos de automação envolvendo sistemas de monitoramento industrial (Scada), robótica e aplicações voltadas para processos de pintura industrial. Elaboração de esquemas elétricos para montagem de quadros elétricos utilizando o EPLAN. – 06/10/2014 até 30/04/2018",
        "en-US":
            "Development of automation projects involving industrial monitoring systems (Scada), robotics and applications focused on industrial painting processes. Preparation of electrical diagrams for assembling electrical panels using EPLAN. – 10/06/2014 to 04/30/2018",
      } +
      {
        "pt-BR": "Técnico em eletrônica na Flex Automation",
        "en-US": "Electronics technician at Flex Automation",
      } +
      {
        "pt-BR":
            "Responsável pelo gerenciamento do setor de manutenção de módulos de automação residencial, também fiz parte do time que efetuava manutenção e montagem de placas de circuito eletrônico. - 02/05/2014 até 30/09/2014",
        "en-US":
            "Responsible for managing the maintenance sector of home automation modules, I was also part of the team that carried out maintenance and assembly of electronic circuit boards. - 02/05/2014 until 30/09/2014",
      } +
      {
        "pt-BR": "Estagiário de automação na Nova Tecnologia",
        "en-US": "Automation intern at Nova Tecnologia",
      } +
      {
        "pt-BR":
            "Desenvolvimento de sistemas de controle e automação predial e de eficiência energética.  05/11/2012 até 25/10/2013.",
        "en-US":
            "Development of building control and automation and energy efficiency systems. 05/11/2012 until 25/10/2013.",
      } +
      {"pt-BR": "Formação Acadêmica", "en-US": "Academic education"} +
      {
        "pt-BR": "Graduação em Engenharia de Controle e Automação",
        "en-US": "Degree in Control and Automation Engineering",
      } +
      {
        "pt-BR":
            "IFSP Instituto Federal de Educação, Ciência e Tecnologia de São Paulo - 01/06/2009 a 28/08/2019",
        "en-US":
            "IFSP Federal Institute of Education, Science and Technology of São Paulo - 06/01/2009 to 08/28/2019",
      } +
      {"pt-BR": "Técnico em Eletrônica", "en-US": "Electronics Technician"} +
      {
        "pt-BR": "ETEC Professor Aprígio Gonzaga - 01/06/2007 a 15/12/2008",
        "en-US": "ETEC Professor Aprígio Gonzaga - 06/01/2007 to 12/15/2008",
      } +
      {"pt-BR": "Cursos Complementares", "en-US": "Complementary courses"} +
      {
        "pt-BR":
            "Certificado Profissional Google UX Design (Coursera - Nível 1 - Março de 2024)",
        "en-US":
            "Google UX Design Professional Certificate (Coursera - Level 1 - March 2024)",
      } +
      {
        "pt-BR":
            "Flutter Provider Essential Course (Udemy - Março/Abril de 2024)",
        "en-US": "Flutter Provider Essential Course (Udemy - March/April 2024)",
      } +
      {"pt-BR": "Habilidades", "en-US": "Skills"} +
      {
        "pt-BR": "Linguagens: Dart, C/C++, Python, Bash, HTML, JavaScript",
        "en-US": "Languages: Dart, C/C++, Python, Bash, HTML, JavaScript",
      } +
      {
        "pt-BR": "Ferramentas: Android Studio, VSCode",
        "en-US": "Tools: Android Studio, VSCode",
      } +
      {
        "pt-BR":
            "Plataformas: Flutter, Android, iOS, PlatformIO, Linux, Arduino",
        "en-US": "Platforms: Flutter, Android, iOS, PlatformIO, Linux, Arduino",
      } +
      {
        "pt-BR": "Versionamento de Código: Git, Github",
        "en-US": "Code Versioning: Git, Github",
      } +
      {
        "pt-BR": "Idiomas: Inglês avançado",
        "en-US": "Languages: Portuguese and Advanced English",
      } +
      {"pt-BR": "", "en-US": ""} +
      {"pt-BR": "", "en-US": ""};

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
