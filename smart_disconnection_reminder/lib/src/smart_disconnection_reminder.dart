import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkMonitor {
  static final NetworkMonitor _instance = NetworkMonitor._internal();

  factory NetworkMonitor() => _instance;

  NetworkMonitor._internal();

  final StreamController<bool> _controller = StreamController<bool>.broadcast();

  Stream<bool> get networkStream => _controller.stream;

  bool _isConnected = true;

  void start() async {
    // 🔹 Initial check
    await _checkInternet();

    // 🔹 Listen for network changes
    Connectivity().onConnectivityChanged.listen((_) async {
      await _checkInternet();
    });
  }

  Future<void> _checkInternet() async {
    final hasInternet = await InternetConnectionChecker().hasConnection;

    if (_isConnected != hasInternet) {
      _isConnected = hasInternet;
      _controller.add(hasInternet);
    }
  }

  void dispose() {
    _controller.close();
  }
}
