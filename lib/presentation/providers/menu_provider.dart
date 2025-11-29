import 'package:flutter/material.dart';
import '../../domain/models/menu_item.dart';
import '../../data/repositories/menu_repository.dart';

/// Provider responsável por gerenciar o estado do menu
/// Controla a lista de itens e o filtro de categoria selecionado
class MenuProvider extends ChangeNotifier {
  List<MenuItem> _allItems = [];                        // Lista completa de itens
  ItemCategory _selectedCategory = ItemCategory.all;    // Categoria selecionada atualmente

  /// Construtor: Carrega os itens do menu ao inicializar
  MenuProvider() {
    _allItems = MenuRepository.getMenuItems();
  }

  /// Retorna a lista de itens filtrada pela categoria selecionada
  List<MenuItem> get items {
    if (_selectedCategory == ItemCategory.all) {
      return _allItems;  // Retorna todos os itens
    }
    // Filtra apenas os itens da categoria selecionada
    return _allItems.where((item) => item.category == _selectedCategory).toList();
  }

  /// Retorna a categoria atualmente selecionada
  ItemCategory get selectedCategory => _selectedCategory;

  /// Define uma nova categoria e notifica os listeners
  void setCategory(ItemCategory category) {
    _selectedCategory = category;
    notifyListeners();  // Atualiza a UI
  }
}

