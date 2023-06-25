import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

fetchdata(String url) async {
  http.Response response = await http.get(Uri.parse(url));
  return response.body;
}

String url = '';
String data = '';
String output = 'Initial Output';

class StackWidget extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color _color1 = HexColor("#50AEFF");
    Color _color2 = HexColor("#CBE7FF");
    Color _color3 = HexColor('#D9E6F2');

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              color: _color1.withOpacity(0.5),
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "NOTES",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //------------------BODY--------------------

          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: _textEditingController,
                                      decoration: InputDecoration(
                                        labelText: 'Enter the URL',
                                      ),
                                      onChanged: (value) {
                                        url =
                                            'http://127.0.0.1:5001/api?query=' +
                                                Uri.encodeComponent(value);
                                      },
                                    ),
                                    SizedBox(height: 40.0),
                                    Text(
                                      "Record your session here",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: _color1,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: IconButton(
                                        onPressed: () {
                                          print("Recording activated");
                                        },
                                        icon: Icon(
                                          Icons.mic,
                                          size: 50,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 55.0),
                                    Align(
                                      alignment: Alignment.center,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          String enteredText =
                                              _textEditingController.text;
                                          data = await fetchdata(url);
                                          Map<String, dynamic> decoded =
                                              jsonDecode(data);
                                          setState(() {
                                            output = decoded['output'];
                                          });
                                          print('Entered text: $enteredText');
                                        },
                                        child: Text('Generate'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              height: 300,
                              width: 380,
                              decoration: BoxDecoration(
                                  color: _color2,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: _color3,
                                      spreadRadius: 5,
                                      blurRadius: 10,
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex = "FF" + hex.toUpperCase().replaceAll("#", "");
    return int.parse(formattedHex, radix: 16);
  }

  HexColor(final String hex) : super(_getColor(hex));
}
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

fetchdata(String url) async {
  http.Response response = await http.get(Uri.parse(url));
  return response.body;
}

String url = '';
String data = '';
String output = 'Initial Output';

class StackWidget extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color _color1 = HexColor("#50AEFF");
    Color _color2 = HexColor("#CBE7FF");
    Color _color3 = HexColor('#D9E6F2');

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              color: _color1.withOpacity(0.5),
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "NOTES",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //------------------BODY--------------------

          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: _textEditingController,
                                      decoration: InputDecoration(
                                        labelText: 'Enter the URL',
                                      ),
                                      onChanged: (value) {
                                        url =
                                            'http://127.0.0.1:5001/api?query=' +
                                                Uri.encodeComponent(value);
                                      },
                                    ),
                                    SizedBox(height: 40.0),
                                    Text(
                                      "Record your session here",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: _color1,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: IconButton(
                                        onPressed: () {
                                          print("Recording activated");
                                        },
                                        icon: Icon(
                                          Icons.mic,
                                          size: 50,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 55.0),
                                    Align(
                                      alignment: Alignment.center,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          String enteredText =
                                              _textEditingController.text;
                                          data = await fetchdata(url);
                                          Map<String, dynamic> decoded =
                                              jsonDecode(data);
                                          setState(() {
                                            output = decoded['output'];
                                          });
                                          print('Entered text: $enteredText');
                                        },
                                        child: Text('Generate'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              height: 300,
                              width: 380,
                              decoration: BoxDecoration(
                                  color: _color2,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: _color3,
                                      spreadRadius: 5,
                                      blurRadius: 10,
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColor(String hex) {
    String formattedHex = "FF" + hex.toUpperCase().replaceAll("#", "");
    return int.parse(formattedHex, radix: 16);
  }

  HexColor(final String hex) : super(_getColor(hex));
}
