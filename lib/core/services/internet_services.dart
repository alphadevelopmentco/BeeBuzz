// ignore_for_file: depend_on_referenced_packages

// Dart imports:
import 'dart:async';

// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  final StreamController<bool> _connectivityController =
      StreamController<bool>();

  Stream<bool> get connectivityStream => _connectivityController.stream;

  ConnectivityService() {
    _connectivity.onConnectivityChanged.listen(_updateConnectivityStatus);
    _initConnectivity();
  }

  Future<void> _initConnectivity() async {
    var initialConnectivity = await _connectivity.checkConnectivity();
    _updateConnectivityStatus(initialConnectivity);
  }

  void _updateConnectivityStatus(ConnectivityResult result) {
    bool isConnected = result != ConnectivityResult.none;
    _connectivityController.add(isConnected);
  }

  void dispose() {
    _connectivityController.close();
  }
}
