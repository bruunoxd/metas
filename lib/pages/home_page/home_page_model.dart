import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  Color corVerde = Color(4278271759);

  Color corLaranja = Color(4290724109);

  Color corVermelho = Color(4294313478);

  List<String> listaFiltro = [];
  void addToListaFiltro(String item) => listaFiltro.add(item);
  void removeFromListaFiltro(String item) => listaFiltro.remove(item);
  void removeAtIndexFromListaFiltro(int index) => listaFiltro.removeAt(index);
  void insertAtIndexInListaFiltro(int index, String item) =>
      listaFiltro.insert(index, item);
  void updateListaFiltroAtIndex(int index, Function(String) updateFn) =>
      listaFiltro[index] = updateFn(listaFiltro[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
