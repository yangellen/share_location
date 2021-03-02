import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_practice_wk8/models/character.dart';
import 'package:http/http.dart' as http;

class RemoteDataScreen extends StatefulWidget {
  final title;
  RemoteDataScreen({this.title});

  static const URL = 'https://swapi.dev/api/people/1';

  @override
  _RemoteDataScreenState createState() => _RemoteDataScreenState();
}

class _RemoteDataScreenState extends State<RemoteDataScreen> {
  Character character;

  @override
  void initState() {
    super.initState();
    retrieveCharacterData();
  }

  //getting info from aip
  void retrieveCharacterData() async {
    final http.Response apiResponse =
        await http.get(RemoteDataScreen.URL); //will result in string

    character = Character.fromJSON(jsonDecode(apiResponse.body));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (character == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Center(
        child: Text(
          '${character.name}',
          style: Theme.of(context).textTheme.headline5,
        ),
      );
    }
  }
}
