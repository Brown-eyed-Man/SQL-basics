CREATE SCHEMA phone_contacts;

CREATE TABLE phone_contacts.PERSONS
(
    name           TEXT,
    surname        TEXT,
    age            INT CHECK (age > 0 AND age < 120),
    phone_number   TEXT NOT NULL,
    city_of_living TEXT NOT NULL,

    PRIMARY KEY (name, surname, age)
);

-- CREATE PERSONS
INSERT INTO phone_contacts.PERSONS
VALUES ('Alexey', 'Javov', '28', '+7-910-363-02-97', 'Saint-Petersburg'),
       ('Dmitry', 'Golovin', '26', '4-44-25', 'Gubkin'),
       ('Daniil', 'Koshevoi', '26', '4-44-59', 'Gubkin'),
       ('Anton', 'Gudzon', '31', '+7-911-777-77-77', 'Moscow');