import 'package:electricharger/app/api/response/poi_model.dart';
import 'package:electricharger/ui/components/fl_sheet/services/url_launcher_service.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:maps_launcher/maps_launcher.dart';

class FlSheet extends StatelessWidget {
  final PoiModel? model;
  const FlSheet({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    if (model == null) return const SizedBox.shrink();
    return Container(
      width: context.width,
      margin: 8.padding,
      padding: 12.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (model?.addressInfo?.title?.trim().isEmpty == false)
            Text(model!.addressInfo?.title ?? "", style: context.labelLarge),
          if (model?.addressInfo?.addressLine1?.trim().isEmpty == false)
            Text(model!.addressInfo!.addressLine1!, style: context.labelLarge),
          if (model?.addressInfo?.addressLine2?.trim().isEmpty == false)
            Text(model!.addressInfo!.addressLine2!, style: context.labelLarge),
          if (model?.addressInfo?.town?.trim().isEmpty == false)
            Text(
              "${model!.addressInfo!.town} / ${model!.addressInfo!.stateOrProvince ?? "--"}".toUpperCase(),
              style: context.titleLarge,
            ),
          const Divider(),
          if (model?.addressInfo?.contactTelephone1?.trim().isEmpty == false)
            TextButton(
              onPressed: () => UrlLauncherService.makePhoneCall(
                  model!.addressInfo!.contactTelephone1!),
              child: Row(
                children: [
                  const Icon(Icons.phone),
                  4.width,
                  Text(
                    model!.addressInfo!.contactTelephone1!,
                    style: context.labelLarge,
                  ),
                ],
              ),
            ),
          if (model?.addressInfo?.contactEmail?.trim().isEmpty == false)
            TextButton(
              onPressed: () => UrlLauncherService.sendEmail(
                  model!.addressInfo!.contactEmail, "", ""),
              child: Row(
                children: [
                  const Icon(Icons.mail),
                  4.width,
                  Text(
                    model!.addressInfo!.contactEmail!,
                    style: context.labelLarge,
                  ),
                ],
              ),
            ),
          if (model?.addressInfo?.relatedUrl?.trim().isEmpty == false)
            TextButton(
              onPressed: () =>
                  UrlLauncherService.openUrl(model!.addressInfo!.relatedUrl!),
              child: Row(
                children: [
                  const Icon(Icons.web),
                  4.width,
                  Text(
                    model!.addressInfo!.relatedUrl!,
                    style: context.labelLarge,
                  ),
                ],
              ),
            ),
          24.height,
          ElevatedButton(
                  onPressed: () async {
                    await MapsLauncher.launchCoordinates(
                        model!.addressInfo!.latitude!,
                        model!.addressInfo!.longitude!,
                        model!.addressInfo!.title);
                  },
                  child: const Text("Haritada Aç"))
              .width(double.maxFinite)
              .disableMaterial3,
        ],
      ),
    );
  }
}
