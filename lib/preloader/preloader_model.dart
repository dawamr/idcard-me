import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'preloader_widget.dart' show PreloaderWidget;
import 'package:flutter/material.dart';

class PreloaderModel extends FlutterFlowModel<PreloaderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getProfile)] action in preloader widget.
  ApiCallResponse? apiResultProfile;

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
