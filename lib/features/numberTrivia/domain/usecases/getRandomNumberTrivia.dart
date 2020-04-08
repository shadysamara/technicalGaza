import 'package:dartz/dartz.dart';
import 'package:weather_app_bloc/Core/error/failures.dart';
import 'package:weather_app_bloc/Core/useCases/useCase.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/entities/number_trivia.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/repositories/NumberTriviaRepository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository numberTriviaRepository;

  GetRandomNumberTrivia(this.numberTriviaRepository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams parameters) async{
    return await numberTriviaRepository.getRandomNumberTrivia();
  }
}
