import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tut/models/catalog.dart';
import 'package:tut/widgets/drawer.dart';
import 'package:tut/widgets/itemWidget.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productData = decodeData['products'];
    CatalogModel.products = List.from(productData).map<Item>((item) => Item.formMap(item)).toList();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(20, (index) => CatalogModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: (CatalogModel.products != null && CatalogModel.products.isNotEmpty) ?
        //  ListView.builder(
        //   itemCount: CatalogModel.products.length,
        //   itemBuilder: (context, index) {
        //     return ItemWidget(item: CatalogModel.products[index]);
        //   },
        // ) 
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15
          ), 
          itemBuilder: (context, index) {
            final item = CatalogModel.products[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: GridTile(
                header: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  child: Text(item.name, style: TextStyle(color: Colors.white),),
                ),
                child: Image.network(item.image),
                footer: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  child: Text(item.price.toString(), style: TextStyle(color: Colors.white)),
                ),
              ),
            );
          },
          itemCount: CatalogModel.products.length,
        )
        : 
        Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}