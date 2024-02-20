import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_generator/src/features/meme/data/meme_repository.dart';
import 'package:meme_generator/src/features/meme/model/model.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'meme_list_bloc.freezed.dart';

@freezed
sealed class MemeListBlocEvent with _$MemeListBlocEvent {
  const MemeListBlocEvent._();

  const factory MemeListBlocEvent.refresh() = MemeListBlocEventRefresh;

  const factory MemeListBlocEvent.add({
    required Meme meme,
  }) = MemeListBlocEventAdd;

  const factory MemeListBlocEvent.remove({
    required Meme meme,
  }) = MemeListBlocEventRemove;
}

@freezed
sealed class MemeListBlocState with _$MemeListBlocState {
  const MemeListBlocState._();

  const factory MemeListBlocState.loading({
    MemeList? memeList,
  }) = MemeListBlocStateLoading;

  const factory MemeListBlocState.idle({
    required MemeList memeList,
  }) = MemeListBlocStateIdle;

  const factory MemeListBlocState.error({
    MemeList? memeList,
    required Object error,
  }) = MemeListBlocStateError;

  MemeListBlocState toLoading({
    MemeList? memeList,
  }) =>
      MemeListBlocState.loading(
        memeList: memeList ?? this.memeList,
      );

  MemeListBlocState toIdle({
    MemeList? memeList,
  }) =>
      MemeListBlocState.idle(
        memeList: memeList ?? this.memeList ?? _throwMemeListIsNull(),
      );

  MemeListBlocState toError({
    required Object error,
    MemeList? memeList,
  }) =>
      MemeListBlocState.error(
        memeList: memeList ?? this.memeList,
        error: error,
      );

  MemeList get memeListOrThrow => memeList ?? _throwMemeListIsNull();
}

class MemeListBloc extends StreamBloc<MemeListBlocEvent, MemeListBlocState> {
  final MemeRepository _repository;

  MemeListBloc({
    MemeList? memeList,
    required MemeRepository repository,
  })  : _repository = repository,
        super(
          memeList == null ? const MemeListBlocState.loading() : MemeListBlocState.idle(memeList: memeList),
        );

  @override
  Stream<MemeListBlocState> mapEventToStates(MemeListBlocEvent event) => switch (event) {
        MemeListBlocEventRefresh event => _refresh(event),
        MemeListBlocEventAdd event => _add(event),
        MemeListBlocEventRemove event => _remove(event),
      }
          .distinct();

  Stream<MemeListBlocState> _refresh(MemeListBlocEventRefresh event) async* {
    yield state.toLoading();

    try {
      final memeList = await _repository.findAll().toSet();
      yield state.toIdle(memeList: memeList);
    } on Object catch (e) {
      yield state.toError(error: e);
      rethrow;
    }
  }

  Stream<MemeListBlocState> _add(MemeListBlocEventAdd event) async* {
    yield state.toLoading();

    try {
      final memeList = MemeList.of(state.memeListOrThrow)..add(event.meme);
      await _repository.insert(event.meme);
      yield state.toIdle(memeList: memeList);
    } on Object catch (e) {
      yield state.toError(error: e);
      rethrow;
    }
  }

  Stream<MemeListBlocState> _remove(MemeListBlocEventRemove event) async* {
    yield state.toLoading();

    try {
      final memeList = MemeList.of(state.memeListOrThrow)..remove(event.meme);
      await _repository.delete(event.meme);
      yield state.toIdle(memeList: memeList);
    } on Object catch (e) {
      yield state.toError(error: e);
      rethrow;
    }
  }
}

Never _throwMemeListIsNull() => throw ArgumentError.notNull('memeList');
