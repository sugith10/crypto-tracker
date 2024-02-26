import 'dart:ffi';

import 'package:crypto_tracker/presentation/screen/home_screen/widget/moltentab_icon_widget.dart';
import 'package:crypto_tracker/core/theme/gradient_theme.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  List<TableRow> tableRows = List.generate(50, (index) {
    return TableRow(
      // decoration: BoxDecoration(
      //   color: Colors.redAccent,
      // ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text((index + 1).toString()), // Index starts from 0
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('COIN $index'),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('PRICE $index'),
          ),
        ),
      ],
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: themeGradient(),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 70,
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Bitcoin',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Expanded( // Wrap the SingleChildScrollView with Expanded
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(155, 38, 210, 64),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15 ),
                        child: Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                           
                              children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('#'),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('COIN'),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('PRICE'),
                                  ),
                                ),
                              ],
                            ),
                           
                            ...tableRows,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MoltenBottomNavigationBar(
        domeCircleColor: Colors.black,
        borderColor: const Color.fromARGB(0, 0, 0, 0),
        barColor: const Color.fromARGB(0, 0, 0, 0),
        selectedIndex: _selectedIndex,
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        tabs: [
          MoltenTab(
            icon: const MoltenTabIcon(
              icon: Icons.search_rounded,
            ),
          ),
          MoltenTab(
            icon: const MoltenTabIcon(
              icon: Icons.currency_bitcoin_rounded,
            ),
          ),
          MoltenTab(
            icon: const MoltenTabIcon(
              icon: Icons.person_outline_rounded,
            ),
          ),
        ],
      ),
    );
  }
}

