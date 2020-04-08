import 'package:weather_app_bloc/features/numberTrivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  final String text;
  final int number;

  NumberTriviaModel({this.text, this.number});

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
        text: json['text'], number: (json['number'] as num).toInt());
  }

  Map<String, dynamic> tojson() {
    return {'text': this.text, 'number': this.number};
  }
}
