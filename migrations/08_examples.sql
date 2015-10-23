-- Add a primary key to items
BEGIN;

DELETE FROM "customers";
INSERT INTO "customers" ("customerid", "name") VALUES
    (1, 'Aaron'),
    (2, 'Ben'),
    (3, 'Michael'),
    (4, 'Jeff');
ALTER SEQUENCE "customers_customerid_seq" RESTART WITH 5;

DELETE FROM "drinks";
INSERT INTO "drinks" VALUES
    (1, 'Hipster Swill', 150),
    (2, 'Double Nitro Ambrosia', 900),
    (3, 'Cider', 400),
    (4, 'Shirley Temple', 700);
ALTER SEQUENCE "drinks_drinkid_seq" RESTART WITH 4;

DELETE FROM "orders";
INSERT INTO "orders" VALUES
    (1, 1, '2015-10-20 18:00:00Z'),
    (2, 1, '2015-10-21 19:00:00Z'),
    (3, 1, '2015-10-22 18:00:00Z'),
    (4, 2, '2015-10-21 17:00:00Z'),
    (5, 3, '2015-10-20 12:00:00Z'),
    (6, 3, '2015-10-20 13:00:00Z'),
    (7, 3, '2015-10-20 14:00:00Z');
ALTER SEQUENCE "orders_orderid_seq" RESTART WITH 8;

DELETE FROM "items";
INSERT INTO "items" VALUES
    (1, 1, 2),
    (1, 3, 1),
    (2, 2, 1),
    (3, 1, 1),
    (4, 2, 2),
    (5, 1, 27),
    (6, 3, 2),
    (7, 2, 2);
COMMIT;
