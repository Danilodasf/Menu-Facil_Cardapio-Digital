import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/menu_item.dart';
import '../providers/menu_provider.dart';
import '../widgets/menu_item_card.dart';
import '../widgets/category_tabs.dart';

/// Página que exibe o menu de itens
/// Usa SliverAppBar expansível e SliverGrid para os itens
class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // AppBar expansível com o nome do app
          SliverAppBar(
            expandedHeight: 160,
            floating: false,
            pinned: true,  // Mantém fixo ao rolar
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('MenuFácil'),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.surface,
                      Theme.of(context).colorScheme.primary.withOpacity(0.3),
                    ],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.restaurant,
                    size: 60,
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ),
          // Tabs de filtro de categoria
          const SliverToBoxAdapter(
            child: CategoryTabs(),
          ),
          // Lista de itens filtrada pela categoria
          Consumer<MenuProvider>(
            builder: (context, menuProvider, child) {
              final items = menuProvider.items;  // Obtém itens filtrados
              
              if (items.isEmpty) {
                return const SliverFillRemaining(
                  child: Center(
                    child: Text('Nenhum item encontrado'),
                  ),
                );
              }

              // Grid de 2 colunas com os itens do menu
              return SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,          // 2 colunas
                    childAspectRatio: 0.75,     // Proporção do card
                    crossAxisSpacing: 16,       // Espaçamento horizontal
                    mainAxisSpacing: 16,        // Espaçamento vertical
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return MenuItemCard(item: items[index]);
                    },
                    childCount: items.length,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

