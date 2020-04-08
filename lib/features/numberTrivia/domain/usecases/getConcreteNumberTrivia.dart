import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'package:weather_app_bloc/Core/error/failures.dart';
import 'package:weather_app_bloc/Core/useCases/useCase.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/entities/number_trivia.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/repositories/NumberTriviaRepository.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia,Paramas>{
  final NumberTriviaRepository numberTriviaRepository;
  GetConcreteNumberTrivia(this.numberTriviaRepository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Paramas parameters) {
    return numberTriviaRepository.getConcreteNumberTrivia(parameters.num);
  }

 




}
class Paramas extends Equatable{
  final int num;
  Paramas({@required this.num});

  @override
  List<Object> get props => [num];

}