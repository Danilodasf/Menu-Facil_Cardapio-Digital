import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/cart_item.dart';
import '../../domain/models/menu_item.dart';
import '../providers/cart_provider.dart';

class CartItemCard extends StatelessWidget {
  final CartItem cartItem;

  const CartItemCard({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                cartItem.menuItem.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 80,
                    height: 80,
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    child: Icon(
                      cartItem.menuItem.category == ItemCategory.drink
                          ? Icons.local_drink
                          : Icons.restaurant,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartItem.menuItem.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'R\$ ${cartItem.menuItem.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<CartProvider>().updateQuantity(
                                cartItem.menuItem.id,
                                cartItem.quantity - 1,
                              );
                        },
                        icon: const Icon(Icons.remove_circle_outline),
                        iconSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          '${cartItem.quantity}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<CartProvider>().updateQuantity(
                                cartItem.menuItem.id,
                                cartItem.quantity + 1,
                              );
                        },
                        icon: const Icon(Icons.add_circle_outline),
                        iconSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CartProvider>().removeItem(cartItem.menuItem.id);
                  },
                  icon: const Icon(Icons.delete_outline),
                  color: Colors.red[400],
                ),
                const SizedBox(height: 8),
                Text(
                  'R\$ ${cartItem.totalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

