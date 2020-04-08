import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app_bloc/Core/error/failures.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/entities/number_trivia.dart';

abstract class UseCase<Type,Parameters>{
Future<Either<Failure,Type>> call(Parameters parameters);
}
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}