import 'dart:io';

class LoginState {
  final File? profilePic;
  final String name;
  final String password;

  const LoginState({
    this.profilePic,
    this.name = '',
    this.password = '',
  });

  LoginState copyWith({
    File? profilePic,
    String? name,
    String? password,
  }) {
    return LoginState(
      profilePic: profilePic ?? this.profilePic,
      name: name ?? this.name,
      password: password ?? this.password,
    );
  }
}
