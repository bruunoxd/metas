import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'editar_meta_model.dart';
export 'editar_meta_model.dart';

class EditarMetaWidget extends StatefulWidget {
  const EditarMetaWidget({
    super.key,
    required this.receberMetas,
  });

  final MetasRow? receberMetas;

  @override
  State<EditarMetaWidget> createState() => _EditarMetaWidgetState();
}

class _EditarMetaWidgetState extends State<EditarMetaWidget> {
  late EditarMetaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarMetaModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dataEntrega = widget.receberMetas?.entrega;
      safeSetState(() {});
    });

    _model.txtTituloTextController ??=
        TextEditingController(text: widget.receberMetas?.titulo);
    _model.txtTituloFocusNode ??= FocusNode();

    _model.txtDescricaoTextController ??=
        TextEditingController(text: widget.receberMetas?.descricao);
    _model.txtDescricaoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 620.0,
      decoration: BoxDecoration(
        color: Color(0xFF34353C),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 60.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  'EDITAR META',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: TextFormField(
                controller: _model.txtTituloTextController,
                focusNode: _model.txtTituloFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'TÍTULO ',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                  hintText: 'Digite o título da meta',
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).success,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Color(0xFFABABAE),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                validator: _model.txtTituloTextControllerValidator
                    .asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: TextFormField(
                controller: _model.txtDescricaoTextController,
                focusNode: _model.txtDescricaoFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'DESCRIÇÃO',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                  hintText: 'Digite a descrição da meta',
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).success,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Color(0xFFABABAE),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                maxLines: 4,
                validator: _model.txtDescricaoTextControllerValidator
                    .asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: FlutterFlowDropDown<String>(
                controller: _model.prioridadeValueController ??=
                    FormFieldController<String>(
                  _model.prioridadeValue ??= widget.receberMetas?.prioridade,
                ),
                options: ['ALTA', 'MÉDIA', 'BAIXA'],
                onChanged: (val) =>
                    safeSetState(() => _model.prioridadeValue = val),
                height: 50.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Selecione a prioridade',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                fillColor: Color(0xFFABABAE),
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).secondaryText,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: FlutterFlowDropDown<String>(
                controller: _model.statusValueController ??=
                    FormFieldController<String>(
                  _model.statusValue ??= widget.receberMetas?.status,
                ),
                options: ['NÃO INICIADO', 'INICIADO', 'COMPLETO'],
                onChanged: (val) =>
                    safeSetState(() => _model.statusValue = val),
                height: 50.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                hintText: 'Selecione o status',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                fillColor: Color(0xFFABABAE),
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).secondaryText,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ),
            Slider.adaptive(
              activeColor: Color(0xFF03EC2D),
              inactiveColor: FlutterFlowTheme.of(context).alternate,
              min: 0.0,
              max: 100.0,
              value: _model.sliderValue ??= valueOrDefault<double>(
                widget.receberMetas?.progresso?.toDouble(),
                0.0,
              ),
              label: _model.sliderValue?.toStringAsFixed(0),
              divisions: 100,
              onChanged: (newValue) {
                newValue = double.parse(newValue.toStringAsFixed(0));
                safeSetState(() => _model.sliderValue = newValue);
              },
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                final _datePickedDate = await showDatePicker(
                  context: context,
                  initialDate: (_model.dataEntrega ?? DateTime.now()),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2050),
                  builder: (context, child) {
                    return wrapInMaterialDatePickerTheme(
                      context,
                      child!,
                      headerBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      headerForegroundColor: FlutterFlowTheme.of(context).info,
                      headerTextStyle:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      pickerBackgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      pickerForegroundColor:
                          FlutterFlowTheme.of(context).primaryText,
                      selectedDateTimeBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      selectedDateTimeForegroundColor:
                          FlutterFlowTheme.of(context).info,
                      actionButtonForegroundColor:
                          FlutterFlowTheme.of(context).primaryText,
                      iconSize: 24.0,
                    );
                  },
                );

                if (_datePickedDate != null) {
                  safeSetState(() {
                    _model.datePicked = DateTime(
                      _datePickedDate.year,
                      _datePickedDate.month,
                      _datePickedDate.day,
                    );
                  });
                } else if (_model.datePicked != null) {
                  safeSetState(() {
                    _model.datePicked = _model.dataEntrega;
                  });
                }
                _model.dataEntrega = _model.datePicked;
                safeSetState(() {});
              },
              child: Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xFFABABAE),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          dateTimeFormat(
                            "d/M/y",
                            _model.dataEntrega,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          'Selecione a data entrega',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.edit_calendar,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await MetasTable().update(
                    data: {
                      'titulo': _model.txtTituloTextController.text,
                      'descricao': _model.txtDescricaoTextController.text,
                      'prioridade': _model.prioridadeValue,
                      'status': _model.statusValue,
                      'progresso': (_model.sliderValue!).ceil(),
                      'entrega': supaSerialize<DateTime>(_model.dataEntrega),
                    },
                    matchingRows: (rows) => rows.eqOrNull(
                      'id',
                      widget.receberMetas?.id,
                    ),
                  );
                  Navigator.pop(context);
                },
                text: 'Editar Meta',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).accent1,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                var confirmDialogResponse = await showDialog<bool>(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('ATENÇÃO'),
                          content:
                              Text('Você realmente deseja excluir a meta?'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext, false),
                              child: Text('NÃO'),
                            ),
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext, true),
                              child: Text('SIM'),
                            ),
                          ],
                        );
                      },
                    ) ??
                    false;
                if (confirmDialogResponse) {
                  await MetasTable().delete(
                    matchingRows: (rows) => rows.eqOrNull(
                      'id',
                      widget.receberMetas?.id,
                    ),
                  );
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('INFORMAÇÃO'),
                        content: Text('Meta excluida com sucesso !'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                  Navigator.pop(context);
                } else {
                  return;
                }
              },
              text: 'Excluir Meta',
              options: FFButtonOptions(
                width: double.infinity,
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFF4F0C17),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ].divide(SizedBox(height: 8.0)).around(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
