import 'package:blog/services/get_requests.dart';

class GetRequestsViewModel {
  dynamic getDataImagesViewModel(index) async {
    return GetRequestsService().getDataImages(index);
  }

  dynamic getDataParagraphsViewModel(index) async {
    return GetRequestsService().getDataParagraphs();
  }
}
