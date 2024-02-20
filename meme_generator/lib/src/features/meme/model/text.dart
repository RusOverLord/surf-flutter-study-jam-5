import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_generator/src/features/meme/model/text_style.dart';

part 'text.freezed.dart';

@freezed
class Text with _$Text {
  const factory Text({
    required String value,
    required TextStyle style,
  }) = _Text;
}
