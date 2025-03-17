DROP DATABASE bd_clientes;

CREATE DATABASE bd_clientes;

use bd_clientes;

CREATE TABLE `bd_clientes`.`cliente` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nascimento` DATE NOT NULL,
    `nome` VARCHAR(100) NOT NULL,
    `endereco` VARCHAR(255) NOT NULL,
    `cpf` VARCHAR(14) NOT NULL,
    `telefone` VARCHAR(14) NULL,
    `email` VARCHAR(100) NULL,
    `datacadastro` DATE NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `cliente` (nascimento, nome, endereco, cpf, telefone, email, datacadastro)
VALUES ('2023-11-23', 'Carlos Santos', 'Rua Xavante, quadra 34', '123.123.123-23', '(98)97777-0808', 'carlos@gmail.com', '2023-11-23');

INSERT INTO `cliente` (nascimento, nome, endereco, cpf, telefone, email, datacadastro)
VALUES ('2023-11-23', 'José Pereira', 'Rua Flores, 34', '123.123.123-23', '(98)99999-0808', 'jpgemail.com', '2023-11-23');

INSERT INTO `cliente` (nascimento, nome, endereco, cpf, telefone, email, datacadastro)
VALUES ('2023-11-23', 'Ana Maria', 'Rua Pindorama, casa 3', '345.345.345-23', '(99)93423-1289', 'marigmail.com', '2023-11-23');

INSERT INTO `cliente` (nascimento, nome, endereco, cpf, telefone, email, datacadastro)
VALUES ('2023-11-23', 'José Hugo', 'Rua Florianópolis, 4', '453.234.234-34', '(99)99999-0808', 'jhugor@gmail.com', '2023-11-23');
INSERT INTO pessoas (nascimento, cpf, nome, endereco, telefone, email) VALUES
('1990-05-12', '123.456.789-01', 'Ana Silva', 'Rua das Flores, 123', '(11) 98765-4321', 'ana.silva@email.com'),
('1985-08-23', '234.567.890-12', 'Bruno Souza', 'Avenida Paulista, 456', '(11) 95678-1234', 'bruno.souza@email.com'),
('1993-02-15', '345.678.901-23', 'Carla Mendes', 'Rua dos Ipês, 789', '(21) 99876-5432', 'carla.mendes@email.com'),
('1978-11-30', '456.789.012-34', 'Diego Rocha', 'Travessa das Palmeiras, 321', '(31) 98888-7777', 'diego.rocha@email.com'),
('2000-07-14', '567.890.123-45', 'Eduarda Lima', 'Rua Azul, 555', '(41) 92345-6789', 'eduarda.lima@email.com'),
('1995-04-20', '678.901.234-56', 'Fernando Alves', 'Avenida Central, 1010', '(51) 91234-5678', 'fernando.alves@email.com'),
('1983-09-25', '789.012.345-67', 'Gabriela Costa', 'Rua Verde, 222', '(61) 93344-5566', 'gabriela.costa@email.com'),
('1991-06-17', '890.123.456-78', 'Hugo Pereira', 'Rua das Laranjeiras, 303', '(71) 96543-2109', 'hugo.pereira@email.com'),
('1976-03-12', '901.234.567-89', 'Isabela Fernandes', 'Praça do Sol, 88', '(81) 93210-4567', 'isabela.fernandes@email.com'),
('1988-12-05', '012.345.678-90', 'João Ricardo', 'Rua do Porto, 77', '(91) 98765-1234', 'joao.ricardo@email.com'),

('1997-05-09', '123.456.789-11', 'Juliana Martins', 'Rua do Campo, 56', '(92) 97890-4321', 'juliana.martins@email.com'),
('1982-08-22', '234.567.890-22', 'Luciano Farias', 'Avenida Rio Branco, 900', '(32) 93456-7890', 'luciano.farias@email.com'),
('1990-01-10', '345.678.901-33', 'Mariana Torres', 'Rua Primavera, 111', '(42) 94321-8765', 'mariana.torres@email.com'),
('1975-11-28', '456.789.012-44', 'Nelson Barros', 'Travessa Verde, 999', '(52) 95678-2345', 'nelson.barros@email.com'),
('2002-06-03', '567.890.123-55', 'Otávio Nunes', 'Rua da Mata, 333', '(62) 96543-7890', 'otavio.nunes@email.com'),
('1996-09-19', '678.901.234-66', 'Patrícia Santos', 'Rua das Acácias, 252', '(72) 98765-4321', 'patricia.santos@email.com'),
('1984-02-24', '789.012.345-77', 'Ricardo Gomes', 'Avenida Azul, 202', '(82) 99876-5432', 'ricardo.gomes@email.com'),
('1992-07-15', '890.123.456-88', 'Sofia Menezes', 'Rua Amarela, 404', '(92) 93421-8765', 'sofia.menezes@email.com'),
('1979-12-31', '901.234.567-99', 'Thiago Oliveira', 'Travessa da Esperança, 606', '(13) 91234-5678', 'thiago.oliveira@email.com'),
('1986-04-08', '012.345.678-12', 'Valéria Freitas', 'Rua Principal, 808', '(23) 92345-6789', 'valeria.freitas@email.com'),

('1998-03-14', '123.456.789-13', 'Yasmin Duarte', 'Rua das Estrelas, 303', '(33) 93456-7890', 'yasmin.duarte@email.com'),
('1981-09-27', '234.567.890-24', 'Zé Augusto', 'Avenida Amarela, 707', '(43) 96543-2109', 'ze.augusto@email.com'),
('1994-06-20', '345.678.901-35', 'Alice Ramos', 'Rua Mar, 505', '(53) 99876-5432', 'alice.ramos@email.com'),
('1977-10-11', '456.789.012-46', 'Bruno Cavalcante', 'Travessa das Pedras, 909', '(63) 97890-4321', 'bruno.cavalcante@email.com'),
('2001-02-18', '567.890.123-57', 'Clara Viana', 'Rua Verdejante, 707', '(73) 93421-8765', 'clara.viana@email.com'),
('1989-08-29', '678.901.234-68', 'Daniel Fontes', 'Praça dos Ventos, 404', '(83) 91234-5678', 'daniel.fontes@email.com'),
('1999-07-01', '789.012.345-79', 'Elaine Silva', 'Rua do Horizonte, 505', '(93) 92345-6789', 'elaine.silva@email.com'),
('1974-05-22', '890.123.456-80', 'Felipe Andrade', 'Rua da Paz, 121', '(14) 97890-4321', 'felipe.andrade@email.com'),
('1987-03-09', '901.234.567-91', 'Gustavo Moraes', 'Rua da Lua, 909', '(24) 96543-2109', 'gustavo.moraes@email.com'),
('1995-12-17', '012.345.678-14', 'Helena Barbosa', 'Rua do Céu, 303', '(34) 94321-8765', 'helena.barbosa@email.com');


SELECT * FROM bd_clientes.cliente;