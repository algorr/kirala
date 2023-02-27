part of 'introduce_cubit.dart';

abstract class IntroduceState extends Equatable {
  const IntroduceState();

  @override
  List<Object> get props => [];
}

class IntroduceInitial extends IntroduceState {}

class ProfilePictureChangeState extends IntroduceState {}

class DeleteProfilePictureState extends IntroduceState {}

class PetChoicePositiveState extends IntroduceState {}

class PetChoiceNegativeState extends IntroduceState {}

class IncomeState extends IntroduceState {}

class PriceState extends IntroduceState {}
