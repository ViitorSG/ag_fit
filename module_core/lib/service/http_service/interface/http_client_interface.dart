import 'package:module_core/models/pageable_model.dart';

abstract class IWideHttpClient {
  Future get(String? url, {Pageable? pageable, Map<String, dynamic>? query});

  Future post(String path, {dynamic data});

  Future put(String url, {dynamic data});

  Future delete(String url);
}
