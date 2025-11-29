import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/menu_item.dart';
import '../providers/menu_provider.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, menuProvider, child) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                _buildCategoryChip(
                  context,
                  'Todos',
                  Icons.grid_view,
                  ItemCategory.all,
                  menuProvider.selectedCategory == ItemCategory.all,
                  () => menuProvider.setCategory(ItemCategory.all),
                ),
                const SizedBox(width: 12),
                _buildCategoryChip(
                  context,
                  'Comidas',
                  Icons.restaurant,
                  ItemCategory.food,
                  menuProvider.selectedCategory == ItemCategory.food,
                  () => menuProvider.setCategory(ItemCategory.food),
                ),
                const SizedBox(width: 12),
                _buildCategoryChip(
                  context,
                  'Bebidas',
                  Icons.local_drink,
                  ItemCategory.drink,
                  menuProvider.selectedCategory == ItemCategory.drink,
                  () => menuProvider.setCategory(ItemCategory.drink),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCategoryChip(
    BuildContext context,
    String label,
    IconData icon,
    ItemCategory category,
    bool isSelected,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

