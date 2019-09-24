import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blueAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("CODERWHY"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          ProductItem("Apple1", "Macbook Product1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
          ProductItem("Apple2", "Macbook Product2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
          ProductItem("Apple3", "Macbook Product3", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
          ProductItem("Apple4", "Macbook Product4", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
          ProductItem("Apple5", "Macbook Product5", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
          ProductItem("Apple6", "Macbook Product6", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
          ProductItem("Apple7", "Macbook Product7", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
          ProductItem("Apple8", "Macbook Product8", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
          ProductItem("Apple9", "Macbook Product9", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
        ],
      ),
    );
  }

}

class ProductItem extends StatelessWidget {

  final String title;
  final String desc;
  final String imageUrl;

  ProductItem(this.title, this.desc, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: Column(
          children: [
            ProductItemTop(this.title, this.desc),
            Text(""),
            Image.network(imageUrl)
          ]
      ),
    );
  }

}

class ProductItemTop extends StatelessWidget {

  final String title;
  final String desc;

  ProductItemTop(this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(title, style: TextStyle(fontSize: 24)),
        Text("  "),
        Text(desc, style: TextStyle(fontSize: 18)),
      ],
    );
  }

}
