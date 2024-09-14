import 'package:dio/dio.dart';
import 'package:theam/core/models/prodect.dart';

class ProdectVM{
  Future<List<Prodects>?> getProdects() async{
    Dio d=Dio();
    Response  res = await d.get("https://fakestoreapi.com/products");
    List<Prodects>? allProdects = res.data?.map<Prodects>((e)=>Prodects.fromJson(e)).toList();
    return allProdects;
  }
}