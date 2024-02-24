import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:xth_assesment/wrapper/home_response_wrapper.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  loadHomeRespone() {
    try {
      emit(LoadingHome());
      _loadLocalJson().then((jsonData) {
        final parsedJson = jsonDecode(jsonData);
        HomeResponseWrapper homeResponseWrapper =
            HomeResponseWrapper.fromJson(parsedJson);
        emit(SuccessHome(homeResponseWrapper));
      });
    } catch (e) {
      emit(FailureHome(e.toString()));
      log('error $e');
    }
  }

  Future<String> _loadLocalJson() async {
    return await rootBundle.loadString('assets/response.json');
  }
}
