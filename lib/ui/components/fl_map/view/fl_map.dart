import 'package:electricharger/app/constants/app_cons.dart';
import 'package:electricharger/assets.dart';
import 'package:electricharger/ui/components/fl_map/provider/fl_map_provider.dart';
import 'package:electricharger/ui/components/fl_sheet/view/fl_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grock/grock.dart';
import 'package:latlong2/latlong.dart';

class FlMap extends ConsumerStatefulWidget {
  const FlMap({super.key});

  @override
  ConsumerState<FlMap> createState() => _FlMapState();
}

class _FlMapState extends ConsumerState<FlMap> {
  @override
  void initState() {
    super.initState();
    ref.read(flMapProvider).onMyLocation.endOfFrame;
  }

  @override
  Widget build(BuildContext context) {
    final read = ref.read(flMapProvider);
    final watch = ref.watch(flMapProvider);
    return FlutterMap(
      mapController: read.mapController,
      options: const MapOptions(
        initialCenter: LatLng(39.9032599, 32.5979581),
        initialZoom: 11.0,
      ),
      children: [
        TileLayer(
          urlTemplate: AppCons().mapUrlTemplate,
          userAgentPackageName: AppCons().packageName,
          retinaMode: false,
        ),
        MarkerLayer(
          markers: [
            if (watch.currentLocation != null) ...[
              Marker(
                width: 52,
                height: 52,
                point: watch.currentLocation!,
                child: GestureDetector(
                  onTap: () {
                    Fluttertoast.showToast(msg: "Konumunuz");
                  },
                  child: SvgPicture.asset(
                    Assets.image.imMyLocationSVG,
                  ),
                ),
              ),
            ],
            if (watch.poiModel != null) ...[
              ...watch.poiModel!.map((e) {
                final point = LatLng(e?.addressInfo?.latitude ?? 0.0,
                    e?.addressInfo?.longitude ?? 0.0);
                return Marker(
                  point: point,
                  width: 52,
                  height: 52,
                  child: InkWell(
                    onDoubleTap: () => read.mapController.move(point, 16),
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      barrierColor: Colors.transparent,
                      enableDrag: true,
                      builder: (context) => FlSheet(model: e),
                    ),
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 52,
                      shadows: [
                        Shadow(
                          color: Colors.white54,
                          blurRadius: 12,
                        ),
                      ],
                    ),
                  ),
                );
              })
            ],
          ],
        ),
      ],
    );
  }
}
