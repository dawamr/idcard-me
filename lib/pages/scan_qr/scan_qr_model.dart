import '/flutter_flow/flutter_flow_util.dart';
import 'scan_qr_widget.dart' show ScanQrWidget;
import 'package:flutter/material.dart';

class ScanQrModel extends FlutterFlowModel<ScanQrWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  var resultQr = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
