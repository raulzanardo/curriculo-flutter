import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": ""} +
      {"pt-BR": "Aplicativo utilizado para parametrizar e controlar robôs de Paletização", "en-US": "Application used to parameterize and control palletizing robots"} +
      {"pt-BR": "Aplicativo focado na gestão de relacionamentos e organização de círculos sociais", "en-US": "Application focused on relationship management and social circle organization"} +
      {"pt-BR": "Plataforma SaaS para gestão de abrigos e ONGs de proteção animal", "en-US": "SaaS platform for managing animal shelters and protection NGOs"} +
      {"pt-BR": "", "en-US": ""};

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
