-- Add quantity to items and remove total from orders
BEGIN;
ALTER TABLE "items" ADD COLUMN "quantity" INTEGER NOT NULL DEFAULT 0;
ALTER TABLE "orders" DROP COLUMN "total";
ALTER TABLE "orders" ADD COLUMN "at" TIMESTAMP NOT NULL DEFAULT (now() at time zone 'utc');
COMMIT;
