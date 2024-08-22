CREATE TABLE clients.ORDERS
(
    id           BIGSERIAL,
    date         TEXT   NOT NULL,
    customer_id  BIGINT NOT NULL,
    product_name TEXT   NOT NULL,
    amount       INT    NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES clients.customers (id)
);

INSERT INTO clients.ORDERS (date, customer_id, product_name, amount)
VALUES ('2024-07-22', 1, 'Car', 1),
       ('2024-08-22', 1, 'Flat', 1),
       ('2024-08-21', 4, 'Cow', 150),
       ('2024-08-20', 2, 'Apple', 50),
       ('2024-06-22', 2, 'Cheese', 6),
       ('2024-02-22', 1, 'Vessel', 1),
       ('2024-02-25', 4, 'Cat', 5),
       ('2024-06-22', 1, 'House', 2),
       ('2024-03-12', 3, 'Horse', 12),
       ('2024-08-02', 3, 'Bed', 3);

drop table clients.ORDERS;
