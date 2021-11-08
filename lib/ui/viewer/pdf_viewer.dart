import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:food_balancer/ui/viewer/pdf_view_controller.dart';
import 'package:get/get.dart';

class PdfGuideViewer extends StatelessWidget {
  late PdfViewController _taskController;

  @override
  Widget build(BuildContext context) {
    _taskController = Get.put(PdfViewController());
    return Scaffold(
      appBar: AppBar(title: Text("Pedoman Gizi Seimbang"),),
      body: Center(
        child: Obx(()=> _taskController.isLoading?Center(child: CircularProgressIndicator()):PDFViewer(
          document: _taskController.getDocument,
          zoomSteps: 1,
        )),
      ),
    );
  }
}