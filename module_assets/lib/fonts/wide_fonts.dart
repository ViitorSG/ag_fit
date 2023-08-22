enum WideFontFamily {
  inter,
  aeonik,
}

extension WideFontFamilyExtension on WideFontFamily {
  String get name {
    if (this == WideFontFamily.aeonik) return "Aeonik";
    return "Inter";
  }
}
