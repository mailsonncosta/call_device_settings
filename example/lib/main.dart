import 'dart:async';

import 'package:call_device_settings/call_device_settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _callDeviceSettingsPlugin = const CallDeviceSettings();

  @override
  void initState() {
    super.initState();
    // initPlatformState();
  }

  // // Platform messages are asynchronous, so we initialize in an async method.
  // Future<void> initPlatformState() async {
  //   bool platformVersion;
  //   // Platform messages may fail, so we use a try/catch PlatformException.
  //   // We also handle the message potentially returning null.
  //   try {
  //     platformVersion =
  //         await _callDeviceSettingsPlugin.callNativeSettings(path: SettingsPathEnum.date);
  //   } on PlatformException {
  //     platformVersion = 'Failed to get platform version.';
  //   }
  //
  //   // If the widget was removed from the tree while the asynchronous platform
  //   // message was in flight, we want to discard the reply rather than calling
  //   // setState to update our non-existent appearance.
  //   if (!mounted) return;
  //
  //   setState(() {
  //     _platformVersion = platformVersion;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Call device settings example app'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              switch (CallDeviceSettings.shared) {
                case CallDeviceSettings.android():
                  return _buildAndroidList(const CallDeviceSettingsAndroid());
                case CallDeviceSettings.iOS():
                  return _buildIOSList(const CallDeviceSettingsIos());
                default:
                  return SizedBox.fromSize();
              }
            },
          ),
        ),
      ),
    );
  }

  Column _buildAndroidList(CallDeviceSettingsAndroid settings) {
    final List<SettingsButtonData> settingsButtonList = [
      SettingsButtonData(
          settingsCall: settings.wifi(
              () => {debugPrint("Tap on button, going to Wi-Fi settings")}),
          text: "Open wifi"),
      SettingsButtonData(
          settingsCall: settings.appSettings(
              () => {debugPrint("Tap on button, going to device settings")}),
          text: "Open device settings"),
    ];

    return Column(
      children: _buildCalls(settingsButtonList),
    );
  }

  Column _buildIOSList(CallDeviceSettingsIos settings) {
    final List<SettingsButtonData> settingsButtonList = [
      SettingsButtonData(
          settingsCall: settings.wifi(
              () => {debugPrint("Tap on button, going to Wi-Fi settings")}),
          text: "Open wifi"),
      SettingsButtonData(
          settingsCall: settings.settings(
              () => {debugPrint("Tap on button, going to device settings")}),
          text: "Open device settings"),
    ];

    return Column(
      children: _buildCalls(settingsButtonList),
    );
  }

  List<Widget> _buildCalls(List<SettingsButtonData> calls) {
    List<Widget> widgetForCalls = [];
    for (var call in calls) {
      widgetForCalls.add(
        _buttonTestWidget(call),
      );
    }
    return widgetForCalls;
  }

  Widget _buttonTestWidget(SettingsButtonData buttonData) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {
            buttonData.settingsCall;
          },
          child: Text(buttonData.text),
        ),
      ],
    );
  }
}

class SettingsButtonData {
  final Future<bool> settingsCall;
  final String text;

  SettingsButtonData({
    required this.settingsCall,
    required this.text,
  });
}
