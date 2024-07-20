import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:aedc_clinic/features/home/data/models/document_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class KnowYourRightsPdfReader extends StatefulWidget {
  KnowYourRightsPdfReader(this.doc, {super.key});
  DocumentModel doc;

  @override
  State<KnowYourRightsPdfReader> createState() =>
      _KnowYourRightsPdfReaderState();
}

class _KnowYourRightsPdfReaderState extends State<KnowYourRightsPdfReader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SimpleAppbar(),
        backgroundColor: Colors.transparent,
        title: Text(widget.doc.docTitle!),
        centerTitle: true,
      ),
      body: SizedBox(
        child: SfPdfViewer.network(widget.doc.docUrl!),
      ),
    );
  }
}
