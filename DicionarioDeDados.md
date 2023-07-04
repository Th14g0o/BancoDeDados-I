# Tabela exemplo
|Campos | | | | |
|:-------|:------- | :------- | :------- | :------- |
|  **Nome**  | **Descrição** |  **Tipo de dado**  | **Tamanho** |  **Restrições de integridade**  |
| | | | | |


|Restrição de Integridade (Tabela)| |
|:-------|:------- |
|  **Nome**  | **Descrição** |
|||


# Usuario
|Campos | | | | |
|:-------|:------- | :------- | :------- | :------- |
|  **Nome**  | **Descrição** |  **Tipo de dado**  | **Tamanho** |  **Restrições de integridade**  |
| nome_id | nome unico feito pelo usuario | Varchar | 20 | PK |
| nome | nome generico escolhido pelo usuario | Varchar | 20 | Não Nulo |
| descricao | uma descrição qualquer escrita pelo usuario | Varchar | 100 | Nulo |
| imagem | imagem escolhida pelo usuario | Varchar | 50 | Nulo |
| Email | email colocado pelo usuario | Varchar | 30 | Unico |
| Matricula | matricula do IFRN CNAT do aluno | Int | | Unico |


|Restrição de Integridade (Tabela)| |
|:-------|:------- |
|  **Nome**  | **Descrição** |
|||
|||
|||

# Reagiu
|Campos | | | | |
|:-------|:------- | :------- | :------- | :------- |
|  **Nome**  | **Descrição** |  **Tipo de dado**  | **Tamanho** |  **Restrições de integridade**  |
| data_hota | data e hora que o usuario reagiu ao post| DataType | | PK |
| tipo | Emogis que indicam um sentimento | Varchar | 7 | Nulo |
|  nome_usuario_id | Nome identificador do usuario que reagiu | Varchar | 20 | FK/PK |
| id_post | Chave estranjeira da tabela Post | int | |  FK/PK |



|Restrição de Integridade (Tabela)| |
|:-------|:------- |
|  **Nome**  | **Descrição** |
|||

# Post
|Campos | | | | |
|:-------|:------- | :------- | :------- | :------- |
|  **Nome**  | **Descrição** |  **Tipo de dado**  | **Tamanho** |  **Restrições de integridade**  |
| id_post | identificador virtual numerico | int | | PK |
| data_hora |  data e hora que o usuario criou o post | DataType | | PK |
| texto | descrição/conteudo da postagem | Varchar | 150 | Nulo |
| media | imagem ou video anexado a postagem | Varchar | 50 | Nulo |
| tipo | Explicita se a postagem é do tipo texto ou midiatica | Booleano | |  Padrão |
| nome_usuario_id |  Nome identificador do usuario que criou o post| Varchar | 20 | FK/PK |


|Restrição de Integridade (Tabela)| |
|:-------|:------- |
|  **Nome**  | **Descrição** |
|||





