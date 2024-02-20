import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_generator/src/features/meme/data/meme_repository.dart';
import 'package:meme_generator/src/features/meme/model/model.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'meme_bloc.freezed.dart';

@freezed
sealed class MemeBlocEvent with _$MemeBlocEvent {
  const MemeBlocEvent._();

  const factory MemeBlocEvent.insert({
    required Meme meme,
  }) = MemeBlocEventInsert;
}

@freezed
sealed class MemeBlocState with _$MemeBlocState {
  const MemeBlocState._();

  const factory MemeBlocState.loading({
    Meme? meme,
  }) = MemeBlocStateLoading;

  const factory MemeBlocState.idle({
    required Meme meme,
  }) = MemeBlocStateIdle;

  const factory MemeBlocState.error({
    Meme? meme,
    required Object error,
  }) = MemeBlocStateError;

  MemeBlocState toLoading({
    Meme? meme,
  }) =>
      MemeBlocState.loading(
        meme: meme ?? this.meme,
      );

  MemeBlocState toIdle({
    Meme? meme,
  }) =>
      MemeBlocState.idle(
        meme: meme ?? this.meme ?? _throwMemeIsNull(),
      );

  MemeBlocState toError({
    required Object error,
    Meme? meme,
  }) =>
      MemeBlocState.error(
        meme: meme ?? this.meme,
        error: error,
      );

  Meme get memeOrThrow => meme ?? _throwMemeIsNull();
}

class MemeBloc extends StreamBloc<MemeBlocEvent, MemeBlocState> {
  final MemeRepository _repository;

  MemeBloc({
    Meme? meme,
    required MemeRepository repository,
  })  : _repository = repository,
        super(
          meme == null ? const MemeBlocState.loading() : MemeBlocState.idle(meme: meme),
        );

  @override
  Stream<MemeBlocState> mapEventToStates(MemeBlocEvent event) => switch (event) {
        MemeBlocEventInsert event => _insert(event),
      }
          .distinct();

  Stream<MemeBlocState> _insert(MemeBlocEventInsert event) async* {
    yield state.toLoading();

    try {
      await _repository.insert(event.meme);
      yield state.toIdle(meme: event.meme);
    } on Object catch (e) {
      yield state.toError(error: e);
      rethrow;
    }
  }
}

Never _throwMemeIsNull() => throw ArgumentError.notNull('meme');
