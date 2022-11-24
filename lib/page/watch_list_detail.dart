import 'package:counter_7/api/fetchData.dart';
import 'package:counter_7/model/my_watch_list.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';

class WatchListDetail extends StatelessWidget {
  final MyWatchList data;
  const WatchListDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: returnMyDrawer(context),
      body: Container(
        margin: new EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(data.fields.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text("Release Date : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.fields.releaseDate,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text("Rating : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.fields.rating.toString() + "/5",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text("Status : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                if (statusMovie[indexStatus])
                  Text("Watched",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16)),
                if (!statusMovie[indexStatus])
                  Text("Unwatched",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Review: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  data.fields.review,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Back',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}