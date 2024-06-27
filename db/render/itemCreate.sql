CREATE TABLE public.items (
  "Itemnum" INTEGER NOT NULL CHECK ("Itemnum" >= 0),
  "ItemName" VARCHAR(25) NOT NULL,
  "CatPage" INTEGER DEFAULT 0,
  "Price" DECIMAL(17, 2) DEFAULT 0.00,
  "CatDescription" VARCHAR(200) NOT NULL,
  "Onhand" INTEGER DEFAULT 0,
  "Allocated" INTEGER DEFAULT 0,
  "ReOrder" INTEGER DEFAULT 0,
  "OnOrder" INTEGER DEFAULT 0,
  "Category1" VARCHAR(30),
  "Category2" VARCHAR(30),
  "Special" VARCHAR(8),
  "Weight" DECIMAL(17, 2) DEFAULT 0.00,
  "Minqty" INTEGER DEFAULT 0,
  "imagen" VARCHAR(20),
  PRIMARY KEY ("Itemnum")
);

