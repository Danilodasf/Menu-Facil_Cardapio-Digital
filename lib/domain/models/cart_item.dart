import 'menu_item.dart';

/// Modelo que representa um item no carrinho de compras
/// Combina o item do menu com a quantidade selecionada
class CartItem {
  final MenuItem menuItem;  // Item do menu
  int quantity;             // Quantidade selecionada

  CartItem({
    required this.menuItem,
    this.quantity = 1,      // Quantidade inicial padrão é 1
  });

  /// Calcula o preço total baseado na quantidade
  double get totalPrice => menuItem.price * quantity;
}

