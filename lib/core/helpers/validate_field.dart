
class ValidateField{
  static String? validate(value, val) {
    return (value?.isEmpty ?? true) ? val : null;
  }
}