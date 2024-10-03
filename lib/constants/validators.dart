String? emailValidator(String? value) {
  if (value == null || !value.contains('@') || !value.contains('.')) {
    return 'メールアドレスが異なっています。';
  }
  return null;
}
