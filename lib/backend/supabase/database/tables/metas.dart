import '../database.dart';

class MetasTable extends SupabaseTable<MetasRow> {
  @override
  String get tableName => 'metas';

  @override
  MetasRow createRow(Map<String, dynamic> data) => MetasRow(data);
}

class MetasRow extends SupabaseDataRow {
  MetasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MetasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get progresso => getField<int>('progresso');
  set progresso(int? value) => setField<int>('progresso', value);

  String? get prioridade => getField<String>('prioridade');
  set prioridade(String? value) => setField<String>('prioridade', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get entrega => getField<DateTime>('entrega');
  set entrega(DateTime? value) => setField<DateTime>('entrega', value);
}
