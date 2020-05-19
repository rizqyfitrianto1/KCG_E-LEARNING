import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class MateriPDF extends StatefulWidget {
  final String title;
  MateriPDF(this.title);
  _MateriPDFState createState() => _MateriPDFState();
}

class _MateriPDFState extends State<MateriPDF> {
  final String pdfUrl = "https://gahp.net/wp-content/uploads/2017/09/sample.pdf";
  String _localFile;

  @override
  void initState() {
    super.initState();
    loadPDF();
  }

  Future<String> loadPDF() async{
    var response = await http.get(pdfUrl);
    var dir = await getTemporaryDirectory();
    File file = new File(dir.path+"/data.pdf");
    await file.writeAsBytes(response.bodyBytes, flush: true);
    setState(() {
      _localFile = file.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _localFile !=null ? Container(
        child: PDFView(filePath: _localFile)
      )
      : Center(child: CircularProgressIndicator()),
    );
  }
}
