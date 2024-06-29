class DocumentModel {
  final String? docTitle;
  final String? docUrl;

  DocumentModel(this.docTitle, this.docUrl);

  static List<DocumentModel> docList = [
    DocumentModel(
      'لائحة علاج العاملين بالكهرباء',
      'https://drive.google.com/file/d/1zwTYC9SXsGi1y4zbrecbq481j1kctkPL/view',
    )
  ];
}
