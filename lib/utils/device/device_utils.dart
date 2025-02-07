import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

//get bottom nav bar height
  static double getBottomNavBarHeight() {
    return kBottomNavigationBarHeight;
  }

  // Get screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Get screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Check if device is in landscape mode
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  // Check if device is a tablet
  static bool isTablet(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide >= 600;
  }

  // Check if device has a notch (SafeArea top padding greater than 0)
  static bool hasNotch(BuildContext context) {
    return MediaQuery.of(context).padding.top > 0;
  }

  // Check if device is running on Android
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // Check if device is running on iOS
  static bool isIOS() {
    return Platform.isIOS;
  }

  // Check if device is running on the Web
  static bool isWeb() {
    return kIsWeb;
  }

  // Get pixel density (useful for high-resolution images)
  static double getDevicePixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  // Check if dark mode is enabled
  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  // Check internet connectivity (returns true if connected)
  static Future<bool> isConnectedToInternet() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  // Provide haptic feedback (vibration on user actions)
  static void provideHapticFeedback() {
    HapticFeedback.mediumImpact();
  }

  static getAppBarHeight(BuildContext context) {
    // Get the platform's default AppBar height
    final appBar = AppBar();
    final appBarHeight = appBar.preferredSize.height;

    // Adjust for platform-specific differences (e.g., iOS has a taller AppBar)
    final platform = Theme.of(context).platform;
    if (platform == TargetPlatform.iOS) {
      return appBarHeight + MediaQuery.of(context).padding.top;
    } else {
      return appBarHeight;
    }
  }
}

void launchURL(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'couldnot launch $url';
  }
}
