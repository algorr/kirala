import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'introduce_state.dart';

class IntroduceCubit extends Cubit<IntroduceState> {
  IntroduceCubit() : super(IntroduceInitial());

  final ImagePicker _picker = ImagePicker();
  File? imagePath;
  bool petChoiced = false;

//* Profile Picture Selection
  Future changeProfilePicture() async {
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
    petChoiced = !petChoiced;
    emit(PetChoicePositiveState());
  }

  //* Pet Negative Choice Selection
  void petNegativeChoice() {
    petChoiced = !petChoiced;
    emit(PetChoiceNegativeState());
  }
}
