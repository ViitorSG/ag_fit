import 'package:flutter/material.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/mobx_triple.dart';
import 'package:module_external_dependencies/modular_interfaces.dart';

class LocalNotifier extends ChangeNotifier {
  update() => notifyListeners();
}

class TripleBind {
  static Listenable _generateNotifier(Store store) {
    final notifier = LocalNotifier();
    store.observer(
      onState: (_) => notifier.update(),
      onError: (_) => notifier.update(),
      onLoading: (_) => notifier.update(),
    );

    return notifier;
  }

  static Bind<T> singleton<T extends Store>(
    T Function(Injector<dynamic> i) factoryFunction, {
    bool export = false,
  }) {
    return Bind<T>(
      factoryFunction,
      export: export,
      isLazy: false,
      onDispose: (store) {
        store.destroy();
      },
      selector: _generateNotifier,
    );
  }

  static Bind<T> lazySingleton<T extends Store>(
    T Function(Injector<dynamic> i) factoryFunction, {
    bool export = false,
  }) {
    return Bind<T>(
      factoryFunction,
      export: export,
      isLazy: true,
      onDispose: (store) {
        store.destroy();
      },
      selector: _generateNotifier,
    );
  }

  static Bind<T> factory<T extends Store>(
    T Function(Injector<dynamic> i) factoryFunction, {
    bool export = false,
  }) {
    return Bind<T>(
      factoryFunction,
      export: export,
      isLazy: true,
      isSingleton: false,
      onDispose: (store) {
        store.destroy();
      },
      selector: _generateNotifier,
    );
  }

  static Bind<T> instance<T extends Store>(
    T store, {
    bool export = false,
  }) {
    return Bind<T>(
      (i) => store,
      export: export,
      isLazy: true,
      isSingleton: false,
      onDispose: (store) {
        store.destroy();
      },
      selector: _generateNotifier,
    );
  }
}
