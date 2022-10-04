import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:template_app/src/core/models/status_model.dart';

class BartolomejProvider {
  Future<StatusModel?> getStatus(String ip) async {
    //var url = "$ip/change_face?face=$faceId";
    var url = Uri(
      scheme: "http",
      host: ip,
      path: "status",
    );
    try {
      final resp = await http.get(url);

      return StatusModel.fromJson(jsonDecode(resp.body));
    } catch (e) {
      return null;
    }
  }

  Future<void> changeFace(String ip, String faceId) async {
    //var url = "$ip/change_face?face=$faceId";
    var url = Uri(
        scheme: "http",
        host: ip,
        path: "change_face",
        queryParameters: {"face": faceId});
    try {
      await http.get(url);
    } catch (e) {}
  }

  Future<void> changeBottomText(String ip, String bottomText) async {
    //var url = "$ip/change_face?face=$faceId";
    var url = Uri(
        scheme: "http",
        host: ip,
        path: "bottom_text",
        queryParameters: {"text": bottomText});
    try {
      await http.get(url);
    } catch (e) {}
  }

  Future<void> feed(String ip, int amount) async {
    //var url = "$ip/change_face?face=$faceId";
    var url = Uri(
        scheme: "http",
        host: ip,
        path: "feed",
        queryParameters: {"amount": amount.toString()});
    try {
      await http.get(url);
    } catch (e) {}
  }

  Future<void> saveIp(String ip) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('ip', ip);
  }

  Future<String> getBartolomejIP() async {
    final prefs = await SharedPreferences.getInstance();

    final String? ip = prefs.getString('ip');
    if (ip != null) {
      return ip;
    } else {
      return "error";
    }
  }
}
