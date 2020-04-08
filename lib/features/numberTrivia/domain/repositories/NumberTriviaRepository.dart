import 'package:dartz/dartz.dart';
import 'package:weather_app_bloc/Core/error/failures.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository{
  Future<Either<Failure,NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure,NumberTrivia>> getRandomNumberTrivia();
  
}