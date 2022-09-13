import 'package:flutter/material.dart';

class Audi extends StatelessWidget {
  const Audi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AUDI'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://image.shutterstock.com/image-photo/january-28-2014-berlin-logo-260nw-180351212.jpg'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to audi page',
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
