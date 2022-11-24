import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/data.dart';
import 'package:intl/intl.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {

  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int nominal = 0;
  String jenis = 'Pengeluaran';
  DateTime tanggal = DateTime.now();

  bool isNumeric(String value){
    return int.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: returnMyDrawer(context),
      // Form
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Judul",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Validator
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Isi judul';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nominal",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String? value) {
                      setState(() {
                        nominal = int.parse(value!);
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        nominal = value! as int;
                      });
                    },
                    // Validator
                    validator: (String? value) {
                      // cek kosong
                      if (value == null || value.isEmpty) {
                        return 'Isi nominal';
                      }
                      // check isnumeric
                      if (!isNumeric(value)) {
                        return 'Nominal harus berupa angka';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  // child: Text(DateFormat('d-MMMM-yyy').format(tanggal), style: const TextStyle(fontSize: 15)),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(DateFormat('EEEE, d-MMMM-yyy').format(tanggal), style: const TextStyle(fontSize: 15)),
                      TextButton(
                        child: const Text("Pilih Tanggal", style: TextStyle(fontSize: 15)),
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2099),

                          ).then((date) {  // setState async untuk tanggal
                            setState(() {
                              tanggal = date!;
                            });
                          });
                        },
                      ),
                    ],
                  ),
                ),
                // Buat Dropdown
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: DropdownButton(
                      value: jenis,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: const <DropdownMenuItem<String>>[
                        DropdownMenuItem<String>(
                          value: 'Pengeluaran',
                          child: Text('Pengeluaran'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Pemasukan',
                          child: Text('Pemasukan'),
                        ),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          jenis = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                // submit button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        addData(_judul, nominal, jenis, tanggal);
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const MyDataPage()),);
                      }
                    },
                    child: const Text(
                      "Simpan",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}