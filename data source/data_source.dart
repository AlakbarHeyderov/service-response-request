import 'package:alo141/core/service/service.dart';

class ActiveRouteDataSource {
  Future<MyExampleJsonModel?> getCurrentLocationBus() async {
    final api = Api();

    var response = await api.get('myExampleEndPoint');

    if (response.statusCode == 200) {
      if (response.data['success'] == 200) {
        return MyExampleJsonModel.fromJson(response.data);
      }
    }
  }
}
