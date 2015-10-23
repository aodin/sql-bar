-- Create items
BEGIN;
CREATE TABLE "items" (
    "orderid" INTEGER NOT NULL,
    "drinkid" INTEGER NOT NULL
);
COMMIT;

-- DROP TABLE IF EXISTS "items";
