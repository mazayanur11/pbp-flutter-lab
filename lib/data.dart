import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:intl/intl.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {

  static List<String> listJudul = [];
  static List<int> listNominal = [];
  static List<String> listPilihanJenis = [];
  static List<DateTime> listTanggal = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: returnMyDrawer(context),
      body:ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                  listJudul[index], style: const TextStyle(fontSize: 25),
                                  textAlign: TextAlign.left),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(listNominal[index].toString(), style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.left),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(listPilihanJenis[index], style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.right),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(DateFormat('EEEE, d-MMM-yyyy').format(listTanggal[index]), style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.left),
                          ),
                        ),
                      ]
                    ),
                  ],
              )
            ),
          );
        },
        itemCount: listJudul.length,
      ),
    );
  }
}

// Add ke data
void addData(String judul, int nominal, String jenis, DateTime tanggal){
  _MyDataPageState.listJudul.add(judul);
  _MyDataPageState.listNominal.add(nominal);
  _MyDataPageState.listPilihanJenis.add(jenis);
  _MyDataPageState.listTanggal.add(tanggal);
}