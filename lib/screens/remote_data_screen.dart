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
  Future<http.Response> apiResponse =
      http.get(RemoteDataScreen.URL); //will result in string

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: apiResponse,
        builder: (context, snapshot) {
          Widget child;
          if (snapshot.hasData) {
            Character character =
                Character.fromJSON(jsonDecode(snapshot.data.body));
            child = Text(
              '${character.name}',
              style: Theme.of(context).textTheme.headline5,
            );
          } else {
            child = CircularProgressIndicator();
          }

          return Center(child: child);
        });
  }
}
