CREATE SCHEMA clients;

CREATE TABLE clients.CUSTOMERS
(
    id           BIGSERIAL PRIMARY KEY,
    name         VARCHAR(20),
    surname      VARCHAR(20) NOT NULL,
    age          INT CHECK (age > 0 AND age < 120),
    phone_number VARCHAR(20) NOT NULL
);

INSERT INTO clients.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alexey', 'Klyuch', 26, '+7-911-400-30-55'),
       ('Dmitry', 'Golovin', 26, '4-44-25'),
       ('Daniil', 'Koshevoi', 25, '4-44-59'),
       ('Ivan', 'Medvedev', 24, '4-44-26');

drop table clients.CUSTOMERS;