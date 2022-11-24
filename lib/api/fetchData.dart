import 'package:counter_7/model/my_watch_list.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<bool> statusMovie = [];
int indexStatus = 0;

Future<List<MyWatchList>> fetchWatchList() async {
  var url = Uri.parse('http://tugas2maza.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<MyWatchList> listMyWatchList = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchList.add(MyWatchList.fromJson(d));
      statusMovie.add(MyWatchList.fromJson(d).fields.watched);
    }
  }

  return listMyWatchList;
}