--
-- Class Note as table note
--

CREATE TABLE "note" (
  "id" serial,
  "text" text NOT NULL
);

ALTER TABLE ONLY "note"
  ADD CONSTRAINT note_pkey PRIMARY KEY (id);


--
-- Class Product as table product
--

CREATE TABLE "product" (
  "id" serial,
  "name" text NOT NULL,
  "price" double precision NOT NULL,
  "description" text NOT NULL
);

ALTER TABLE ONLY "product"
  ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Class User as table user
--

CREATE TABLE "user" (
  "id" serial,
  "name" text NOT NULL,
  "userName" text NOT NULL,
  "password" text NOT NULL
);

ALTER TABLE ONLY "user"
  ADD CONSTRAINT user_pkey PRIMARY KEY (id);


