import 'package:get/get.dart';
import 'package:onlyfconline/model/seasonId_model.dart';
import 'package:onlyfconline/repository/metadata_repository.dart';

class HomeController extends GetxController{
  RxInt counter = 0.obs;
  RxList<SeasonIdModel> seasonIdModelList = <SeasonIdModel>[].obs;
  RxList<int> selectSeasonId = <int>[].obs;
  void increase() {
    counter++;
  }

  @override
  void onInit() {
    super.onInit();
    MetadataRepository().getSeasonId().then((value){
      seasonIdModelList.value = value;
      for(int i=0;i<value.length;i++){
        selectSeasonId.add(value[i].seasonId);
      }
    });
  }
}
