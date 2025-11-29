/// Enum que define as categorias dos itens do menu
enum ItemCategory { 
  all,    // Todos os itens
  food,   // Apenas comidas
  drink   // Apenas bebidas
}

/// Modelo que representa um item do cardápio
/// Contém todas as informações necessárias sobre um produto
class MenuItem {
  final String id;                      // Identificador único
  final String name;                    // Nome do produto
  final String description;             // Descrição curta
  final double price;                   // Preço
  final String imageUrl;                // Caminho da imagem
  final ItemCategory category;          // Categoria (comida ou bebida)
  final List<String> ingredients;       // Lista de ingredientes
  final String detailedDescription;     // Descrição detalhada

  MenuItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.ingredients,
    required this.detailedDescription,
  });
}

