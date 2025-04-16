import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_meta_widget.dart' show EditarMetaWidget;
import 'package:flutter/material.dart';

class EditarMetaModel extends FlutterFlowModel<EditarMetaWidget> {
  ///  Local state fields for this component.

  DateTime? dataEntrega;

  ///  State fields for stateful widgets in this component.

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  // State field(s) for txtDescricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;
  // State field(s) for prioridade widget.
  String? prioridadeValue;
  FormFieldController<String>? prioridadeValueController;
  // State field(s) for status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  // State field(s) for Slider widget.
  double? sliderValue;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();
  }
}
