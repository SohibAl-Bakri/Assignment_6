import 'package:flutter/material.dart';

class Bmw extends StatelessWidget {
  const Bmw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMW'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://www.fiftiesstore.com/media/opti_image/webp/catalog/product/cache/8b6431de9410c89d24dfb37cd261db29/e/n/ent_8421_bmw_xxl.webp'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to bmw page',
              style: TextStyle(
                backgroundColor: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 400),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.home),
              label: Text('Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
