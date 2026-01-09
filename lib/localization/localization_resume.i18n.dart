import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": ""} +
      {"pt-BR": "Resumo Profissional", "en-US": "Professional Summary"} +
      {
        "pt-BR":
            "Desenvolvedor Frontend, Mobile e Backend com mais de 5 anos de experiência na criação de produtos digitais para web e mobile. Especialista em Flutter, React e NestJS, com forte foco em UX/UI, performance e qualidade de código.\n\nAtuação em produtos SaaS e aplicativos em produção, participando ativamente de decisões técnicas, arquitetura e evolução de produto. Possui background em automação industrial e eletrônica, trazendo visão sistêmica, confiabilidade e engenharia de alto nível para o desenvolvimento de software moderno.\n\nExperiência em AI-assisted development, utilizando ferramentas como GitHub Copilot, Cursor e Windsurf para acelerar desenvolvimento e otimizar produtividade. Proficiente em prompt engineering para maximizar eficiência com AI agents no ciclo de desenvolvimento.",
        "en-US":
            "Frontend, Mobile and Backend Developer with over 5 years of experience creating digital products for web and mobile. Specialist in Flutter, React and NestJS, with strong focus on UX/UI, performance, and code quality.\n\nWorking on SaaS products and production applications, actively participating in technical decisions, architecture, and product evolution. Background in industrial automation and electronics, bringing systemic vision, reliability, and high-level engineering to modern software development.\n\nExperience in AI-assisted development, using tools such as GitHub Copilot, Cursor, and Windsurf to accelerate development and optimize productivity. Proficient in prompt engineering to maximize efficiency with AI agents in the development cycle.",
      } +
      {"pt-BR": "Experiência Profissional", "en-US": "Professional Experience"} +
      {"pt-BR": "Desenvolvedor Frontend na Petplace", "en-US": "Frontend Developer at Petplace"} +
      {
        "pt-BR":
            "Atuação no desenvolvimento do 24Pet Shelter, plataforma SaaS para gestão de abrigos e ONGs de proteção animal. Desenvolvimento e evolução do frontend utilizando React e TypeScript, implementação de interfaces acessíveis, responsivas e performáticas. Otimização de fluxos críticos para usuários não técnicos, melhorando a usabilidade do sistema. Colaboração próxima com times de produto, QA e DevOps em ambiente ágil. Integração com pipelines de CI/CD no Microsoft Azure. - Maio de 2024 até Dezembro de 2025",
        "en-US":
            "Working on the development of 24Pet Shelter, a SaaS platform for managing animal shelters and protection NGOs. Frontend development and evolution using React and TypeScript, implementation of accessible, responsive, and performant interfaces. Optimization of critical flows for non-technical users, improving system usability. Close collaboration with product, QA, and DevOps teams in an agile environment. Integration with CI/CD pipelines on Microsoft Azure. - May 2024 to December 2025",
      } +
      {"pt-BR": "Desenvolvedor Flutter na MyOrbit", "en-US": "Flutter Developer at MyOrbit"} +
      {
        "pt-BR":
            "Desenvolvimento do aplicativo MyOrbit, focado na gestão de relacionamentos e organização de círculos sociais com forte ênfase em privacidade. Desenvolvimento mobile com Flutter/Dart para Android e iOS, participação direta na concepção do produto e decisões técnicas. Implementação de fluxos complexos de UX/UI em colaboração com design. Desenvolvimento backend com NestJS/TypeScript, criando APIs REST escaláveis. Design e implementação de modelos de banco de dados e lógica de negócio. Autenticação, autorização e boas práticas de segurança. Aplicação de clean architecture e design patterns para escalabilidade. - Maio de 2024 até Dezembro de 2025",
        "en-US":
            "Development of the MyOrbit application, focused on relationship management and social circle organization with strong emphasis on privacy. Mobile development with Flutter/Dart for Android and iOS, direct participation in product conception and technical decisions. Implementation of complex UX/UI flows in collaboration with design. Backend development with NestJS/TypeScript, creating scalable REST APIs. Design and implementation of database models and business logic. Authentication, authorization, and security best practices. Application of clean architecture and design patterns for scalability. - May 2024 to December 2025",
      } +
      {"pt-BR": "Desenvolvedor Flutter na Pensenova", "en-US": "Flutter Developer at Pensenova"} +
      {
        "pt-BR":
            "Liderança técnica no desenvolvimento de aplicativos móveis voltados à automação industrial. Desenvolvimento completo de aplicações Flutter, da concepção à publicação. Criação do aplicativo CoPal, utilizado para parametrização e controle de robôs industriais. Design e implementação da UX/UI focada em ambientes industriais. Garantia de alta performance e confiabilidade em sistemas críticos. Integração entre software mobile e hardware de automação (IoT). - Outubro de 2020 até Maio de 2024",
        "en-US":
            "Technical leadership in the development of mobile applications for industrial automation. Complete development of Flutter applications, from conception to publication. Creation of the CoPal application, used for parameterization and control of industrial robots. Design and implementation of UX/UI focused on industrial environments. Ensuring high performance and reliability in critical systems. Integration between mobile software and automation hardware (IoT). - October 2020 to May 2024",
      } +
      {"pt-BR": "Desenvolvedor de Automação na Nova Tecnologia", "en-US": "Automation Developer at Nova Tecnologia"} +
      {
        "pt-BR": "Desenvolvimento de sistemas de automação industrial com SCADA. Programação de robôs industriais para processos de pintura. Elaboração de projetos elétricos e quadros de comando (EPLAN). Otimização e controle de processos industriais. - Outubro de 2014 até Abril de 2018",
        "en-US": "Development of industrial automation systems with SCADA. Programming of industrial robots for painting processes. Electrical project design and control panels (EPLAN). Optimization and control of industrial processes. - October 2014 to April 2018",
      } +
      {"pt-BR": "Técnico em Eletrônica na Flex Automation", "en-US": "Electronics Technician at Flex Automation"} +
      {
        "pt-BR": "Manutenção e montagem de placas eletrônicas (SMD e PTH). Gerenciamento do setor de manutenção de automação residencial. Testes, controle de qualidade e diagnóstico de falhas. - Maio de 2014 até Setembro de 2014",
        "en-US": "Maintenance and assembly of electronic boards (SMD and PTH). Management of the home automation maintenance sector. Testing, quality control, and fault diagnosis. - May 2014 to September 2014",
      } +
      {"pt-BR": "Estagiário de Automação na Nova Tecnologia", "en-US": "Automation Intern at Nova Tecnologia"} +
      {
        "pt-BR": "Desenvolvimento de sistemas de controle para automação predial. Implementação de soluções de eficiência energética. Suporte técnico em projetos industriais. - Novembro de 2012 até Outubro de 2013",
        "en-US": "Development of control systems for building automation. Implementation of energy efficiency solutions. Technical support in industrial projects. - November 2012 to October 2013",
      } +
      {"pt-BR": "Formação Acadêmica", "en-US": "Education"} +
      {"pt-BR": "Engenharia de Controle e Automação", "en-US": "Control and Automation Engineering"} +
      {"pt-BR": "IFSP – Instituto Federal de São Paulo - 2009 – 2019", "en-US": "IFSP – Federal Institute of São Paulo - 2009 – 2019"} +
      {"pt-BR": "Técnico em Eletrônica", "en-US": "Electronics Technician"} +
      {"pt-BR": "ETEC Professor Aprígio Gonzaga - 2007 – 2008", "en-US": "ETEC Professor Aprígio Gonzaga - 2007 – 2008"} +
      {"pt-BR": "Cursos e Certificações", "en-US": "Courses and Certifications"} +
      {"pt-BR": "Google UX Design Certificate – Coursera (2024)", "en-US": "Google UX Design Certificate – Coursera (2024)"} +
      {"pt-BR": "Flutter Provider Essential Course – Udemy (2024)", "en-US": "Flutter Provider Essential Course – Udemy (2024)"} +
      {"pt-BR": "Tecnologias", "en-US": "Technologies"} +
      {"pt-BR": "Mobile: Flutter • Dart • Android • iOS • Provider", "en-US": "Mobile: Flutter • Dart • Android • iOS • Provider"} +
      {"pt-BR": "Web: React • TypeScript • JavaScript • HTML • CSS • Node.js • NestJS", "en-US": "Web: React • TypeScript • JavaScript • HTML • CSS • Node.js • NestJS"} +
      {"pt-BR": "Cloud & DevOps: Microsoft Azure • CI/CD • Git • GitHub • Docker", "en-US": "Cloud & DevOps: Microsoft Azure • CI/CD • Git • GitHub • Docker"} +
      {"pt-BR": "Outras Tecnologias: Python • C/C++ • Bash • Arduino • PlatformIO • Linux", "en-US": "Other Technologies: Python • C/C++ • Bash • Arduino • PlatformIO • Linux"} +
      {"pt-BR": "Ferramentas: VS Code • Android Studio • Xcode • Figma • EPLAN", "en-US": "Tools: VS Code • Android Studio • Xcode • Figma • EPLAN"} +
      {"pt-BR": "AI & Produtividade: GitHub Copilot • Cursor • Windsurf • Prompt Engineering", "en-US": "AI & Productivity: GitHub Copilot • Cursor • Windsurf • Prompt Engineering"} +
      {"pt-BR": "Idiomas: Português (Nativo) • Inglês (Avançado)", "en-US": "Languages: Portuguese (Native) • English (Advanced)"} +
      {"pt-BR": "", "en-US": ""} +
      {"pt-BR": "", "en-US": ""};

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
