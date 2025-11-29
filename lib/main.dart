import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentation/pages/main_page.dart';
import 'presentation/pages/checkout_page.dart';
import 'presentation/providers/cart_provider.dart';
import 'presentation/providers/menu_provider.dart';
import 'core/theme/app_theme.dart';

/// Ponto de entrada da aplicação
void main() {
  runApp(const MenuFacilApp());
}

/// Widget raiz da aplicação MenuFácil
/// Configura os providers e rotas da aplicação
class MenuFacilApp extends StatelessWidget {
  const MenuFacilApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Configura os providers globais para gerenciamento de estado
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),  // Gerencia o carrinho
        ChangeNotifierProvider(create: (_) => MenuProvider()),  // Gerencia o menu
      ],
      child: MaterialApp(
        title: 'MenuFácil',
        debugShowCheckedModeBanner: false,  // Remove banner de debug
        theme: AppTheme.darkTheme,          // Aplica tema escuro customizado
        initialRoute: '/',                  // Rota inicial
        // Define as rotas nomeadas da aplicação
        routes: {
          '/': (context) => const MainPage(),           // Tela principal
          '/checkout': (context) => const CheckoutPage(), // Tela de checkout
        },
      ),
    );
  }
}

