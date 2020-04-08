import 'package:equatable/equatable.dart';

 abstract class Failure extends Equatable{
  final List preporities;
  Failure([this.preporities = const <dynamic>[]]);

  @override
  List<Object> get props => [preporities];
  
}