import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) =>
          //Dismiss est un widget qui permet de supprmier un widget avec les données associées à l'aide son key
          //ici on peut utiliser notre expenses[index] car c'est unique par item de notre liste
          Dismissible(
            //Container car nous donne accès à certaines propriétés telles que color,
            //colorScheme qu'on a avec notre color Scheme dans main, et on a accès à colorScheme.error qui est rouge
            background: Container(
              color: Theme.of(context).colorScheme.error,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
            key: ValueKey(expenses[index]),

            //pour ce qu'on veut faire une fois le item supprimé
            //dans notre cas mettre à jour la liste des depenses
            onDismissed: (direction) {
              onRemoveExpense(expenses[index]);
            },
            child: ExpenseItem(expenses[index]),
          ),
    );
  }
}
