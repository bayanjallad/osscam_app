import 'package:dio/dio.dart';

abstract class coreService{
  Dio dio =Dio();
  late Response response;
}