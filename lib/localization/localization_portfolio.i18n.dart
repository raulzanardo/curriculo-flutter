import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t =
      Translations.byText("pt-BR") +
      {"pt-BR": "", "en-US": "Yes"} +
      {
        "pt-BR":
            "Aplicativo utilizado para parametrizar e controlar robôs de Paletização",
        "en-US":
            "Application used to parameterize and control palletizing robots",
      } +
      {"pt-BR": "", "en-US": ""};

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
