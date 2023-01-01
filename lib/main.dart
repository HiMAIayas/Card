import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/fishtail.png'), fit: BoxFit.cover)),
        height: 800,
        width: 450,
        child: SafeArea(
          child: Stack(children: [
            Positioned(
              bottom: 200,
              left: 15,
              child: Center(
                child: Column(
                  children: [
                    //First
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white.withOpacity(0.5)),
                      //Colors.blue.withOpacity(0.5)),
                      height: 80,
                      width: 380,
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Icon(Icons.info_outline),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'The name is Macchapucchre (Fishtail) which',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'VFCnorm'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                'is known from its unique appearance (two peaks',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'VFCnorm'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                'similar to the tail of fish).',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'VFCnorm'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    //Second
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white.withOpacity(0.5)),
                      //Colors.blue.withOpacity(0.5)),
                      height: 80,
                      width: 380,
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Icon(Icons.info_outline),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'It is sacred mountain as it is believed to be',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'VFCnorm'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                'a home to Hindu deity Shiva. The peak remains ',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'VFCnorm'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                'untouched as it should be.',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'VFCnorm'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    //third
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white.withOpacity(0.5)),
                      //Colors.blue.withOpacity(0.5)),
                      height: 60,
                      width: 380,
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Icon(Icons.info_outline),
                              SizedBox(width: 10),
                              Text(
                                'The image generated by MidJourney does not',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'VFCnorm'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                'look like the real Fishtail.',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'VFCnorm'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    'images/hex.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                height: 200,
                width: 500,
              ),
            ),
            Positioned(
              bottom: 40,
              child: ClipPath(
                child: Container(
                  height: 70,
                  width: 420,
                  color: Colors.grey.shade900,
                ),
                clipper: _BackClipper(),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 30,
              child: ClipPath(
                child: Container(
                  height: 50,
                  width: 180,
                  color: Colors.grey.shade700,
                ),
                clipper: _HexClipper(),
              ),
            ),
            Positioned(
              left: 70,
              bottom: 50,
              child: Text(
                '6993 m',
                style: TextStyle(
                  fontFamily: 'VCFnorm',
                  fontStyle: FontStyle.italic,
                  fontSize: 48,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 77,
              right: 5,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amberAccent,
                  ),
                  height: 25,
                  width: 80,
                  alignment: Alignment.center,
                  child: Text(
                    'NEPAL',
                    style: TextStyle(fontFamily: 'GoodTime', fontSize: 14),
                  )),
            ),
            Positioned(
              bottom: 47,
              right: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue.shade50,
                ),
                height: 25,
                width: 170,
                alignment: Alignment.center,
                child: Text(
                  'THE HIMALAYAS',
                  style: TextStyle(fontFamily: 'GoodTime', fontSize: 14),
                ),
              ),
            ),
            Positioned(
              bottom: 115,
              left: 20,
              child: Text(
                'MT. FISHTAIL',
                style: TextStyle(
                    fontFamily: 'VCFhead',
                    fontSize: 60,
                    color: Colors.white,
                    letterSpacing: 10),
              ),
            )
            // CircleAvatar(
            //   radius: 50,
            //   backgroundImage: AssetImage('images/dog.jpg'),
            // ),
          ]),
        ),
      ),
    );
  }
}

class _BackClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(43, 0);
    path.lineTo(200, 0);
    path.lineTo(223, 30);
    path.lineTo(300, 30);
    path.lineTo(323, 0);
    path.lineTo(420, 0);
    path.lineTo(420, 70);
    path.lineTo(43, 70);
    path.lineTo(20, 40);
    path.lineTo(0, 40);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _HexClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.5);
    path.lineTo(size.width * 0.1, 0);
    path.lineTo(size.width * 0.9, 0);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.9, size.height);
    path.lineTo(size.width * 0.1, size.height);
    path.lineTo(0, size.height * 0.5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
