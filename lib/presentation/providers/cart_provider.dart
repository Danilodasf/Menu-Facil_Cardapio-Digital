import 'package:flutter/material.dart';
import '../../domain/models/cart_item.dart';
import '../../domain/models/menu_item.dart';

/// Provider responsável por gerenciar o estado do carrinho de compras
/// Usa ChangeNotifier para notificar widgets sobre mudanças
class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];  // Lista privada de itens no carrinho

  /// Retorna a lista de itens no carrinho
  List<CartItem> get items => _items;

  /// Retorna a quantidade total de itens (soma das quantidades)
  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);

  /// Retorna o valor total do carrinho
  double get totalAmount => _items.fold(0, (sum, item) => sum + item.totalPrice);

  /// Adiciona um item ao carrinho ou incrementa sua quantidade se já existir
  void addItem(MenuItem menuItem, int quantity) {
    final existingIndex = _items.indexWhere((item) => item.menuItem.id == menuItem.id);
    
    if (existingIndex >= 0) {
      // Item já existe, apenas incrementa a quantidade
      _items[existingIndex].quantity += quantity;
    } else {
      // Item novo, adiciona à lista
      _items.add(CartItem(menuItem: menuItem, quantity: quantity));
    }
    notifyListeners();  // Notifica os listeners sobre a mudança
  }

  /// Remove um item do carrinho pelo ID
  void removeItem(String id) {
    _items.removeWhere((item) => item.menuItem.id == id);
    notifyListeners();
  }

  /// Atualiza a quantidade de um item específico
  /// Remove o item se a quantidade for 0
  void updateQuantity(String id, int quantity) {
    final index = _items.indexWhere((item) => item.menuItem.id == id);
    if (index >= 0) {
      if (quantity > 0) {
        _items[index].quantity = quantity;
      } else {
        _items.removeAt(index);  // Remove se quantidade for 0
      }
      notifyListeners();
    }
  }

  /// Limpa todos os itens do carrinho
  void clear() {
    _items.clear();
    notifyListeners();
  }
}

