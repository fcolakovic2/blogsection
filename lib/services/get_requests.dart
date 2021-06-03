import 'dart:convert';
import 'dart:math';
import 'package:blog/interface/get_requests_interface.dart';
import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/utils/shared/strings.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

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
    // print(infos);
    listaText.add(infos[0]);
    return infos;
  }

  @override
  dynamic getDataTitleSubtitle(index) async {
    var infos;
    Random rand = new Random();
    int pom = rand.nextInt(10);
    if (pom == 0) pom = 1;
    String myUrl = "https://jsonplaceholder.typicode.com/posts/${index + 1}";
    var req = await http.get(Uri.parse(myUrl));
    infos = json.decode(req.body);
    listaTitle.add(infos["title"]);
    listaSubtitle.add(infos["body"]);
    return infos;
  }

  @override
  dynamic getDataDate() async {
    var infos;
    String myUrl = "https://swapi.dev/api/people/1/";
    var req = await http.get(Uri.parse(myUrl));
    infos = json.decode(req.body);
    DateFormat dateFormat = DateFormat("MMM dd");
    DateTime dateTime = DateTime.parse(infos["created"]);
    date = dateFormat.format(dateTime);
    return date;
  }
}
