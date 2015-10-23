-- Alter customers
BEGIN;
DELETE FROM "customers";
ALTER TABLE "customers" ADD COLUMN "customerid" SERIAL PRIMARY KEY;
COMMIT;

-- ALTER TABLE "customers" DROP COLUMN "customerid";
