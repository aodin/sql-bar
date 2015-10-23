-- Add a primary key to items
BEGIN;

DELETE FROM "items";
ALTER TABLE "items" ADD PRIMARY KEY ("drinkid", "orderid");
COMMIT;
