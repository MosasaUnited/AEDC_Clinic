import 'package:aedc_clinic/features/home/data/models/document_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class KnowYourRightsPdfReader extends StatelessWidget {
  late DocumentModel? doc;

  KnowYourRightsPdfReader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(doc!.docTitle!),
      ),
      body: SizedBox(
        // Have To Add Pdf Viewer Package
        child: SfPdfViewer.network(doc!.docUrl!),
      ),
    );
  }
}
