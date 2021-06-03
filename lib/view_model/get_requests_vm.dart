import 'package:blog/services/get_requests.dart';

class GetRequestsViewModel {
  dynamic getDataImagesViewModel(index) async {
    return GetRequestsService().getDataImages(index);
  }

  dynamic getDataParagraphsViewModel() async {
    return GetRequestsService().getDataParagraphs();
  }

  dynamic getDataTitleSubtitleViewModel(index) async {
    return GetRequestsService().getDataTitleSubtitle(index);
  }

  dynamic getDatatDateViewModel() async {
    return GetRequestsService().getDataDate();
  }
}
