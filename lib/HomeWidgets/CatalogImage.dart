import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Widgets/MyTheme.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .color(MyTheme.creamColor)
        .make()
        .w32(context)
        .p8();
  }
}
