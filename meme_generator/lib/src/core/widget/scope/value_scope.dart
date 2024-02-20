import 'package:meme_generator/src/core/widget/scope/scope_utils.dart' as utils;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ValueScope<T> extends InheritedWidget {
  static T? mayBeRead<T>(BuildContext context) => utils.mayBeRead<ValueScope<T>>(context)?.value;

  static T read<T>(BuildContext context) => utils.read<ValueScope<T>>(context).value;

  static T? mayBeWatch<T>(BuildContext context) => utils.mayBeWatch<ValueScope<T>>(context)?.value;

  static T watch<T>(BuildContext context) => utils.watch<ValueScope<T>>(context).value;

  final T value;

  const ValueScope({
    required this.value,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(ValueScope<T> oldWidget) => value != oldWidget.value;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty('value', value));
  }
}

class ValueScopeDelegate<T extends Object?> {
  const ValueScopeDelegate();
  
  T read(BuildContext context) => ValueScope.read<T>(context);

  T watch(BuildContext context) => ValueScope.watch<T>(context);
}
