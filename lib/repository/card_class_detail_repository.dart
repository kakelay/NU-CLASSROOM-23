import 'package:nuclassroom23/models/response/card_class_detail.dart';

import '../data/network/network_api_service.dart';
import '../res/app_url.dart';

class CardClassDetailRepository {
  final NetworkApiService _apiService = NetworkApiService();

  Future<CardClassDetail> getCardClassDetailList() async {
    try {
      dynamic response =
          await _apiService.getApiRespones(AppUrl.allCardclassdetail);
      return response = CardClassDetail.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  // Future<ImageModel> uploadImage(file) async {
  //   try{
  //     dynamic response = await _apiService.uploadImage(AppUrl.uploadImage, file);
  //     // return response =ImageModel.fromJson(response);
  //     return response;
  //   }catch(e){
  //     rethrow;
  //   }
  // }
}
