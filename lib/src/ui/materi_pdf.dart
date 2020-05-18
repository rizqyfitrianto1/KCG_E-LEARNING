import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class MateriPDF extends StatefulWidget {
  final String title;
  MateriPDF(this.title);
  _MateriPDFState createState() => _MateriPDFState();
}

class _MateriPDFState extends State<MateriPDF> {
  String pdfasset = "assets/documentTest.pdf";
  PDFDocument _doc;

  @override
  void initState() {
    super.initState();
    _initPDF();
  }

  _initPDF() async {
    final doc = await PDFDocument.fromAsset(pdfasset);
    setState(() {
      _doc = doc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PDFViewer(document: _doc,
      indicatorBackground: Color(0xFF026A98),
      showPicker: false,
      ),
    );
  }
}
