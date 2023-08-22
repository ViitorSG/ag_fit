enum WideVectors {
  ic_search,
  ic_home,
  ic_home_filled,
  ic_notifications,
  ic_user,
  ic_hat,
  ic_mask_group,
  ic_single_user,
  ic_eye,
  ic_eye_blocked,
  ic_download,
  ic_check,
  ic_alert,
  ic_down_arrow,
  ic_back,
  ic_menu,
  ic_camera,
  ic_quiz,
  ic_play,
  ic_read,
  ic_podcast,
  ic_check_password,
  ic_close_large,
  ic_close,
  ic_menu_board,
  ic_advance_audio,
  ic_back_audio,
  ic_edit,
  ic_right_arrow,
  ic_folders,
  ic_pen,
  ic_logo_wide,
  ic_notes_edit,
  ic_heart,
  ic_logout,
  ic_question,
  ic_certificate,
  ic_chart,
  ic_menu_arrow,
  ic_photo,
  ic_mic
}

extension ImageVectorExtension on WideVectors {
  String get svg => "vectors/$name.svg";

  String get package => "module_assets";
}
