import 'dart:convert';
import 'dart:io';

import 'package:module_commons/commons.dart';
import 'package:module_core/models/base_model.dart';
import 'package:module_core/models/pageable_model.dart';
import 'package:module_core/service/http_service/interface/http_client_interface.dart';
import 'package:module_core/service/local_storage_service/interface/local_storage_interface.dart';
import 'package:module_core/utils/storage_keys.dart';
import 'package:module_external_dependencies/dio.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

class WideHttpClientService implements IWideHttpClient {
  final ILocalStorage storage;
  final Dio dio = Dio(BaseOptions(connectTimeout: AgFitDurations.connectTimeout));

  WideHttpClientService({required this.storage}) {
    dio.interceptors.add(_interceptorsWrapper());
  }

  InterceptorsWrapper _interceptorsWrapper() => InterceptorsWrapper(onError: (err, handler) {
        if (err.error is SocketException || err.response?.statusCode == 401 || err.response?.statusCode == 403) {
          Modular.to.navigate(AgFitRoutes.login);
        }
        return handler.next(err);
      });

  @override
  Future get(String? url, {Pageable? pageable, Map<String, dynamic>? query}) async {
    Map<String, dynamic> queryParameters = _getQueryParameters(pageable: pageable, query: query);

    return await dio.get(url!, queryParameters: queryParameters, options: await _options);
  }

  @override
  Future post(String path, {dynamic data}) async {
    return await dio.post(path, data: json.encode(data), options: await _options);
  }

  @override
  Future put(String path, {dynamic data}) async {
    return await dio.put(path, data: json.encode(data), options: await _options);
  }

  @override
  Future delete(String path, {IBaseModel? data}) async {
    return await dio.delete(path, data: data?.toJson(), options: await _options);
  }

  Future<Options> get _options async {
    var token = await storage.get(ID_TOKEN);
    var options = Options();

    options.headers = {'Authorization': "Bearer $token"};

    return options;
  }

  Map<String, dynamic> _getQueryParameters({Pageable? pageable, Map<String, dynamic>? query}) {
    Map<String, dynamic> queryParameters = {...?query};
    if (pageable != null) {
      queryParameters.putIfAbsent('page', () => pageable.page);
      queryParameters.putIfAbsent('size', () => pageable.size);
    }

    return queryParameters;
  }
}
