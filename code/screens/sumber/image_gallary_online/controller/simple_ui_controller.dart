import 'package:get/get.dart';

import '../model/photo_model.dart';
import '../service/api_service.dart';

class SimpleUiController extends GetxController {
  var selectedIndex = 0.obs;
  RxList<PhotosModel> photos = RxList();
  RxBool isLoading = true.obs;
  RxString orderBy = "Latest".obs;

  List<String> orders = [
    "Latest",
    "Popular",
    "animals",
    "wallpapers",
  ];
  // get image
  getPhotos() async {
    isLoading.value = true;
    var response = await ApiService().getMethod(
        'https://api.unsplash.com/photos/?per_page=30&topics?${orderBy.value}&client_id=ue-SFKLVDl4Sl0mcLYiI4dY_tjb20ljKk1iSTqlxbFU');
    photos = RxList();
    if (response.statusCode == 200) {
      response.data.forEach((gambar) {
        photos.add(PhotosModel.fromJson(gambar));
      });
      isLoading.value = false;
    }
  }

  orderFunc(String newVal) {
    orderBy.value = newVal;
    getPhotos();
  }

  @override
  void onInit() {
    getPhotos();
    super.onInit();
  }
}
