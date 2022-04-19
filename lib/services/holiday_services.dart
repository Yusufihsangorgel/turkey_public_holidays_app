import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:resmi_tatiller/constants/holiday_constants.dart';
import 'package:resmi_tatiller/models/holiday_model.dart';

class HolidayServices {
  Future<List<Holiday>> getHoliday() async {
    var dio = Dio();
    final response = await dio.get(baseUrl);
    final middleResponse = response.data;
    final json = middleResponse["resmitatiller"] as List;
    debugPrint(json.toString());
    final posts = json.map((e) => Holiday.fromJson(e)).toList();
    return posts;
  }
}
