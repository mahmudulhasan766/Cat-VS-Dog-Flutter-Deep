import 'package:catvsdog/imp/route.dart';
import 'package:flutter/material.dart';

class AllBranch extends StatefulWidget {
  @override
  _AllBranchState createState() => _AllBranchState();
}

class _AllBranchState extends State<AllBranch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Text(
            "All Branch",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins"),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      HOME_CD, (Route<dynamic> route) => false);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  decoration: BoxDecoration(
                      color: Color(0xFFE99600),
                      borderRadius: BorderRadius.circular(6)),
                  child: Text('Cats and Dogs',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: GestureDetector(
                  // onTap: (),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                    decoration: BoxDecoration(
                        color: Color(0xFFE99600),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text('Manu',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
