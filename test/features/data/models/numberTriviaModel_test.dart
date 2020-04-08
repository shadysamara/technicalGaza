

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_bloc/features/numberTrivia/data/models/numberTriviaModel.dart';

import '../../../fixtures/fixture_reader.dart';

main(){
  NumberTriviaModel numberTriviaModel = NumberTriviaModel(text: "test text",
    number: 1);
    
    group('fromJson', () {
        test('test to double map', (){
    final Map<String, dynamic> jsonMap =
            json.decode(fixture('trivia_double.json'));
    final result = NumberTriviaModel.fromJson(jsonMap);
    expect(result, numberTriviaModel);
  });
  
   test('test to integer map', (){
    final Map<String, dynamic> jsonMap =
            json.decode(fixture('trivia.json'));
    final result = NumberTriviaModel.fromJson(jsonMap);
    expect(result, numberTriviaModel);
  });


  
   test('test to json', (){
    final expectedJson = {
     'text': "test text",
    "number": 1
    };
    final result = numberTriviaModel.tojson();
    expect(result, expectedJson);
  });
  
  });
}