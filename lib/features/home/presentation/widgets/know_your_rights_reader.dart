import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../data/models/document_model.dart';

class KnowYourRightsPdfReader extends StatefulWidget {
  DocumentModel doc = DocumentModel('لائحة علاج العاملين بالكهرباء',
      'https://drive.google.com/file/d/1zwTYC9SXsGi1y4zbrecbq481j1kctkPL/view');

  KnowYourRightsPdfReader({super.key});

  @override
  State<KnowYourRightsPdfReader> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<KnowYourRightsPdfReader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.doc.docTitle!),
      ),
      body: SizedBox(
        child: SfPdfViewer.network(widget.doc.docUrl!),
      ),
    );
  }
}
