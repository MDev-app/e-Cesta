import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

double subtotalProduto(
  double? preco,
  int? quantidade1,
  int? quantidade2,
) {
  final double _Preco = preco ?? 0.00;
  final int _Quantidade1 = quantidade1 ?? 0;
  final int _Quantidade2 = quantidade2 ?? 0;

  return (_Quantidade1 + _Quantidade2) * _Preco;
}

double? subProduto(
  double? preco,
  int? quantidade,
) {
  final double _Preco = preco ?? 0.00;
  final int _Quantidade = quantidade ?? 0;
  return (_Preco * _Quantidade);
}

int quantList(List<int>? quantidade) {
  // soma quantidade da lista nullsafe
  // some quantidade da lista
  if (quantidade != null) {
    int qtd = 0;
    quantidade.forEach((item) {
      qtd += item;
    });

    return qtd;
  } else {
    return 0;
  }
}

double subitrairSubtotal(
  double? preco,
  double? subtotal,
) {
  double _Preco = preco ?? 0.00;
  double _Subtotal = subtotal ?? 0.00;

  return _Subtotal - _Preco;
}

double resuList(List<double>? valor) {
  // somar os valores e se for vazio a lista retorna 0
  // soma valor da lista nullsafe
  // some valor da lista
  // somar os valores e se for vazia a lista retornar 0
  if (valor == null || valor.isEmpty) {
    return 0;
  }
  if (valor[0] == 0) {
    return 0;
  } else {
    double result = 0;
    for (final val in valor) {
      result += val;
    }
    return result;
  }
}

double somarSubtotal(
  double? preco,
  double? subtotal,
) {
  double _Preco = preco ?? 0.00;
  double _Subtotal = subtotal ?? 0.00;

  return _Subtotal + _Preco;
}

double totalPedido(
  List<double>? valor,
  double? taxaEntrega,
) {
  // some valor da lista + taxaEntrega e se o valor da lista for vazio retornar 0
  if (valor == null) {
    return 0.0;
  } else {
    return valor.isNotEmpty
        ? valor.reduce((value, element) => value + element) + taxaEntrega!
        : 0.0;
  }
}

List<NegocioRecord>? obterNegociosDistMaximanegocios(
  List<NegocioRecord> negocios,
  LatLng userLocal,
  double maxDistancia,
) {
// First create some emptyList
  List<NegocioRecord> placesList = [];
  List<double> listKm = [];
  double lat1 = userLocal.latitude;
  double lon1 = userLocal.longitude;
  // This iterates through the single documents "places" in the List
  for (NegocioRecord place in negocios) {
    double lat2 = place.posicao!.latitude;
    double lon2 = place.posicao!.longitude;
    // This is doing math for distance calculations on the surface of a spheroid
    var c = math.cos;
    var p = 0.017453292519943295;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    // This is getting us the distance
    var d = (12742 * math.asin(math.sqrt(a)));
    String inString = d.toStringAsFixed(2); // '2.35'
    double inDouble = double.parse(inString);
    listKm.add(inDouble);
    // Sort the documents that will be returned by distance
    listKm.sort();
    int listKmIndex = listKm.indexWhere((dist) => dist == inDouble);
    // Check if the document we are currently processing is no farther away from userGeo than we defined as max.
    if (inDouble <= maxDistancia!) {
      // If its within our radius, add it to the list of places documents that will be returned
      placesList.insert(listKmIndex, place);
    }
  }
  return placesList;
}

double arredondarNumero(double? numero) {
  // 4343.3434 the result is rounded and
  var n = (numero ?? 0.0) ?? 0.0;
  if (n > 0 && n < 1000) return n.roundToDouble();
  var dividendo = n / 1000.0;
  int arredondar = dividendo.ceil();
  return arredondar * 1000;
}

double? obterDistanciadeDoisPontos(
  LatLng? posicaoUm,
  LatLng? posicaoDois,
) {
// calculate the distance between two points on a spheroid and return distance as double
  var p = 0.017453292519943295;
  var a = 0.5 -
      math.cos((posicaoDois!.latitude - posicaoUm!.latitude) * p) / 2 +
      math.cos(posicaoUm.latitude * p) *
          math.cos(posicaoDois.latitude * p) *
          (1 - math.cos((posicaoDois.longitude - posicaoUm.longitude) * p)) /
          2;
  double result = 12742 * math.asin(math.sqrt(a));
  // uncomment the line below if you want the result to be rounded
  double finalResult = result.roundToDouble();
  // if you uncommented the line above, you have to replace result in the line below with finalResult
  return finalResult;
}

String userLocationGetString(LatLng? usersLocation) {
  // Add your function code here!
  if (usersLocation == null ||
      (usersLocation.latitude == 0 && usersLocation.longitude == 0)) {
    return "LatLng(40.8295538, -73.9386429)}";
  }
  String location = "${usersLocation.latitude}, ${usersLocation.longitude}";
  return location;
}
