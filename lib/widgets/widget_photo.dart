import 'package:curriculo/widgets/widget_custom_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:url_launcher/url_launcher.dart';

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
}

final Uri emailLaunchUri = Uri(scheme: 'mailto', path: 'raulzanardo@gmail.com', query: encodeQueryParameters(<String, String>{'subject': 'Olá!'}));

class WidgetPhoto extends StatelessWidget {
  const WidgetPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: MediaQuery.of(context).size.width > 800 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/photo.png')),
          ),
        ),
        const SizedBox(height: 20.0),
        const Text('Raul Zanardo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              launchUrl(emailLaunchUri);
            },
            child: const Text('raulzanardo@gmail.com', style: TextStyle(color: Colors.blue)),
          ),
        ),

        Visibility(
          visible: (MediaQuery.of(context).size.width <= 800),
          child: Column(
            children: [
              const SizedBox(height: 20.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async {
                      launchUrl(Uri.parse('https://github.com/raulzanardo'));
                    },
                    icon: WidgetCustomIcon(iconName: 'github'),
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://www.linkedin.com/in/raulzanardo/'));
                    },
                    icon: WidgetCustomIcon(iconName: 'linkedin'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
