import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/entities/number_trivia.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/repositories/NumberTriviaRepository.dart';
import 'package:weather_app_bloc/features/numberTrivia/domain/usecases/getRandomNumberTrivia.dart';

class MockRandomNumberRipositiry extends Mock
    implements NumberTriviaRepository {}

main() {
  GetRandomNumberTrivia getRandomNumberTrivia;
  MockRandomNumberRipositiry mockRandomNumberRipositiry;
  setUp(() {
    mockRandomNumberRipositiry = MockRandomNumberRipositiry();
    getRandomNumberTrivia = GetRandomNumberTrivia(mockRandomNumberRipositiry);
  });
  final tNumberRandom = NumberTrivia(text: 'test', number: 1);
  test('test random number trivia', () async {
    when(mockRandomNumberRipositiry.getRandomNumberTrivia())
        .thenAnswer((realInvocation) async => Right(tNumberRandom));

  final result = await mockRandomNumberRipositiry.getRandomNumberTrivia();
  expect(result, Right(tNumberRandom));
  verify(mockRandomNumberRipositiry.getRandomNumberTrivia());
  verifyNoMoreInteractions(mockRandomNumberRipositiry);
  });
}
