import 'package:flutter/widgets.dart';

bool debugCheckFindInContext<T extends InheritedWidget>(BuildContext context) {
  assert(() {
    if (context.widget is! T && context.getElementForInheritedWidgetOfExactType<T>() == null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No $T widget ancestor found.'),
        ErrorDescription('${context.widget.runtimeType} widgets require a $T widget ancestor.'),
        context.describeWidget('The specific widget that could not find a $T ancestor was'),
        context.describeOwnershipChain('The ownership chain for the affected widget is'),
        ErrorHint('No $T ancestor could be found starting from the context.'),
      ]);
    }

    return true;
  }());

  return true;
}

T? mayBeRead<T extends InheritedWidget>(BuildContext context) => context.getElementForInheritedWidgetOfExactType<T>()?.widget as T?;

T read<T extends InheritedWidget>(BuildContext context) {
  assert(debugCheckFindInContext<T>(context));

  return mayBeRead<T>(context)!;
}

T? mayBeWatch<T extends InheritedWidget>(BuildContext context) => context.dependOnInheritedWidgetOfExactType<T>();

T watch<T extends InheritedWidget>(BuildContext context) {
  assert(debugCheckFindInContext<T>(context));

  return mayBeWatch<T>(context)!;
}
