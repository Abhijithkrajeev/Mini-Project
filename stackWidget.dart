import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _color1 = HexColor("#50AEFF");
    Color _color2 = HexColor("#CBE7FF");
    Color _color3 = HexColor("#D2D39E");
    return (Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 500,
                height: 60,
                color: _color1,
                child: Container(
                  //padding: EdgeInsets.only(left: 40, top: 16),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "NOTES",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),
              )),

          //------------------BODY--------------------
          Positioned(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Align(
                        alignment: Alignment.center,
                        child: Stack(children: <Widget>[
                          Container(
                            child: Container(
                              height: 300,
                              width: 380,
                              decoration: BoxDecoration(
                                color: _color2,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ]))),
        ],
      ),
    ));
  }
}

class HexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex = "FF" + hex.toUpperCase().replaceAll("#", "");
    return int.parse(formattedHex, radix: 16);
  }

  HexColor(final String hex) : super(_getColor(hex));
}
