enum WideImages { error_background }

extension KryktoImageExtension on WideImages {
  String get png => "images/$name.png";

  String get package => "module_assets";
}
