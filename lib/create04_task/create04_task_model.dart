import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create04_task_widget.dart' show Create04TaskWidget;
import 'package:flutter/material.dart';

class Create04TaskModel extends FlutterFlowModel<Create04TaskWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - getCurrentLocationName] action in UpdateLoc widget.
  String? currentLocationName;
  // Stores action output result for [Backend Call - API (uploadFile)] action in Button widget.
  ApiCallResponse? imageurl;
  // Stores action output result for [Backend Call - API (getUser)] action in Button widget.
  ApiCallResponse? userDetails;
  // Stores action output result for [Custom Action - latitude] action in Button widget.
  String? latitude;
  // Stores action output result for [Custom Action - longitude] action in Button widget.
  String? longitude;
  // Stores action output result for [Backend Call - API (Addcage)] action in Button widget.
  ApiCallResponse? addedcage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
