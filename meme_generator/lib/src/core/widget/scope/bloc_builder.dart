import 'package:flutter/widgets.dart';
import 'package:stream_bloc/stream_bloc.dart';

class BlocBuilder<T extends Object?> extends StatelessWidget {
  final StateStreamable<T> streamable;
  final Widget Function(BuildContext context, T state) builder;

  const BlocBuilder({
    required this.streamable, required this.builder, super.key,
  });

  @override
  Widget build(BuildContext context) => StreamBuilder<T>(
        initialData: streamable.state,
        stream: streamable.stream,
        builder: (context, snapshot) => builder(context, snapshot.data as T),
      );
}
