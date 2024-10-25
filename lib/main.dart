import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


import 'app/app.dart';
import 'utils/bloc_observer.dart';
import 'utils/constants.dart';
import 'utils/helpers/cache_helper.dart';
import 'utils/helpers/dio_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  token = CacheHelper.getData(key: 'token');
  runApp(MyApp());
}

