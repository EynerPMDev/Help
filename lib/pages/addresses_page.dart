import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/model/scanner_model.dart';
import 'package:qr_scanner/providers/scan_list_provider.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scannerProvider = Provider.of<ScanListProvider>(context);
    scannerProvider.cargarScanPorTipo("http");
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
