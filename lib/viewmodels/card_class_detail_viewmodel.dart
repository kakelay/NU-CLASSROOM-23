import 'package:flutter/cupertino.dart';
import 'package:nuclassroom23/models/response/card_class_detail.dart';
import 'package:nuclassroom23/repository/card_class_detail_repository.dart';

import '../data/response/api_respone.dart';

class CardClassDetalViewModel extends ChangeNotifier {
  // final _restaurantRepository = RestaurantRepository();
  final _classclassdetailRepository = CardClassDetailRepository();
  ApiRespone<CardClassDetail> cardclassdetails = ApiRespone.loading();
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
  setRestaurantList(response) {
    // print("response:3: ${response.body}");
    cardclassdetails = response;
    notifyListeners();
  }

  Future<dynamic> fetchAllCardClassDetail() async {
    await _classclassdetailRepository
        .getRestaurants()
        .then(
            (cardclassdetail) => setRestaurantList(ApiRespone.completed(cardclassdetail)))
        .onError((error, stackTrace) =>
            setRestaurantList(ApiRespone.error(error.toString())));
  }
}
