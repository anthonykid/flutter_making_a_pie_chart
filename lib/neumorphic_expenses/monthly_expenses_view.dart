import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categories_row.dart';
import 'pie_chart_view.dart';

class MontlyExpensesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(193, 214, 233, 1),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height * 0.80,
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
                          Text('Kategori'),
                          Spacer(),
                          CategoriesRow(),
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
    );
  }
}
