DROP TABLE IF EXISTS "public"."animated_svg_block";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."animated_svg_block" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    "image" uuid,
    CONSTRAINT "animated_svg_block_background_image_fKey" FOREIGN KEY ("image") REFERENCES "public"."directus_files"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."articles";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."articles" (
    "id" uuid NOT NULL,
    "sort" int4,
    "user_created" uuid,
    "date_created" timestamptz,
    "user_updated" uuid,
    "date_updated" timestamptz,
    "title" varchar(255),
    "faicon" varchar(255),
    "content" text,
    "slug" varchar(255),
    "status" varchar(255) NOT NULL DEFAULT 'draft'::character varying,
    "category" varchar(255),
    "style_mods" json,
    "variant" varchar(255),
    CONSTRAINT "articles_user_created_fKey" FOREIGN KEY ("user_created") REFERENCES "public"."directus_users"("id"),
    CONSTRAINT "articles_user_updated_fKey" FOREIGN KEY ("user_updated") REFERENCES "public"."directus_users"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."basic_cta";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."basic_cta" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "title" varchar(255),
    "content" text,
    "buttons" uuid,
    "image" uuid,
    "background_image" uuid,
    CONSTRAINT "b_image_fKey" FOREIGN KEY ("image") REFERENCES "public"."directus_files"("id"),
    CONSTRAINT "basic_cta_background_image_fKey" FOREIGN KEY ("background_image") REFERENCES "public"."directus_files"("id"),
    CONSTRAINT "bcta_image_fKey" FOREIGN KEY ("image") REFERENCES "public"."directus_files"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."button";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."button" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "button_text" varchar(255),
    "button_type" varchar(255),
    "fontawesome_icon" varchar(255),
    "variant" varchar(255),
    "parentlist" uuid,
    CONSTRAINT "button_parentlist_foreign" FOREIGN KEY ("parentlist") REFERENCES "public"."button_list"("id") ON DELETE SET NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."button_list";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."button_list" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."card";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."card" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "title" varchar(255),
    "content" text,
    "sub_heading" varchar(255),
    "fontawesome_bullet_icon" varchar(255),
    "text_list" json,
    "buttons" uuid,
    "corner_image" uuid,
    "text_input" varchar(255),
    "color" varchar(255),
    CONSTRAINT "card_corner_image_fKey" FOREIGN KEY ("corner_image") REFERENCES "public"."directus_files"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."card_list";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."card_list" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "title" varchar(255),
    "number_of_cards" int4,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."card_ribbon";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."card_ribbon" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."code_display_block";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."code_display_block" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."content_block";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."content_block" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "style_mods" json,
    "variant" varchar(255),
    "content" text,
    "image" uuid,
    "buttons" uuid,
    CONSTRAINT "content_block_button_list_id_fk" FOREIGN KEY ("buttons") REFERENCES "public"."button_list"("id"),
    CONSTRAINT "content_block_image_fKey" FOREIGN KEY ("image") REFERENCES "public"."directus_files"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."content_pair";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."content_pair" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "reverse" json,
    "image" uuid,
    "image_above" uuid,
    "title" varchar(255),
    "content" text,
    "buttons" uuid,
    CONSTRAINT "content_pair_button_list_id_fk" FOREIGN KEY ("buttons") REFERENCES "public"."button_list"("id"),
    CONSTRAINT "content_pair_image_above_fKey" FOREIGN KEY ("image_above") REFERENCES "public"."directus_files"("id"),
    CONSTRAINT "content_pair_image_fKey" FOREIGN KEY ("image") REFERENCES "public"."directus_files"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."content_pairs_list";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."content_pairs_list" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."content_pairs_with_lists";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."content_pairs_with_lists" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "title" varchar(255),
    "content" text,
    "buttons" uuid,
    "fontawesome_icon" varchar(255),
    "text_list" json,
    CONSTRAINT "content_pair_button_list_id_fk" FOREIGN KEY ("buttons") REFERENCES "public"."button_list"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."cta_with_form";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."cta_with_form" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "title" varchar(255),
    "buttons" uuid,
    CONSTRAINT "cta_button_list_id_fk" FOREIGN KEY ("buttons") REFERENCES "public"."button_list"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."dev_notes";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."dev_notes" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "faicon" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

