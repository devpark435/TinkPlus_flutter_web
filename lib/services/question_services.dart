import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tinkplus_handover_web/model/guid_model.dart';

class GuidService {
  Future<QuestionModel> guidList() async {
    //api 호출을 위한 주소
    //http request의 결과 즉 api 호출의 결과를 받기 위한 변수

    String jsonString = await rootBundle.loadString('json/guid.json');

    final jsonResponse = json.decode(jsonString); //받은 정보를 json형태로 decode
    //받은 데이터정보를 필요한 형태로 저장한다.
    //weekWeather =

    return QuestionModel.fromJson(jsonResponse);
  }
}
