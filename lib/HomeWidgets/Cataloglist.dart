import 'package:flutter/material.dart';
import 'package:flutter_revision_upto_18/HomeWidgets/HomeDetailPage.dart';
import 'package:flutter_revision_upto_18/utils/MyRoutes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Models/catalog.dart';
import '../Widgets/MyTheme.dart';
import 'CatalogImage.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeDetailPage(
                        catalog: catalog,
                      ),
                    ),
                  ),
              child: CatalogItem(catalog: catalog));
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image1),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.bold.make(),
            catalog.desc.text.make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.make(),
                ElevatedButton(
                  onPressed: (() {}),
                  child: "login".text.make(),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      MyTheme.goldenYellowColor,
                    ),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    ),
                  ),
                )
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}
