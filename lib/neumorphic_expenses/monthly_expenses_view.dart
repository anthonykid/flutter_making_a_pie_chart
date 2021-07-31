import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categories_row.dart';
import 'pie_chart_view.dart';
import 'categories_total.dart';

class MontlyExpensesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(193, 214, 233, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Card(
            margin: EdgeInsets.fromLTRB(25, 40, 25, 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: height * 0.065),
                        Text(
                          'Ringkasan Pendapatan',
                          style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w600, fontSize: 22),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              PieChartView(),
                              Spacer(),
                              Container(
                                height: 250,
                                width: 250,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Kategori'),
                                          CategoriesRow()
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        
                                        children: [
                                          Text('Jumlah'),
                                          CategoriesPriceRow()
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
