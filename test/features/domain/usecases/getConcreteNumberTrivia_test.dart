import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/entities/number_trivia.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/repositories/NumberTriviaRepository.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/usecases/getConcreteNumberTrivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test(
    'should get trivia for the number from the repository',
    () async {
      // "On the fly" implementation of the Repository using the Mockito package.
      // When getConcreteNumberTrivia is called with any argument, always answer with
      // the Right "side" of Either containing a test NumberTrivia object.

      /// here we tell flutter that whenever (mockNumberTriviaRepository.getConcreteNumberTrivia 
      /// it will return the right parameter of the output, which means NumberTrivia object
      when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
          .thenAnswer((_) async => Right(tNumberTrivia));
      // The "act" phase of the test. Call the not-yet-existent method.
      final result = await usecase(Paramas(num: tNumber));
      // UseCase should simply return whatever was returned from the Repository

      // to pass the test the expect parameters must be matched
      expect(result,Right(tNumberTrivia));

/// verify that mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber) has been called in the test
      verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));

/// verify that mockNumberTriviaRepository just be called for one time only
      verifyNoMoreInteractions(mockNumberTriviaRepository);

    },
  );
}