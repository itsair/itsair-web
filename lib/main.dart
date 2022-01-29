import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aiR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "";
  final urlandroid =
      "https://drive.google.com/file/d/1Jz41clWKGSmRfrMBuvLXn4GLZj7gdBAL/view?usp=sharing";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text(
                  'Work in Progress-Comming Soon',
                  style: TextStyle(fontSize: 20),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Row(
              children: [
                Center(
                    child: Container(
                        child: Text(
                  "Use Over Web",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ))),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 50,
                ),
              ],
            ),
          ),
          // Icon(
          //   Icons.arrow_forward_ios,
          //   color: Colors.black,
          //   size: 50,
          // ),
          SizedBox(width: 30),
        ],
        leading: Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: Image.asset(
            'assets/images/logo_transparent.png',
            fit: BoxFit.cover,
            height: 100,
          ),
        ),
      ),
      body: Container(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: [
                      Stack(
                        children: [
                          Container(
                            // height: 500,
                            child: Image.asset(
                              'assets/images/1.png',
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 1.4,
                              // Height: ${MediaQuery.of(context).size.height}
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 100,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () async {
                                    if (await canLaunch(urlandroid)) {
                                      await launch(urlandroid);
                                    }
                                  },
                                  child: Image.asset(
                                    'assets/images/android.png',
                                    fit: BoxFit.cover,
                                    height: 150,
                                  ),
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  onPressed: () {
                                    final snackBar = SnackBar(
                                      content: Text(
                                        'Comming Soon',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  child: Image.asset(
                                    'assets/images/ios.png',
                                    fit: BoxFit.cover,
                                    height: 150,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // height: 500,
                        child: Image.asset(
                          'assets/images/2.png',
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1.4,
                        ),
                      ),
                      Container(
                        // height: 500,
                        child: Image.asset(
                          'assets/images/3.png',
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1.4,
                          // Height: ${MediaQuery.of(context).size.height}
                        ),
                      ),
                      Container(
                        // height: 500,
                        child: Image.asset(
                          'assets/images/4.png',
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1.4,
                        ),
                      ),
                      Container(
                        // height: 500,
                        child: Image.asset(
                          'assets/images/5.png',
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1.4,
                          // Height: ${MediaQuery.of(context).size.height}
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Made By Ayush Tripathi",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      )
                    ]),
              )
            ]),
      ),
    );
  }
}
