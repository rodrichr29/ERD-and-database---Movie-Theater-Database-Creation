--TABLES AND COLUMNS
CREATE TABLE "customer" (
  "customer_id" serial NOT NULL,
  "first_name" varchar(45) NOT NULL,
  "last_name" varchar(45) NOT NULL,
  CONSTRAINT "customer_pk" PRIMARY KEY ("customer_id")
) WITH (OIDS = FALSE);
CREATE TABLE "ticket" (
  "ticket_id" serial NOT NULL,
  "customer_id" int2 NOT NULL UNIQUE,
  "ticket_number" int4 NOT NULL,
  CONSTRAINT "ticket_pk" PRIMARY KEY ("ticket_id")
) WITH (OIDS = FALSE);
CREATE TABLE "payment" (
  "payment_id" serial NOT NULL,
  "customer_id" int2 NOT NULL UNIQUE,
  "employee_id" int2 NOT NULL UNIQUE,
  "ticket_id" int4 NOT NULL UNIQUE,
  "amount" numeric(5, 2) NOT NULL,
  CONSTRAINT "payment_pk" PRIMARY KEY ("payment_id")
) WITH (OIDS = FALSE);
CREATE TABLE "employee" (
  "employee_id" serial NOT NULL,
  "first_name" varchar(45) NOT NULL,
  "last_name" varchar(45) NOT NULL,
  CONSTRAINT "employee_pk" PRIMARY KEY ("employee_id")
) WITH (OIDS = FALSE);
ALTER TABLE
  "ticket"
ADD
  CONSTRAINT "ticket_fk1" FOREIGN KEY ("customer_id") REFERENCES "payment"("customer_id");
ALTER TABLE
  "payment"
ADD
  CONSTRAINT "payment_fk0" FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id");
ALTER TABLE
  "payment"
ADD
  CONSTRAINT "payment_fk1" FOREIGN KEY ("employee_id") REFERENCES "employee"("employee_id");
ALTER TABLE
  "payment"
ADD
  CONSTRAINT "payment_fk2" FOREIGN KEY ("ticket_id") REFERENCES "ticket"("ticket_id");