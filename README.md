# Cliente API REST

Este é um projeto backend para gerenciamento de clientes, desenvolvido com Spring Boot e integrado ao banco de dados MySQL.

## Funcionalidades
- Cadastro de clientes
- Listagem de clientes
- Busca de clientes por nome
- Atualização total e parcial de clientes
- Exclusão de clientes
- API RESTful com suporte a CORS

## Tecnologias Utilizadas
- Java 17
- Spring Boot 3.4.3
- Spring Data JPA
- MySQL
- Hibernate
- Maven
- H2 Database para testes

## Estrutura do Projeto
```
├── bd/
│   └── Resetar, criar e popular BD.sql
├── src/
│   ├── main/
│   │   ├── java/ex/
│   │   │   ├── ClienteApiRestApplication.java
│   │   │   ├── controller/
│   │   │   │   ├── ClienteController.java
│   │   │   │   └── ClienteFormRequest.java
│   │   │   ├── model/
│   │   │   │   ├── Cliente.java
│   │   │   │   └── repository/
│   │   │   │       └── ClienteRepository.java
│   │   └── resources/
│   │       └── application.properties
│   └── test/java/ex/
│       └── ClienteApiRestApplicationTests.java
└── pom.xml
```

## Instalação e Execução
### Requisitos
- Java 17 ou superior
- Maven
- MySQL

### Passos
1. Clone o repositório:
   ```sh
   git clone https://github.com/seu-usuario/seu-repositorio.git
   ```
2. Entre no diretório do projeto:
   ```sh
   cd cliente-api-rest
   ```
3. Configure o banco de dados MySQL:
   - Crie um banco de dados `bd_clientes`
   - Execute o script `bd/Resetar, criar e popular BD.sql`
4. Configure o arquivo `application.properties`:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/bd_clientes
   spring.datasource.username=root
   spring.datasource.password=root
   ```
5. Compile e execute o projeto:
   ```sh
   mvn spring-boot:run
   ```

O servidor será iniciado na porta `8080`.

## Endpoints da API

| Método | Endpoint                      | Descrição                          |
|---------|-------------------------------|----------------------------------|
| GET     | `/api/clientes`               | Listar todos os clientes        |
| GET     | `/api/clientes/{id}`          | Buscar cliente por ID           |
| GET     | `/api/clientes/buscar-por-nome?nome={nome}` | Buscar cliente por nome |
| POST    | `/api/clientes`               | Cadastrar novo cliente          |
| PUT     | `/api/clientes/{id}`          | Atualizar cliente               |
| PATCH   | `/api/clientes/{id}`          | Atualizar cliente parcialmente  |
| DELETE  | `/api/clientes/{id}`          | Excluir cliente                 |

## Contato
Desenvolvido por:
- [Pedro Ariel](https://github.com/pedroOlvPinheiro)
- [Victor José](https://github.com/VictorJoseQM)

