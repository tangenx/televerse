// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sent_guest_message.freezed.dart';
part 'sent_guest_message.g.dart';

/// Describes an inline message sent by a guest bot.
@freezed
abstract class SentGuestMessage with _$SentGuestMessage {
  /// Creates a [SentGuestMessage]
  const factory SentGuestMessage({
    /// Identifier of the sent inline message.
    @JsonKey(name: 'inline_message_id') required String inlineMessageId,
  }) = _SentGuestMessage;

  /// Creates a [SentGuestMessage] from a JSON map
  factory SentGuestMessage.fromJson(Map<String, dynamic> json) =>
      _$SentGuestMessageFromJson(json);
}
