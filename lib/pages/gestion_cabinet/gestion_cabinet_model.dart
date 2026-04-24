import '/flutter_flow/flutter_flow_util.dart';
import 'gestion_cabinet_widget.dart' show GestionCabinetWidget;
import 'package:flutter/material.dart';

class GestionCabinetModel extends FlutterFlowModel<GestionCabinetWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
