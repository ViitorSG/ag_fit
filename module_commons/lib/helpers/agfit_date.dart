class AgFitDateHelper {
  static DateTime? parse(String? date) => DateTime.tryParse(date ?? "")?.toLocal();
}
