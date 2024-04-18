import 'package:electricharger/app/api/repository/poi_repository.dart';
import 'package:electricharger/app/api/response/poi_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

final flMapProvider = ChangeNotifierProvider((ref) => FlMapProvider());

class FlMapProvider extends ChangeNotifier {
  bool isLoading = true;
  final _mapController = MapController();
  final repository = PoiRepository();
  final location = Location();
  LatLng? currentLocation;
  LocationData? _locationData;
  List<PoiModel?>? poiModel;

  MapController get mapController => _mapController;
  LocationData? get locationData => _locationData;

  void onMyLocation() async {
    try {
      poiModel = await repository.fetchPoi();
      notifyListeners();
    } catch (e) {
      "Exception: ${e.toString()} onMyLocation".logger;
    }
    _locationData = await location.getLocation();
    if (_locationData != null) {
      currentLocation = LatLng(
        _locationData!.latitude!,
        _locationData!.longitude!,
      );
      _mapController.move(currentLocation!, 13);
      notifyListeners();
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> setMyLocation() async {
    isLoading = true;
    notifyListeners();
    final curr = await location.getLocation();
    currentLocation = LatLng(
      curr.latitude!,
      curr.longitude!,
    );
    _mapController.move(currentLocation!, 13);
    isLoading = false;
    notifyListeners();
  }
}