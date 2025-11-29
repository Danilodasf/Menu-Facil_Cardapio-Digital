# MenuFácil - Cardápio Digital


Funcionalidades

- **Menu Interativo**: Navegue por todos os itens, comidas ou bebidas
- **Carrinho de Compras**: Adicione itens com quantidade personalizável
- **Checkout Completo**: Formulário com validação para finalizar o pedido
- **Design Moderno**: Interface escura e colorida com animações suaves

Arquitetura

O projeto utiliza **Clean Architecture** com a seguinte estrutura:

```
lib/
├── core/
│   └── theme/           # Tema e estilização do app
├── data/
│   └── repositories/    # Repositórios de dados
├── domain/
│   └── models/          # Modelos de domínio
└── presentation/
    ├── pages/           # Páginas da aplicação
    ├── providers/       # Gerenciamento de estado (Provider)
    └── widgets/         # Componentes reutilizáveis
```

Tecnologias e Conceitos Implementados

1. **Componentes de Estado**: Provider para gerenciamento de estado global
2. **Componentes de Navegação**: Bottom Navigation Bar para navegação entre páginas
3. **Grids**: SliverGrid para exibição dos itens do menu
4. **Listas**: ListView para exibição dos itens do carrinho
5. **Formulários**: Formulário completo com validação no checkout
6. **Bottom Navigation**: Navegação entre Menu e Carrinho
7. **Rotas Nomeadas**: Sistema de rotas do Flutter

Como Executar

1. Certifique-se de ter o Flutter instalado:
```bash
flutter --version
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Execute o aplicativo:
```bash
flutter run
```

Telas

1. **Menu**: Exibe todos os itens com filtros por categoria
2. **Carrinho**: Lista dos itens adicionados com controle de quantidade
3. **Checkout**: Formulário para finalização do pedido
