import 'dart:io';

import 'package:local_database/local_database.dart' as local;
import 'package:meme_generator/src/features/meme/model/model.dart';

class MemeRepository {
  const MemeRepository({
    required local.LocalDatabase database,
  }) : _db = database;

  final local.LocalDatabase _db;

  local.Memes get _memes => _db.memes;

  Future<Meme> findById(MemeId id) async {
    final meme = await _db.findMemeById(id).getSingle();

    return meme.toModel();
  }

  Stream<Meme> findAll() async* {
    final list = await _db.select(_memes).get();

    for (var e in list) {
      yield e.toModel();
    }
  }

  Future<void> insert(Meme meme) => _db.into(_memes).insert(meme.toLocal());

  Future<void> update(Meme meme) => _db.into(_memes).insertOnConflictUpdate(meme.toLocal());

  Future<void> delete(Meme meme) => _db.delete(_memes).delete(meme.toLocal());
}

extension on Meme {
  local.Meme toLocal() {
    final (imageType, imageSource) = switch (image) {
      ImageLocal(file: final file) => (local.ImageType.local, file.path),
      ImageRemote(url: final url) => (local.ImageType.remote, url.path),
    };

    return local.Meme(
      id: id,
      imageType: imageType,
      imageSource: imageSource,
      textValue: text.value,
      fontSize: text.style.fontSize,
    );
  }
}

extension on local.Meme {
  Meme toModel() => Meme(
        id: id,
        image: switch (imageType) {
          local.ImageType.local => Image.local(
              file: File(imageSource),
            ),
          local.ImageType.remote => Image.remote(
              url: Uri.parse(imageSource),
            ),
        },
        text: Text(
          value: textValue,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      );
}
