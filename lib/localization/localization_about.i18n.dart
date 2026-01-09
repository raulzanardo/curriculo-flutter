import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": ""} +
      {"pt-BR": "Oi, meu nome é Raul!", "en-US": "Hello, my name is Raul!"} +
      {
        "pt-BR":
            "Sou desenvolvedor Flutter há mais de 5 anos e também trabalho com desenvolvimento web utilizando React e backend com NestJS. Com formação em Engenharia de Controle e Automação, especializo-me no desenvolvimento de aplicativos mobile e web para o setor industrial, atuando em todo o ciclo de desenvolvimento: desde a concepção e design de interfaces até testes, otimização e publicação de soluções robustas e escaláveis.",
        "en-US":
            "I've been a Flutter developer for over 5 years and also work with web development using React and backend with NestJS. With a degree in Control and Automation Engineering, I specialize in developing mobile and web applications for the industrial sector, working throughout the entire development cycle: from concept and interface design to testing, optimization, and publishing robust and scalable solutions.",
      } +
      {
        "pt-BR": "Nascido e criado em São Paulo, sou apaixonado por tecnologia e inovação. Nos meus momentos livres, exercito minha criatividade através da programação, design de interfaces, desenvolvimento de projetos eletrônicos e produção musical.",
        "en-US": "Born and raised in São Paulo, I'm passionate about technology and innovation. In my free time, I exercise my creativity through programming, interface design, electronic projects, and music production.",
      } +
      {
        "pt-BR":
            "Reconhecido pela minha abordagem criativa na resolução de problemas e paixão por inovação, valorizo a experimentação e não tenho receio de explorar novas tecnologias. Acredito em metas bem definidas, comunicação clara e processos estruturados. Família e amigos são fundamentais na minha vida, proporcionando equilíbrio entre vida pessoal e profissional.",
        "en-US":
            "Known for my creative approach to problem-solving and passion for innovation, I value experimentation and embrace exploring new technologies. I believe in well-defined goals, clear communication, and structured processes. Family and friends are fundamental in my life, providing balance between personal and professional life.",
      } +
      {
        "pt-BR":
            "Minha experiência inclui desenvolvimento web com React, desenvolvimento de APIs backend com NestJS, programação de CLPs (Controladores Lógicos Programáveis), desenvolvimento de sistemas para robótica industrial (pintura e paletização), e criação de soluções completas de IoT para monitoramento e análise de dados em plantas industriais. Também possuo experiência diversificada no setor de áudio e música, atuando como produtor musical, engenheiro de som e técnico de palco.",
        "en-US":
            "My experience includes web development with React, backend API development with NestJS, PLC (Programmable Logic Controllers) programming, industrial robotics systems development (painting and palletizing), and creating complete IoT solutions for monitoring and data analysis in industrial plants. I also have diverse experience in the audio and music sector, working as a music producer, sound engineer, and stage technician.",
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
