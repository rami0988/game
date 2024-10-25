import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ImagePicker _picker = ImagePicker();

  LoginCubit() : super(const LoginState());

  Future<void> pickImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        emit(state.copyWith(profilePic: File(pickedFile.path)));
      }
    } catch (e) {
      // Log or handle any error if picking the image fails
    }
  }

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }
}
