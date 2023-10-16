import 'package:expense_tracker/models/expenses.dart';
import 'package:flutter/material.dart';

class ExpsensesItem extends StatelessWidget {
  const ExpsensesItem(this.expense, {super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Card(
        // card has no padding
        // so we  rwrap with padding
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                // you can add a row  to group together
                // spacer takes all the  space
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 10),
                    Text(expense.formattedDate)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
