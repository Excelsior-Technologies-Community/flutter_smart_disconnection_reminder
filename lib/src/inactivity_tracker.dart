import 'package:flutter/material.dart';
import '../network_error_page.dart';
import 'smart_disconnection_reminder.dart';

class NetworkWrapper extends StatefulWidget {
  final Widget child;

  const NetworkWrapper({super.key, required this.child});

  @override
  State<NetworkWrapper> createState() => _NetworkWrapperState();
}

class _NetworkWrapperState extends State<NetworkWrapper> {
  bool _isConnected = true;

  @override
  void initState() {
    super.initState();

    NetworkMonitor().start();
    NetworkMonitor().networkStream.listen((status) {
      if (mounted) {
        setState(() => _isConnected = status);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isConnected ? widget.child : const NetworkErrorPage();
  }
}
