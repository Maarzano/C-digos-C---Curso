# Projeto de Banco de Dados - Curso Técnico de Desenvolvimento de Sistemas

## Integrantes:
- **Arthur Araújo Marzano**
- **Arthur Augusto Alves Araujo**
- **Gabriel Arthur Ferreira De Jesus**

## Objetivo
O objetivo deste projeto é criar bancos de dados no SQL Server com base em modelos relacionais. As tabelas devem seguir as regras da 1ª Forma Normal (1FN) e respeitar as cardinalidades entre as entidades, além de implementar corretamente as chaves primárias (Primary Key) e chaves estrangeiras (Foreign Key). O projeto foi dividido da seguinte forma:

- **Arthur Araújo Marzano**: Banco de dados da música e da biblioteca
- **Arthur Augusto Alves Araujo**: Banco de dados de rede social e de handebol
- **Gabriel Arthur Ferreira De Jesus**: Banco de dados de oficina mecânica

---

## Banco de Dados da Música

### Modelo Conceitual

![Modelo Conceitual da Música](https://github.com/Maarzano/C-digos-C---Curso/blob/2ab8189da3c14c8f38ddf4ae63e2e0d485266fcc/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/DiagramaConceitual_db-Musicas.png)

#### Descrição do Modelo Conceitual:
O banco de dados da música tem como objetivo organizar e gerenciar as informações sobre artistas, álbuns e músicas. O modelo conceitual é composto pelas seguintes entidades:

- **Artistas**: Contém informações sobre os artistas, como nome e nacionalidade.
- **Álbuns**: Armazena dados sobre os álbuns lançados pelos artistas, incluindo o nome do álbum e ano de lançamento.
- **Músicas**: Registra as músicas presentes em cada álbum, com informações como nome e duração da música.
- **Usuários**: Gerencia os usuários que podem interagir com a plataforma

#### Relações:
- **Artista → Álbum**: Um artista pode ter múltiplos álbuns. (Relacionamento 1:N)
- **Álbum → Música**: Um álbum pode ter várias músicas. (Relacionamento 1:N)
- **Usuário → Música**: Um usuário pode adicionar músicas à sua lista de reprodução. (Relacionamento N:M)

### Tabelas do Banco de Dados

#### Artistas
![Tabela Artistas](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Music_Table_Artistas.png)

#### Músicas
![Tabela Músicas](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Music_Table_Musicas.png)

#### Álbuns
![Tabela Álbuns](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Music_Table_Album.png)

#### Usuários
![Tabela Usuários](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Music_Table_Usuarios.png)

### Relações de Chaves Primárias e Estrangeiras:
- **Artista (PK)** → **Álbum (FK)**: A chave primária da tabela Artista (`artista_id`) é usada como chave estrangeira na tabela Albuns através da restrição de chave estrangeira FK_ArtistaID.
- **Álbum (PK)** → **Música (FK)**: A chave primária da tabela Albuns (`album_id`) é usada como chave estrangeira na tabela Musicas através da restrição de chave estrangeira FK_AlbumID.
- **Artista (PK)** → **Música (FK)**: A chave primária da tabela Artistas (`ArtistaID`) é usada como chave estrangeira na tabela Musicas através da restrição de chave estrangeira FK_ArtistaID.

---

## Banco de Dados da Biblioteca

### Modelo Conceitual

![Modelo Conceitual da Biblioteca](https://github.com/Maarzano/C-digos-C---Curso/blob/bc02c4c822dafedb33b8c1a5d7efdda726749167/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/DiagramaConceitual_db-BibliotecaOruam.png)

#### Descrição do Modelo Conceitual:
O banco de dados da biblioteca foi projetado para gerenciar as informações sobre livros, usuários e aluguel de computadores. O modelo conceitual é composto pelas seguintes entidades principais:

- **Pessoas**: Contém informações sobre os usuários da biblioteca, como nome, CPF e email.
- **Livros**: Armazena dados sobre os livros disponíveis para compra, como título, autor e ano de publicação.
- **Computadores**: Gerencia o aluguel de computadores pelos usuários, armazenando informações como número de série e status.
- **Compras**: Registra as compras realizadas pelos usuários da biblioteca.
- **Aluguéis**: Armazena os aluguéis de computadores, incluindo a data de aluguel e devolução, bem como o preço.
- **Funcionários**: armazena quem é funcionário e seu respectivo cargo.
- **Pendencias**: Armazena possíveis pendencias, quem está com pendencia e a descrição

#### Relações:
- **Pessoa → Compra**: Uma pessoa pode realizar várias compras de livros. (Relacionamento 1:N)
- **Pessoa → Aluguel**: Uma pessoa pode alugar vários computadores. (Relacionamento 1:N)
- **Livro → Compra**: Um livro pode ser comprado várias vezes. (Relacionamento 1:N)
- **Computador → Aluguel**: Um computador pode ser alugado várias vezes. (Relacionamento 1:N)

### Tabelas do Banco de Dados

#### Pessoas
![Tabela Pessoas](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Pessoas.png)

#### Livros
![Tabela Livros](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Livros.png)

#### Computadores
![Tabela Computadores](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Computadores.png)

#### Compras
![Tabela Compras](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Compras.png)

#### Aluguéis
![Tabela Aluguéis](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Aluguel.png)

#### Funcionários
![Tabela Funcionários](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Funcionariosl.png)

#### Pendencias
![Tabela Pendencias](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Pendencias.png)

### Relações de Chaves Primárias e Estrangeiras:
- **Pessoas (PK)** → **Compras (FK)**: A chave primária da tabela Pessoas (pessoa_id) é usada como chave estrangeira na tabela Compras através da restrição de chave estrangeira `FK_PessoaID`.
  
- **Livros (PK)** → **Compras (FK)**: A chave primária da tabela Livros (livro_id) é usada como chave estrangeira na tabela Compras através da restrição de chave estrangeira `FK_LivroID`.

- **Pessoas (PK)** → **Alugueis (FK)**: A chave primária da tabela Pessoas (pessoa_id) é usada como chave estrangeira na tabela Alugueis através da restrição de chave estrangeira `FK_PessoaID`.

- **Computadores (PK)** → **Alugueis (FK)**: A chave primária da tabela Computadores (computador_id) é usada como chave estrangeira na tabela Alugueis através da restrição de chave estrangeira `FK_ComputadorID`.

- **Pessoas (PK)** → **Funcionarios (FK)**: A chave primária da tabela Pessoas (pessoa_id) é usada como chave estrangeira na tabela Funcionarios através da restrição de chave estrangeira `FK_PessoaID`.

- **Pessoas (PK)** → **Pendencias (FK)**: A chave primária da tabela Pessoas (pessoa_id) é usada como chave estrangeira na tabela Pendencias através da restrição de chave estrangeira `FK_PessoaID`.

---

## Parte de Arthur Augusto Alves Araujo

### Banco de Dados de Rede Social

#### Modelo Conceitual

![Modelo Conceitual da Rede Social](imagens/modelo_conceitual_rede_social.png)

#### Descrição do Modelo Conceitual:
*Descrever o modelo conceitual e o relacionamento entre as tabelas.*

### Tabelas

#### Tabela de Usuários
![Tabela de Usuários da Rede Social](imagens/tabela_usuarios_rede_social.png)

#### Tabela de Postagens
![Tabela de Postagens da Rede Social](imagens/tabela_postagens_rede_social.png)

#### Tabela de Amigos
![Tabela de Amigos da Rede Social](imagens/tabela_amigos_rede_social.png)

---

### Banco de Dados de Handebol

#### Modelo Conceitual

![Modelo Conceitual de Handebol](imagens/modelo_conceitual_handebol.png)

#### Descrição do Modelo Conceitual:
*Descrever o modelo conceitual e o relacionamento entre as tabelas.*

### Tabelas

#### Tabela de Jogadores
![Tabela de Jogadores do Handebol](imagens/tabela_jogadores_handebol.png)

#### Tabela de Partidas
![Tabela de Partidas do Handebol](imagens/tabela_partidas_handebol.png)

---

## Parte de Gabriel Arthur Ferreira De Jesus

### Banco de Dados de Oficina Mecânica

#### Modelo Conceitual

![Modelo Conceitual da Oficina Mecânica](imagens/modelo_conceitual_oficina_mecanica.png)

#### Descrição do Modelo Conceitual:
*Descrever o modelo conceitual e o relacionamento entre as tabelas.*

### Tabelas

#### Tabela de Clientes
![Tabela de Clientes da Oficina Mecânica](imagens/tabela_clientes_oficina_mecanica.png)

#### Tabela de Serviços
![Tabela de Serviços da Oficina Mecânica](imagens/tabela_servicos_oficina_mecanica.png)

#### Tabela de Veículos
![Tabela de Veículos da Oficina Mecânica](imagens/tabela_veiculos_oficina_mecanica.png)

---

## Conclusão

Neste projeto, conseguimos criar e entender a aplicação prática de modelos relacionais no SQL Server. Cada banco de dados foi estruturado de acordo com as normas da 1ª Forma Normal (1FN) e as tabelas foram inter-relacionadas corretamente com chaves primárias e estrangeiras, seguindo os princípios do modelo relacional.

A contribuição de cada integrante foi essencial para a criação dos bancos de dados e modelos conceituais que formam a base desse trabalho. Com isso, conseguimos representar de forma eficiente os dados de diferentes áreas, como música, biblioteca, rede social, handebol e oficina mecânica.

---

## Licença

Este projeto está licenciado sob a Licença MIT - consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
