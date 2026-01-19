import 'package:flutter/material.dart';
import 'smart_disconnection_reminder.dart';

class NetworkWrapper extends StatefulWidget {
  final Widget child;
  final Widget ErrorPage;

  const NetworkWrapper({
    super.key,
    required this.child,
    required this.ErrorPage,
  });

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
    return _isConnected ? widget.child : widget.ErrorPage;
  }
}
