import 'package:articles_app_flutter/common/constants/api.dart';
import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TileImagesView extends StatefulWidget {
  final List<String> imagesUrl;
  const TileImagesView({super.key, required this.imagesUrl});

  @override
  State<TileImagesView> createState() => _TileImagesViewState();
}

class _TileImagesViewState extends State<TileImagesView> {
  final _pageController = PageController();
  static const _dotSize = 10.0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
        controller: _pageController,
        children: [
          ...widget.imagesUrl.map((e) => ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(Dim.radius),
                  topRight: Radius.circular(Dim.radius)),
              child: Image.network('${Api.url}/$e')))
        ],
      ),
      if (widget.imagesUrl.length > 1)
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: widget.imagesUrl.length,
              effect: const ScrollingDotsEffect(
                  dotHeight: _dotSize, dotWidth: _dotSize),
            ),
          ),
        )
    ]);
  }
}
