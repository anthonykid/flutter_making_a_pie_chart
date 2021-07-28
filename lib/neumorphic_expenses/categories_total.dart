import 'package:flutter/material.dart';
import 'package:flutter_expense_pie_chart/neumorphic_expenses/pie_chart.dart';

class CategoriesPriceRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        return Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (var category in kCategories)
                ExpenseCategory(
                    amount: category.amount, index: kCategories.indexOf(category))
        ],
      ),
    );
  }
}

class ExpenseCategory extends StatelessWidget {
  const ExpenseCategory({
    required this.index,
    required this.amount,
  });

  final int index;
  final double amount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  kNeumorphicColors.elementAt(index % kNeumorphicColors.length),
            ),
          ),
          SizedBox(width: 20),
          Text(amount.toString()),
        ],
      ),
    );
  }
}
