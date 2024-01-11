// Create an Android Application which Manage Activity Lifecycle
// Stages and Showing Toast with Performing Different Stages.
import 'package:flutter/material.dart';

class AndroidPage extends StatefulWidget {
  @override
  AndroidPageState createState() => AndroidPageState();
}

class AndroidPageState extends State<AndroidPage> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  void showSnackBar(String message) {
    _scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 5),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    showSnackBar("App Lifecycle State: $state");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Activity Lifecycle'),
      ),
      body: Center(
        child: Text('Main activity.'),
      ),
    );
  }
}
