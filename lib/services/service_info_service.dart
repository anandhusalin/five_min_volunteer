import 'dart:convert';

import 'package:bloc_volunteer_service/model/service_info_model.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';

class ServiceInfoService {
  Future<ServiceInfo> getServiceData() async {
    var response = await http
        .get(Uri.parse('https://volunteer.cyberfort.co.in/api/serviceInfo/48'));
    // Map<String, dynamic> map = json.decode(response.body);
    // print(map);
    print('GetServiceCalled');
    print('response');
    log(response.body);

    var data = jsonDecode(response.body);
    return ServiceInfo.fromJson(data);
  }
}
