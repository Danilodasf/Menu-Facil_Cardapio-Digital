import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu_page.dart';
import 'cart_page.dart';
import '../providers/cart_provider.dart';

/// Página principal da aplicação
/// Gerencia a navegação entre Menu e Carrinho via Bottom Navigation Bar
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;  // Índice da página atual

  // Lista de páginas que podem ser navegadas
  final List<Widget> _pages = [
    const MenuPage(),   // Página do menu
    const CartPage(),   // Página do carrinho
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],  // Exibe a página atual
      // Bottom Navigation Bar com badge de quantidade no carrinho
      bottomNavigationBar: Consumer<CartProvider>(
        builder: (context, cart, child) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;  // Muda a página atual
                });
              },
              backgroundColor: Theme.of(context).colorScheme.surface,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant_menu),
                  label: 'Menu',
                ),
                BottomNavigationBarItem(
                  icon: Badge(
                    label: Text('${cart.itemCount}'),        // Mostra quantidade
                    isLabelVisible: cart.itemCount > 0,      // Só mostra se tiver itens
                    child: const Icon(Icons.shopping_cart),
                  ),
                  label: 'Carrinho',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

