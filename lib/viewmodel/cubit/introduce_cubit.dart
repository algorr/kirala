import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

part 'introduce_state.dart';

class IntroduceCubit extends Cubit<IntroduceState> {
  IntroduceCubit() : super(IntroduceInitial());

  final ImagePicker _picker = ImagePicker();
  File? imagePath;
  bool petChoiced = false;
  bool incomeSelected = false;
  String? educationTitle;
  String? firstPrice;
  String? secondPrice;
  RangeValues values = const RangeValues(0, 100000);

//* Profile Picture Selection
  Future<void> changeProfilePicture() async {
    XFile? image =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    if (image != null) {
      imagePath = File(image.path);
      emit(ProfilePictureChangeState());
    }
  }

//* Delete Picture
  void deleteProfilePicture() {
    imagePath = null;
    emit(DeleteProfilePictureState());
  }

//* Pet Positive Choice Selection
  void petPositiveChoice() {
    petChoiced = true;
    emit(PetChoicePositiveState());
  }

  //* Pet Negative Selection
  void petNegativeChoice() {
    petChoiced = false;
    emit(PetChoiceNegativeState());
  }

  //* Education Selection
  void educationSelection() {
    educationTitle;
    emit(EducationTitleState());
  }

  //* Positive Income Selection
  void positiveIncomeSelection() {
    incomeSelected = true;
    emit(IncomeState());
  }

  //* Negative Income Selection
  void negativeIncomeSelection() {
    incomeSelected = false;
    emit(NoIncomeState());
  }

  //*  Price Selection
  void priceSelection() {
    firstPrice = values.start.toInt().toString();
    emit(FirstPriceState());
    secondPrice = values.end.toInt().toString();
    emit(SecondPriceState());
  }
}
