import 'package:dio/dio.dart';

import '../constant/api_constant.dart';
class ApiService {
 Dio dio;
 ApiService():dio=Dio(
   BaseOptions(
     baseUrl: ApiConstant.baseUrl,
     connectTimeout: const Duration(seconds: 10),
     receiveTimeout: const Duration(seconds: 10),
     headers: {
       'Content-Type': 'application/json',
     },
   ),
 );


}