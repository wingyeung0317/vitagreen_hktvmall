CREATE TABLE "vitagreen"."Products" (
    "index" int,
    "product_name" text,
    "price" real,
    "link" text,
    "avg_stars" real,
    "stars5" int,
    "stars4" int,
    "stars3" int,
    "stars2" int,
    "stars1" int,
    CONSTRAINT "pk_Products" PRIMARY KEY (
        "index"
     ),
    CONSTRAINT "uc_Products_Link" UNIQUE (
        "link"
    )
);

CREATE TABLE "vitagreen"."Comments" (
    "index" int,
    "link" text,
    "comment" text,
    "stars" int
);

ALTER TABLE "vitagreen"."Comments" ADD CONSTRAINT "fk_Comments_Link" FOREIGN KEY("link")
REFERENCES "vitagreen"."Products" ("link");