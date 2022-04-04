import 'dart:convert';

import 'package:bloc_volunteer_service/model/service_info_model.dart';
import 'package:http/http.dart' as http;

class ServiceInfoService {
  static Future<ServiceInfo> getServiceInfoData() async {
    var response = await http
        .get(Uri.parse('https://volunteer.cyberfort.co.in/api/serviceInfo/48'));
    // Map<String, dynamic> map = json.decode(response.body);
    // print(map);
    print('response service info');
    print(response.body);

    var data = jsonDecode(response.body);
    return ServiceInfo.fromJson(data);
  }
}
