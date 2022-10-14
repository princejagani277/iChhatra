import 'package:flutter/material.dart';
import 'package:ichhatra/Services/rest_api.dart';

class InterceptorApi{
  late BuildContext _context;
  late RestApi restApi;

  InterceptorApi({context}) {
    _context = context;
    restApi = RestApi(context: context);
  }

}