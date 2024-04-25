// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Flutter code sample for [DataTable].

void main() => runApp(const DataTableExampleApp());

class DataTableExampleApp extends StatelessWidget {
  const DataTableExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('DataTable Sample')),
        body: DataTableExample(),
      ),
    );
  }
}

class DataTableExample extends StatelessWidget {
  DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          dividerTheme: const DividerThemeData(
            color: Colors.transparent,
            space: 0,
            thickness: 0,
            indent: 0,
            endIndent: 0,
          ),
        ),
        child: DataTable(
          headingRowColor: MaterialStateProperty.resolveWith(
              (states) => const Color(0xFFFFF0D8)),
          columns: <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Booking ID',
                  style: GoogleFonts.montserrat(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Date',
                  style: GoogleFonts.montserrat(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Vendor Name',
                  style: GoogleFonts.montserrat(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
                label: Expanded(
                    child: Text(
              'User Name',
              style: GoogleFonts.montserrat(fontStyle: FontStyle.italic),
            ))),
            DataColumn(
                label: Expanded(
                    child: Text(
              'Commission%',
              style: GoogleFonts.montserrat(fontStyle: FontStyle.italic),
            ))),
            DataColumn(
                label: Expanded(
                    child: Text(
              'Status',
              style: GoogleFonts.montserrat(fontStyle: FontStyle.italic),
            ))),
            const DataColumn(label: Expanded(child: Text('')))
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                const DataCell(
                    Text('WSG_42342', style: TextStyle(fontSize: 12))),
                const DataCell(Text('Oct 21, 2023')),
                const DataCell(Text('Apple Studio')),
                const DataCell(Text('Sarah')),
                const DataCell(Text('10%')),
                const DataCell(Text('Transferred')),
                DataCell(
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            contentPadding: const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            content: PopupView(),
                          );
                        },
                      );
                    },
                    child: const Text(
                      'View Details',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            ),
            const DataRow(
              cells: <DataCell>[
                DataCell(Text('WSG_42342')),
                DataCell(Text('Oct 21, 2023')),
                DataCell(Text('Apple Studio')),
                DataCell(Text('Janine')),
                DataCell(Text('10%')),
                DataCell(Text('Transferred')),
                DataCell(Text(
                  'View Details',
                  style: TextStyle(decoration: TextDecoration.underline),
                )),
              ],
            ),
            const DataRow(
              cells: <DataCell>[
                DataCell(Text('WSG_42342')),
                DataCell(Text('Oct 21, 2023')),
                DataCell(Text('Apple Studio ')),
                DataCell(Text('William')),
                DataCell(Text('10%')),
                DataCell(Text('Transferred')),
                DataCell(Text(
                  'View Details',
                  style: TextStyle(decoration: TextDecoration.underline),
                )),
              ],
            ),
            const DataRow(cells: <DataCell>[
              DataCell(Text('WSG_42342')),
              DataCell(Text('Oct 21, 2023')),
              DataCell(Text('Apple Studio ')),
              DataCell(Text('William')),
              DataCell(Text('10%')),
              DataCell(Text('Transferred')),
              DataCell(Text(
                'View Details',
                style: TextStyle(decoration: TextDecoration.underline),
              )),
            ]),
            const DataRow(cells: <DataCell>[
              DataCell(Text('WSG_42342')),
              DataCell(Text('Oct 21, 2023')),
              DataCell(Text('Apple Studio ')),
              DataCell(Text('William')),
              DataCell(Text('10%')),
              DataCell(Text('Transferred')),
              DataCell(Text('View Details',
                  style: TextStyle(decoration: TextDecoration.underline))),
            ]),
          ],
        ),
      ),
    );
  }
}

class PopupView extends StatefulWidget {
  const PopupView({super.key});

  @override
  State<PopupView> createState() => _PopupViewState();
}

class _PopupViewState extends State<PopupView> {
  String dropdownvalue = 'Service';
  // var items1 = [
  //   'item 1'
  //       'item 2'
  //       'item 3'
  //       'item 4'
  //       'item 5'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Filter'),
          backgroundColor: Colors.orange,
          actions: <Widget>[
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.close),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  DropdownButton<String>(
                    items: <String>[
                      'Services',
                      'Amazon',
                      'Web',
                      'Cloud',
                      'Developemwnt'
                    ].map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    //     value: dropdownvalue,
                    //     icon: Icon(Icons.menu),
                    //     style: TextStyle(color: Colors.white),
                    //     underline: Container(
                    //       height: 2,
                    //       color: Colors.white,

                    //     ),
                    //   onChanged: (String? newValue) {
                    //     setState(() {
                    //       dropdownvalue = newValue!;
                    //     });
                    //   },
                    //   items: [
                    //     DropdownMenuItem<String>(
                    //       value: 'One',
                    //       child: Text('one'),
                    //     ),
                    //      DropdownMenuItem<String>(
                    //       value: 'Two',
                    //       child: Text('Two'),
                    //     ),
                    //      DropdownMenuItem<String>(
                    //       value: 'Three',
                    //       child: Text('Three'),
                    //     ),
                    //      DropdownMenuItem<String>(
                    //       value: 'Four',
                    //       child: Text('Four'),
                    //     ),
                    //      DropdownMenuItem<String>(
                    //       value: 'Five',
                    //       child: Text('Five'),
                    //     ),

                    //   ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
