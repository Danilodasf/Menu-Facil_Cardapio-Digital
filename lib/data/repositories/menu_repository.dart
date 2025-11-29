import '../../domain/models/menu_item.dart';

/// Repositório responsável por fornecer os dados do menu
/// Contém a lista de todos os itens disponíveis no cardápio
class MenuRepository {
  /// Retorna a lista completa de itens do menu
  /// Em uma aplicação real, isso viria de uma API ou banco de dados
  static List<MenuItem> getMenuItems() {
    return [
      // Comidas
      MenuItem(
        id: '1',
        name: 'Feijoada Completa',
        description: 'Feijoada tradicional com arroz, farofa e couve',
        price: 45.90,
        imageUrl: 'images/items/feijoada.webp',
        category: ItemCategory.food,
        ingredients: [
          'Feijão preto',
          'Carne seca',
          'Linguiça calabresa',
          'Bacon',
          'Costela suína',
          'Arroz branco',
          'Farofa de mandioca',
          'Couve refogada',
          'Laranja'
        ],
        detailedDescription: 'Nossa feijoada é preparada no melhor estilo tradicional brasileiro, cozida lentamente por mais de 4 horas para garantir o sabor autêntico. Servida com arroz branco soltinho, farofa crocante, couve refogada e laranja para equilibrar. Uma verdadeira experiência gastronômica brasileira!',
      ),
      MenuItem(
        id: '2',
        name: 'Picanha na Brasa',
        description: 'Picanha grelhada com farofa e vinagrete',
        price: 65.00,
        imageUrl: 'images/items/picanha.webp',
        category: ItemCategory.food,
        ingredients: [
          'Picanha bovina (300g)',
          'Sal grosso',
          'Alho',
          'Farofa de mandioca',
          'Vinagrete',
          'Tomate',
          'Cebola',
          'Pimentão'
        ],
        detailedDescription: 'Corte nobre de picanha grelhado na brasa com sal grosso, mantendo o ponto suculento e macio. Acompanha farofa crocante feita na hora e vinagrete fresco com tomate, cebola e pimentão. Perfeito para apreciadores de uma boa carne!',
      ),
      MenuItem(
        id: '3',
        name: 'Moqueca de Peixe',
        description: 'Moqueca capixaba com arroz e pirão',
        price: 52.90,
        imageUrl: 'images/items/moqueca_de_peixe.webp',
        category: ItemCategory.food,
        ingredients: [
          'Peixe fresco (robalo)',
          'Leite de coco',
          'Dendê',
          'Tomate',
          'Cebola',
          'Pimentão',
          'Coentro',
          'Arroz branco',
          'Pirão'
        ],
        detailedDescription: 'Moqueca capixaba autêntica feita com peixe fresco do dia, cozido em panela de barro com leite de coco, dendê, tomates maduros e temperos especiais. Servida com arroz branco e pirão cremoso. Uma explosão de sabores do litoral brasileiro!',
      ),
      MenuItem(
        id: '4',
        name: 'Coxinha de Frango',
        description: 'Coxinha crocante com catupiry',
        price: 8.50,
        imageUrl: 'images/items/coxinha_de_frango.jpg',
        category: ItemCategory.food,
        ingredients: [
          'Frango desfiado',
          'Catupiry',
          'Massa de batata',
          'Farinha de rosca',
          'Temperos especiais',
          'Cebolinha'
        ],
        detailedDescription: 'Coxinha artesanal feita com massa de batata macia e recheio generoso de frango desfiado temperado com catupiry original. Empanada e frita na hora para garantir crocância perfeita. Um clássico brasileiro irresistível!',
      ),
      MenuItem(
        id: '5',
        name: 'Pão de Queijo',
        description: 'Pão de queijo mineiro tradicional (6 unidades)',
        price: 12.00,
        imageUrl: 'images/items/pao_de_queijo.jpg',
        category: ItemCategory.food,
        ingredients: [
          'Polvilho azedo',
          'Queijo minas',
          'Ovos',
          'Leite',
          'Óleo',
          'Sal'
        ],
        detailedDescription: 'Pão de queijo mineiro tradicional, feito com a receita original de Minas Gerais. Crocante por fora, macio e quentinho por dentro, com sabor intenso de queijo minas. Porção com 6 unidades quentinhas! Perfeito para acompanhar café ou como entrada.',
      ),
      MenuItem(
        id: '6',
        name: 'Açaí na Tigela',
        description: 'Açaí com granola, banana e mel',
        price: 18.90,
        imageUrl: 'images/items/acai.jpg',
        category: ItemCategory.food,
        ingredients: [
          'Açaí puro (300ml)',
          'Granola crocante',
          'Banana',
          'Mel orgânico',
          'Morango',
          'Leite em pó'
        ],
        detailedDescription: 'Açaí 100% puro, batido na hora e servido em tigela generosa. Coberto com granola crocante, banana fatiada, morangos frescos, leite em pó e mel orgânico. Energia e sabor da Amazônia em cada colherada! Perfeito para qualquer hora do dia.',
      ),
      MenuItem(
        id: '7',
        name: 'Brigadeiro Gourmet',
        description: 'Brigadeiro tradicional (6 unidades)',
        price: 15.00,
        imageUrl: 'images/items/brigadeiro.jpg',
        category: ItemCategory.food,
        ingredients: [
          'Leite condensado',
          'Chocolate nobre',
          'Manteiga',
          'Chocolate granulado',
          'Cacau em pó'
        ],
        detailedDescription: 'Brigadeiros gourmet feitos artesanalmente com chocolate nobre importado e leite condensado de primeira qualidade. Cozidos no ponto certo e cobertos com chocolate granulado premium. Porção com 6 unidades que derretem na boca!',
      ),
      MenuItem(
        id: '8',
        name: 'Tapioca Recheada',
        description: 'Tapioca com queijo coalho e carne seca',
        price: 22.00,
        imageUrl: 'images/items/tapioca.jpg',
        category: ItemCategory.food,
        ingredients: [
          'Goma de tapioca',
          'Queijo coalho',
          'Carne seca desfiada',
          'Manteiga de garrafa',
          'Cebola caramelizada'
        ],
        detailedDescription: 'Tapioca nordestina autêntica, preparada com goma fresca e recheada com queijo coalho de primeira e carne seca desfiada temperada. Finalizada com manteiga de garrafa e cebola caramelizada. Uma delícia da culinária nordestina!',
      ),
      // Bebidas
      MenuItem(
        id: '9',
        name: 'Caipirinha',
        description: 'Caipirinha de limão tradicional',
        price: 15.00,
        imageUrl: 'images/items/caipirinha.jpg',
        category: ItemCategory.drink,
        ingredients: [
          'Cachaça artesanal',
          'Limão tahiti',
          'Açúcar',
          'Gelo'
        ],
        detailedDescription: 'A caipirinha mais brasileira que existe! Feita com cachaça artesanal de qualidade, limão tahiti fresquinho, açúcar na medida certa e muito gelo. Batida na hora, refrescante e com o equilíbrio perfeito entre doce e azedo.',
      ),
      MenuItem(
        id: '10',
        name: 'Guaraná Antarctica',
        description: 'Refrigerante guaraná (lata 350ml)',
        price: 6.00,
        imageUrl: 'images/items/guarana_antartica.png',
        category: ItemCategory.drink,
        ingredients: [
          'Água gaseificada',
          'Extrato de guaraná',
          'Açúcar',
          'Conservantes naturais'
        ],
        detailedDescription: 'O refrigerante mais brasileiro que existe! Guaraná Antarctica lata 350ml bem gelado, com seu sabor único e inconfundível. Perfeito para acompanhar qualquer refeição.',
      ),
      MenuItem(
        id: '11',
        name: 'Água de Coco',
        description: 'Água de coco natural gelada',
        price: 8.00,
        imageUrl: 'images/items/agua_de_coco.png',
        category: ItemCategory.drink,
        ingredients: [
          'Água de coco natural',
          'Gelo (opcional)'
        ],
        detailedDescription: 'Água de coco 100% natural e gelada, extraída de cocos verdes frescos. Hidratante, refrescante e cheia de eletrólitos naturais. Perfeita para se refrescar em dias quentes ou após exercícios.',
      ),
      MenuItem(
        id: '12',
        name: 'Suco de Laranja',
        description: 'Suco de laranja natural 500ml',
        price: 10.00,
        imageUrl: 'images/items/suco_de_laranja.jpg',
        category: ItemCategory.drink,
        ingredients: [
          'Laranjas frescas',
          'Açúcar (opcional)',
          'Gelo'
        ],
        detailedDescription: 'Suco de laranja 100% natural, espremido na hora com laranjas selecionadas. Sem conservantes ou aditivos, pura vitamina C e sabor refrescante. Servido em copo de 500ml bem gelado.',
      ),
      MenuItem(
        id: '13',
        name: 'Café Expresso',
        description: 'Café expresso tradicional',
        price: 5.00,
        imageUrl: 'images/items/cafe_expresso.jpg',
        category: ItemCategory.drink,
        ingredients: [
          'Café arábica torrado',
          'Água filtrada'
        ],
        detailedDescription: 'Café expresso preparado com grãos 100% arábica selecionados, torrados e moídos na hora. Extraído em máquina profissional para garantir o crema perfeito e sabor intenso. Ideal para começar o dia ou dar aquela energizada!',
      ),
      MenuItem(
        id: '14',
        name: 'Cerveja Artesanal',
        description: 'Cerveja artesanal IPA 500ml',
        price: 18.00,
        imageUrl: 'images/items/cerveja_artesanal.webp',
        category: ItemCategory.drink,
        ingredients: [
          'Malte especial',
          'Lúpulo importado',
          'Levedura',
          'Água mineral'
        ],
        detailedDescription: 'Cerveja artesanal estilo IPA (India Pale Ale) de cervejaria local premium. Com aroma cítrico intenso, amargor equilibrado e 6% de álcool. Garrafa 500ml gelada, perfeita para apreciar com amigos!',
      ),
    ];
  }
}
