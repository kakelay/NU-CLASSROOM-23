import 'package:flutter/cupertino.dart';
import 'package:nuclassroom23/repository/card_class_detail_repository.dart';

import '../data/response/api_respone.dart';

class CardClassDetailViewModel extends ChangeNotifier {
  // final _restaurantRepository = RestaurantRepository();
  final _classclassdetailRepository = CardClassDetailRepository();
   dynamic cardclassdetails = ApiRespone.loading();
//  ApiRespone<CardClassDetail> cardclassdetails = ApiRespone.loading();
//  ApiRespone<ImageModel> image =ApiRespone();

  ///  post image part
  // setImageResponse(response) {
  //   image = response;
  //   notifyListeners();
  // }

  // Future<dynamic> uploadImage(file) async {
  //   setImageResponse(ApiRespone.loading());
  //   await _restaurantRepository
  //       .uploadImage(file)
  //       .then((image) => setImageResponse(ApiRespone.completed(image)))
  //       .onError((error, stackTrace) =>
  //           setImageResponse(ApiRespone.error(error.toString())));
  // }

  ///  get api  restaurant  part
  setCardClassDetailList(response) {
   //  print("response:3: ${response.body}");
    cardclassdetails = response;
    notifyListeners();
  }

  Future<dynamic> fetchAllCardClassDetail() async {
    await _classclassdetailRepository
        .getCardClassDetailList()
        .then(
            (cardclassdetail) => setCardClassDetailList(ApiRespone.completed(cardclassdetail)))
        .onError((error, stackTrace) =>
            setCardClassDetailList(ApiRespone.error(error.toString())));
  }
}
