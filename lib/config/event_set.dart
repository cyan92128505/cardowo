// ignore_for_file: constant_identifier_names

import 'dart:convert';

class EventSet {
  static const READY = 'charon_ready';
  static const READY_INVOKE = 'charon_ready_invoke';
  static const EVENT_CHANNEL = 'charon_event_channel';
  static const DEEP_LINK = 'charon_deep_link';
  static const SACN = 'charon_scan';
  static const NOTIFICATION = 'charon_notification';
  static const VIBRATE = 'charon_vibrate';

  static Map<String, dynamic> decode(String nativeMessage) {
    return jsonDecode(nativeMessage);
  }
}
