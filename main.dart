import 'dart:io';
import 'package:desafioDart/functions.dart';
import 'package:desafioDart/class.dart';
import 'package:desafioDart/conversoes.dart';
import 'package:desafioDart/menu.dart';

void main() async{
  // Lê todos os arquivos do diretório
  final arquivos = Directory(r'C:\clima\sensores').listSync();
  // Lista para adicionar todos arquivos CSV como String
  List<String> listaArquivos = await paraString(arquivos);
  // Lista para armazenar os dados como objetos MedidaClimatica
  Map<String, List<MedidaClimatica>> dados = await preencherMapa(listaArquivos, arquivos);
  exibirMenu();
  obterOpcao();
}