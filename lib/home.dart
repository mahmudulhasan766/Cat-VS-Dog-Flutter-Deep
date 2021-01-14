import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101010),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              'TechableMachin .com NNC',
              style: TextStyle(
                color: Color(0xFFEEDA28),
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Detect Dog and Cats',
              style: TextStyle(
                color: Color(0xFFE99600),
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40),
            Center(
                child: _loading
                    ? Container(
                        width: 280,
                        child: Column(
                          children: [
                            Image.asset('assets/catanddog.PNG'),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      )
                    : Container()),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width - 200,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                      decoration: BoxDecoration(
                          color: Color(0xFFE99600),
                          borderRadius: BorderRadius.circular(6)),
                      child: Text('Take a photo',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width - 200,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                      decoration: BoxDecoration(
                          color: Color(0xFFE99600),
                          borderRadius: BorderRadius.circular(6)),
                      child: Text('Camera Roll',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
