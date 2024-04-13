import 'package:articles_app_flutter/add_article/presentation/widgets/add_image_button.dart';
import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';

class ArticleImagesPage extends StatelessWidget {
  final List<int> images;
  const ArticleImagesPage({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: images.isEmpty
          ? const Column(
              children: [
                Expanded(child: AddImageButton()),
                SizedBox(height: Dim.verticalPadding)
              ],
            )
          : ListView(
              children: const [
                AddImageButton(),
              ],
            ),
    );
  }
}
