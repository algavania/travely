class SharedCode {
  static const double defaultPadding = 16;

  String? emptyValidator(value) {
    return value.toString().trim().isEmpty ? 'Tidak boleh kosong' : null;
  }

  String? passwordValidator(value) {
    return value.toString().length < 6 ? 'Password harus kurang lebih 6 karakter' : null;
  }

  String? confirmPasswordValidator(String? value, String password) {
    if (value?.isEmpty ?? true) return 'Tidak boleh kosong';
    return value != password ? 'Password harus sama' : null;
  }


  String? emailValidator(value) {
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
    return !emailValid ? 'Email tidak valid' : null;
  }

}