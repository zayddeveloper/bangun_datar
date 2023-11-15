import 'package:bangun_datar_app/pages/persegi_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: CustomText(
          text: "HomePage",
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
                    },
                    child: CustomMenu(imageAssets: "assets/persegi.jpeg", title: "Persegi")),
              ),
              Expanded(child: CustomMenu(imageAssets: "assets/segitiga.jpeg", title: "Persegi Panjang")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAssets: "assets/segitiga.jpeg", title: "Lingkaran")),
              Expanded(child: CustomMenu(imageAssets: "assets/segitiga.jpeg", title: "Segitiga")),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 100,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
