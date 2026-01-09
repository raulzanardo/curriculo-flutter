import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": ""} +
      {
        "pt-BR": "Copal vem de “Cooperative Palletization”, trata-se de um ecossistema integrado voltado à paletização inteligente utilizando robôs industriais em uma linha de produção.",
        "en-US": "Copal comes from “Cooperative Palletization”, it is an integrated ecosystem focused on intelligent palletization using industrial robots on a production line.",
      } +
      {
        "pt-BR":
            "O papel do aplicativo de parametrização e controle CoPal é facilitar as trocas de produtos e da maneira que os produtos são dispostos no palete, chamadas de “amarras”. O usuário consegue configurar todos os dados da parametrização, desde o tamanho do palete, o tamanho das caixas e amarras. Em seguida, o usuário pode enviar os dados para o robô e determinar qual função irá exercer.",
        "en-US":
            "The role of the CoPal parameterization and control application is to facilitate product changes and the way products are arranged on the pallet, called “tie-downs”. The user can configure all parameterization data, from the size of the pallet, the size of the boxes and straps. Then, the user can send the data to the robot and determine which function it will perform.",
      } +
      {
        "pt-BR": "O aplicativo foi desenvolvido em Flutter para Android e iOS e é disponibilizado livremente, apenas com a necessidade de uma chave de licença para que os dados possam ser enviados para o robô.",
        "en-US": "The application was developed in Flutter for Android and iOS and is freely available, only requiring a license key so that data can be sent to the robot.",
      } +
      {
        "pt-BR": "A experiência do usuário é simples e o induz a seguir um “Wizard” com as etapas necessárias para a finalização da parametrização.  No final do processo o aplicativo acessa a tela remota do controlador do robô para que o mesmo seja acionado pelo aplicativo.",
        "en-US": "The user experience is simple and encourages you to follow a “Wizard” with the necessary steps to complete the parameterization. At the end of the process, the application accesses the remote screen of the robot controller so that it can be activated by the application.",
      } +
      {
        "pt-BR": "Com o intuito de unificar a experiência do usuário ao longo do ecossistema CoPal, também desenvolvi a interface gráfica da tela do controlador do robô. A interface tenta ser fiel ao aplicativo, mesmo com as limitações do sistema.",
        "en-US": "In order to unify the user experience across the CoPal ecosystem, I also developed the graphical interface for the robot controller screen. The interface tries to be faithful to the application, even with the system's limitations.",
      } +
      {"pt-BR": "Stack Tecnológico:", "en-US": "Technology Stack:"} +
      {"pt-BR": "", "en-US": ""};

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
