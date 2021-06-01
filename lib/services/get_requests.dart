import 'dart:convert';
import 'package:blog/interface/get_requests_interface.dart';
import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/utils/shared/strings.dart';
import 'package:http/http.dart' as http;

class GetRequestsService extends GetRequestsInterface {
  @override
  dynamic getDataImages(index) async {
    var infos;
    String myUrl = "https://picsum.photos/v2/list";
    var req = await http.get(Uri.parse(myUrl));
    infos = json.decode(req.body);
    for (var i = 0; i < cardsList.length; i++)
      lista.add(await infos[i]["download_url"]);
    nekiStr = await infos[index]["download_url"];
    return infos[index];
  }

  @override
  dynamic getDataParagraphs() async {
    var infos;
    String myUrl =
        "https://baconipsum.com/api/?type=all-meat&paras=4&start-with-lorem=0";
    var req = await http.get(Uri.parse(myUrl));
    infos = json.decode(req.body);
    return infos;
  }
}
