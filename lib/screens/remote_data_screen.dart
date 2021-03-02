import 'package:flutter/material.dart';
import 'package:flutter_practice_wk8/models/character.dart';
import 'package:http/http.dart' as http;

class RemoteDataScreen extends StatefulWidget {
  final title;
  RemoteDataScreen({this.title});

  static const URL = 'https://swapi.dev/aip/people/1';

  @override
  _RemoteDataScreenState createState() => _RemoteDataScreenState();
}

class _RemoteDataScreenState extends State<RemoteDataScreen> {
  Character character;

  @override
  Widget build(BuildContext context) {
    return Container(child: CircularProgressIndicator());
  }
}
