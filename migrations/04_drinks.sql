-- Create drinks
BEGIN;
CREATE TABLE "drinks" (
    "drinkid" SERIAL PRIMARY KEY,
    "name" VARCHAR NULL,
    "price" INTEGER NOT NULL
);
COMMIT;

-- DROP TABLE IF EXISTS "drinks";
