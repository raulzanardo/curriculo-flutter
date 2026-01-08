import 'package:flutter/material.dart';

class WidgetPortfolioItem extends StatefulWidget {
  final String image;
  final String title;
  final String body;
  final Widget portfolioPage;
  final Color backgroundColor;

  const WidgetPortfolioItem({super.key, required this.image, required this.title, required this.body, required this.backgroundColor, required this.portfolioPage});

  @override
  State<WidgetPortfolioItem> createState() => _WidgetPortfolioItemState();
}

class _WidgetPortfolioItemState extends State<WidgetPortfolioItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          //TODO alterar transição das paginas do portifolio
          Navigator.push(context, MaterialPageRoute(builder: (context) => widget.portfolioPage));
        },
        child: SizedBox(
          //width: 200,
          width: (MediaQuery.of(context).size.width < 500) ? double.infinity : 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: widget.title,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: widget.backgroundColor,
                      image: DecorationImage(fit: BoxFit.fitHeight, image: AssetImage(widget.image)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text(widget.body, textAlign: TextAlign.justify),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
