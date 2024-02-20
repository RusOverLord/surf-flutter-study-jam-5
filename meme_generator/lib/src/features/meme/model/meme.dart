import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_generator/src/features/meme/model/image.dart';
import 'package:meme_generator/src/features/meme/model/text.dart';

part 'meme.freezed.dart';

@freezed
class Meme with _$Meme {
  const factory Meme({
    required MemeId id,
    required Image image,
    required Text text,
  }) = _Meme;
}

typedef MemeId = int;
