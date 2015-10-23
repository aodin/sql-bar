-- Create orders
BEGIN;
CREATE TABLE "orders" (
    "orderid" SERIAL PRIMARY KEY,
    "customerid" INTEGER NOT NULL,
    "total" INTEGER NOT NULL
);
COMMIT;

-- DROP TABLE IF EXISTS "orders";
