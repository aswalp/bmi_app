import 'package:flutter_riverpod/flutter_riverpod.dart';

final bmiProviderWeight = StateProvider<String>((ref) => "0");
final bmiProviderheight = StateProvider<String>((ref) => "0");

final bmiProvidertotal = StateProvider<String>((ref) => "0");

final switching = StateProvider<bool>((ref) => false);
final pagechanging = StateProvider<bool>((ref) => false);
