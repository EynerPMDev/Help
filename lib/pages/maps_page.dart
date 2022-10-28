import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/model/scanner_model.dart';
import 'package:qr_scanner/providers/scan_list_provider.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scannerProvider = Provider.of<ScanListProvider>(context);
    scannerProvider.cargarScanPorTipo("geo");
    List<ScannerModel> scans = scannerProvider.scans;

    return ListView.builder(
        itemCount: scans.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(scans[index].valor),
          );
        });
  }
}
