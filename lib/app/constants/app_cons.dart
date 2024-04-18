library app_cons;

part 'app_string.dart';

final class AppCons {
  static final string = AppString._();

  final String BASE_URL = "https://api.openchargemap.io/v3";
  final String API_KEY = "your api key here";
  final String packageName = "com.ao.electricharger";
  final String mapUrlTemplate = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
}