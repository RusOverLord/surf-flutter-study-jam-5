import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

@freezed
sealed class Image with _$Image {
  const factory Image.local({
    required File file,
  }) = ImageLocal;

  const factory Image.remote({
    required Uri url,
  }) = ImageRemote;
}
