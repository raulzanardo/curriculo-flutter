import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WidgetCustomIcon extends StatefulWidget {
  final String iconName;

  const WidgetCustomIcon({super.key, required this.iconName});

  @override
  State<WidgetCustomIcon> createState() => _WidgetCustomIconState();
}

class _WidgetCustomIconState extends State<WidgetCustomIcon> {
  @override
  Widget build(BuildContext context) {
    return Center(child: SvgPicture.asset(width: 22, height: 22, 'assets/images/icons/icon_${widget.iconName}_dark.svg', color: (Theme.of(context).brightness == Brightness.dark) ? Colors.white : Colors.black));
  }
}
