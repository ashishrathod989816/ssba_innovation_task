import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ssba_task/Api_repository/api_service.dart';
import 'package:ssba_task/Models/resume_model.dart';

class ResumeController extends GetxController {
  bool loader = false;

  ResumeModel? resumeInfo;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
 
    getResumeInfo();
  }

  getResumeInfo() async {
       loader = true;
    resumeInfo = await ApiService.getResumeInfo();
    loader = false;

    update();
  }
}
