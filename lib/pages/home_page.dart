import 'package:flutter/material.dart';
import 'package:tut/models/catalog.dart';
import 'package:tut/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              (CatalogModel.products != null && CatalogModel.products.isNotEmpty) ?
              CatalogList() :
              Center(
                child: CircularProgressIndicator(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          "Catalog App".text.xl5.bold.color(MyTheme.darkBluish).make(),
          "Trending Product".text.xl2.make()
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Catalog = CatalogModel.products[index];
        return CatalogItem(Catalog);
      },
      itemCount: CatalogModel.products.length,
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({ Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}