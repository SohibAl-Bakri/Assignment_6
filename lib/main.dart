import 'package:assignment_6/audi.dart';
import 'package:assignment_6/bmw.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Assignment 6',
        home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment 6'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://0a411afb0c598242cc95-1df470064133d6bc5c471837468f475c.ssl.cf3.rackcdn.com/publish/wp-content/uploads/2017/02/carshop-store.jpg'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to car Shop',
              style: TextStyle(
                backgroundColor: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 120),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://www.fiftiesstore.com/media/opti_image/webp/catalog/product/cache/8b6431de9410c89d24dfb37cd261db29/e/n/ent_8421_bmw_xxl.webp'),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Bmw();
                            },
                          ));
                        });
                      },
                      child: Text('BMW'),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://image.shutterstock.com/image-photo/january-28-2014-berlin-logo-260nw-180351212.jpg'),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Audi();
                            },
                          ));
                        });
                      },
                      child: Text('AUDI'),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
