import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(Dim.radius)),
        child: const Padding(
          padding: EdgeInsets.all(Dim.screenPadding),
          child: Center(
            child: Icon(Icons.add_a_photo_outlined),
          ),
        ),
      ),
      Material(
          color: Colors.transparent,
          child: InkWell(
              borderRadius: BorderRadius.circular(Dim.radius), onTap: () {}))
    ]);
  }
}
