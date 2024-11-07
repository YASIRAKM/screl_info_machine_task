validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter an email';
  }

  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  if (!emailRegex.hasMatch(value)) {
    return 'Please enter a valid email';
  }

  return null;
}

validateText(String? value, String error) {
  if (value!.isEmpty) {
    return error;
  }
  return null;
}
