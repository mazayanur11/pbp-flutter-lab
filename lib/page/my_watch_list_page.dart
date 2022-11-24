import 'package:counter_7/api/fetchData.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/watch_list_detail.dart';
import 'package:flutter/material.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: returnMyDrawer(context),
        body: FutureBuilder(
            future: fetchWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watchlist :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => ListTile(
                          trailing: Checkbox(
                            value: statusMovie[index],
                            onChanged: (bool? newValue) {
                              setState(() {
                                statusMovie[index] = !statusMovie[index];
                              });
                            },
                          ),
                          title: GestureDetector(
                            onTap: () {
                              indexStatus = index;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WatchListDetail(
                                          data: snapshot.data![index])));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              padding: const EdgeInsets.all(20.0),
                              decoration: statusMovie[index]
                                  ? BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(15.0),
                                      boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 2.0)
                                        ])
                                  : BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(15.0),
                                      boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 2.0)
                                        ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${snapshot.data![index].fields.title}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )));
                }
              }
            }));
  }
}