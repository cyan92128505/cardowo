import 'package:flutter/services.dart';

import 'package:cardowo/config/event_set.dart';

class ChannelService {
  EventChannel eventChannel = const EventChannel(EventSet.EVENT_CHANNEL);
  MethodChannel methodChannel = const MethodChannel(EventSet.READY);

  static final ChannelService _instance = ChannelService._();

  factory ChannelService() {
    return _instance;
  }

  ChannelService._();
}
