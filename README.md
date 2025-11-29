# MenuFácil - Cardápio Digital

Aplicativo mobile de cardápio digital desenvolvido em Flutter, apresentando comidas e bebidas brasileiras em uma interface moderna e minimalista.

## Funcionalidades

### Menu Interativo
- Exibição de itens em **grid responsivo** (2 colunas)
- **Filtros por categoria**: Todos, Comidas e Bebidas
- Cards com imagem, nome, descrição e preço

### Tela de Detalhes
- Imagem em destaque do item
- Descrição detalhada do prato
- **Lista completa de ingredientes**
- Seletor de quantidade
- Botão para adicionar ao carrinho

### Carrinho de Compras
- **Lista de itens** adicionados
- Controle de quantidade (+/-)
- Cálculo automático do total
- Badge com contador no ícone de navegação
- Opção de limpar carrinho

### Checkout
- **Formulário completo** com validação:
  - Informações pessoais (nome, telefone)
  - Endereço de entrega
  - Forma de pagamento (múltiplas opções)
- Resumo do pedido
- Confirmação com feedback visual

### Navegação
- **Bottom Navigation Bar** entre Menu e Carrinho
- **Rotas nomeadas** para navegação estruturada
- Transições suaves entre telas

## Arquitetura

Projeto desenvolvido seguindo **Clean Architecture**:

```
lib/
├── core/theme/          # Tema e estilização
├── data/repositories/   # Camada de dados
├── domain/models/       # Modelos de negócio
└── presentation/        # Camada de apresentação
    ├── pages/           # Telas do aplicativo
    ├── providers/       # Gerenciamento de estado (Provider)
    └── widgets/         # Componentes reutilizáveis
```

##Tecnologias

- **Flutter** - Framework de desenvolvimento mobile
- **Provider** - Gerenciamento de estado reativo
- **Google Fonts** - Tipografia personalizada (Poppins)
- **Material Design 3** - Componentes modernos

## Design

Interface com **tema escuro** e paleta de cores vibrantes:
- **Rosa/Vermelho** (#FF6B6B) - Cor principal
- **Turquesa** (#4ECDC4) - Cor secundária  
- **Amarelo** (#FFE66D) - Cor de destaque
- **Azul escuro** (#1A1A2E) - Background

## Cardápio

### Comidas (8 itens)
Feijoada Completa • Picanha na Brasa • Moqueca de Peixe • Coxinha de Frango • Pão de Queijo • Açaí na Tigela • Brigadeiro Gourmet • Tapioca Recheada

### Bebidas (6 itens)
Caipirinha • Guaraná Antarctica • Água de Coco • Suco de Laranja • Café Expresso • Cerveja Artesanal

## Como Executar

```bash
# Instalar dependências
flutter pub get

# Executar no Chrome (Web)
flutter run -d chrome

# Executar no emulador/dispositivo
flutter run
```

## Requisitos Implementados

✅ Componentes de Estado (Provider)  
✅ Componentes de Navegação (Bottom Navigation Bar)  
✅ Grids (SliverGrid com 2 colunas)  
✅ Listas (ListView no carrinho)  
✅ Formulários (Checkout com validação)  
✅ Bottom Navigation com badge  
✅ Rotas Nomeadas  
