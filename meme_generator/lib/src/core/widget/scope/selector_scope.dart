import 'package:flutter/widgets.dart';
import 'package:meme_generator/src/core/widget/scope/scope_utils.dart' as utils;
import 'package:meta/meta.dart';

abstract class ChangeDetector<T extends Object?> {
  bool test(T prev, T next);
}

abstract class Mapper<T extends Object?, S extends Object?> {
  S select(T value);
}

abstract class Selector<T extends Object?, S extends Object?> implements ChangeDetector<T>, Mapper<T, S> {}

class SelectorDelegate<T extends Object?, S extends Object?> implements Selector<T, S> {
  final S Function(T value) _select;
  final bool Function(T prev, T next) _test;

  const SelectorDelegate(this._select, this._test);

  @override
  S select(T value) => _select(value);

  @override
  bool test(T prev, T next) => _test(prev, next);
}

abstract class EqualitySelector<T extends Object?, S extends Object?> implements Selector<T, S> {
  const EqualitySelector();

  @override
  bool test(T prev, T next) => select(prev) != select(next);
}

typedef SelectFunction<T extends Object?> = S Function<S extends Object?>(Selector<T, S> selector);

class SelectorScope<T extends Object?> extends InheritedModel<ChangeDetector<T>> {
  static bool debugCheckFindInContext<T extends Object?, SS extends SelectorScope<T>>(BuildContext context) =>
      utils.debugCheckFindInContext<SS>(context);

  static T? mayBeRead<T extends InheritedWidget>(BuildContext context) => utils.mayBeRead<T>(context);

  static T read<T extends InheritedWidget>(BuildContext context) => utils.read<T>(context);

  static T? mayBeWatch<T extends InheritedWidget>(BuildContext context) => utils.mayBeWatch<T>(context);

  static T watch<T extends InheritedWidget>(BuildContext context) => utils.watch<T>(context);

  @doNotStore
  static SelectFunction<T> watchSelected<T extends Object?, SS extends SelectorScope<T>>(
    BuildContext context,
  ) {
    S valueSelector<S>(Selector<T, S> selector) {
      assert(debugCheckFindInContext<T, SS>(context));
      final value = InheritedModel.inheritFrom<SS>(context, aspect: selector)!.value;

      return selector.select(value);
    }

    return valueSelector;
  }

  const SelectorScope({
    required this.value,
    required super.child,
    super.key,
  });

  final T value;

  @override
  bool updateShouldNotify(SelectorScope<T> oldWidget) => oldWidget.value != value;

  @override
  bool updateShouldNotifyDependent(
    SelectorScope<T> oldWidget,
    Set<ChangeDetector<T>> dependencies,
  ) =>
      dependencies.any((element) => element.test(oldWidget.value, value));
}

mixin SelectorScopeDelegateMixin<T extends Object?, SC extends SelectorScope<T>> {
  T read(BuildContext context) => SelectorScope.read<SC>(context).value;

  T watch(BuildContext context) => SelectorScope.watch<SC>(context).value;
}

mixin SelectorScopeSelectedDelegateMixin<T extends Object?, SC extends SelectorScope<T>, S extends Object?> {
  Selector<T, S> get selector;

  S read(BuildContext context) {
    final value = SelectorScope.read<SC>(context).value;

    return selector.select(value);
  }

  S watch(BuildContext context) => SelectorScope.watchSelected<T, SC>(context)(selector);
}
