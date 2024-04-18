import 'package:electricharger/app/api/manager/api_manager.dart';
import 'package:electricharger/app/api/response/poi_model.dart';

final class PoiRepository {
  Future<List<PoiModel?>?> fetchPoi() async {
    final result = await ApiManager.dio.get('/poi');

    if (result.statusCode == 200) {
      if (result.data is List) {
        final list = result.data as List;
        return list.map((e) => PoiModel.fromJson(e)).toList();
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
