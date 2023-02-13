-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||| CREATE TABLE |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

CREATE TABLE IF NOT EXISTS "public"."pages" (
	"id" uuid,	"sort" integer,	"user_created" uuid,	"date_created" timestamptz,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"faicon" varchar(255),	"slug" varchar(255),
	"status" varchar(255) default 'draft'::character varying not null,
	"category" varchar(255),	"styleMods" json,	"variant" varchar(255),
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."funnels" (
	"id" uuid,	"sort" integer,	"user_created" uuid,	"date_created" timestamptz,	"user_updated" uuid,    "date_updated" timestamptz,
	"title" varchar(255),	"faicon" varchar(255),	"content" text,	"slug" varchar(255),
	"status" varchar(255) default 'draft'::character varying not null,
	"category" varchar(255),	"styleMods" json,	"variant" varchar(255),
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."articles" (
	"id" uuid,	"sort" integer,	"user_created" uuid,	"date_created" timestamptz,	"user_updated" uuid,    "date_updated" timestamptz,
	"title" varchar(255),	"faicon" varchar(255),	"content" text,	"slug" varchar(255),
	"status" varchar(255) default 'draft'::character varying not null,
	"category" varchar(255),	"styleMods" json,	"variant" varchar(255),

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."guides" (
	"id" uuid,	"sort" integer,	"user_created" uuid,	"date_created" timestamptz,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"faicon" varchar(255),	"content" text,	"slug" varchar(255),
	"status" varchar(255) default 'draft'::character varying not null,
	"category" varchar(255),	"styleMods" json,	"variant" varchar(255),

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."short_hero" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"faicon" varchar(255),	"content" text,	"styleMods" json,	"variant" varchar(255),

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."flex_hero" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"background_image" uuid ,
	"image" uuid ,
	"image_above" uuid ,
	"title" varchar(255) ,	"content" text ,
	"buttons" uuid,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."overflow" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"background_image" uuid ,
	"form_embed" UUID ,
	"image_above" uuid ,
	"title" varchar(255) ,	"content" text ,
	"buttons" uuid,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."quote_slider_banner" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"background_image" uuid ,
	"quote_rating" integer ,
	"title" varchar(255) ,	"content" text ,
	"attribution" varchar(255),

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."quote_list" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."quote_object" (
	"id" uuid,	"sort" integer,	"user_created" uuid,	"date_created" timestamptz,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."editor_select" (
	"id" uuid,	"sort" integer,	"user_created" uuid,	"date_created" timestamptz,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,	"styleMods" json,	"variant" varchar(255),

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."dev_notes" (
	"id" uuid,	"sort" integer,	"user_created" uuid,	"date_created" timestamptz,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"faicon" varchar(255),	"content" text,	"styleMods" json,
	"variant" varchar(255) ,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."content_pair" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"reverse" json ,
	"image" uuid ,
	"image_above" uuid ,
	"title" varchar(255) ,	"content" text ,
	"buttons" uuid,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."content_pairs_list" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,	"styleMods" json,
	"variant" varchar(255) ,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."content_pairs_with_lists" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"title" varchar(255) ,	"content" text ,
	"buttons" uuid ,
	"fontawesome_icon" varchar(255) ,
	"text_list" json,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."image_with_content_list" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,
	"image" uuid,	"variant" varchar(255),

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."flex_item_display" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"flex_item" json,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."cta_with_form" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"title" varchar(255) ,
	"buttons" uuid,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."basic_cta" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"title" varchar(255) ,	"content" text ,
	"buttons" uuid ,
	"image" uuid ,
	"background_image" uuid,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."flex_card_display" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,	"styleMods" json,
	"variant" varchar(255) ,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."recent_posts" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,	"styleMods" json,	"variant" varchar(255),
	"number_of_posts" integer ,
	"buttons" uuid,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."faq_section" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,	"styleMods" json,	"variant" varchar(255),

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."faq_list" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text ,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."faq_item" (
	"id" uuid,	"sort" integer,	"user_created" uuid,        	    "date_created" timestamptz,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,
	"fontawesome_icon" varchar(255) ,	"question" text ,	"answer" text,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."structure_picker" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,
	"date_updated" timestamptz ,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."mc_flex" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."mc_grid" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,
	"date_updated" timestamptz ,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."mc_artisan_structures" (
	"id" uuid,	"sort" integer,	"user_created" uuid,	"date_created" timestamptz,	"user_updated" uuid,	"date_updated" timestamptz ,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."basic_cta" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
    "title" varchar(255) ,	"content" text ,
	"buttons" uuid ,	"image" uuid,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
	"background_image" uuid,

    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."card_list" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"title" varchar(255) ,	"number_of_cards" integer,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."button_list" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,
	"variant" varchar(255) ,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."card" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
	"title" varchar(255) ,	"content" text ,    "sub_heading" varchar(255) ,	"fontawesome_bullet_icon" varchar(255) ,
	"text_list" json ,	"buttons" uuid ,	"corner_image" uuid ,	"text_input" varchar(255) ,	"color" varchar(255),
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."content_block" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"styleMods" json,	"variant" varchar(255),	"content" text ,
	"image" uuid ,	"buttons" uuid,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."button" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,
	"button_text" varchar(255),
	"button_type" varchar(255),
	"fontawesome_icon" varchar(255),	"variant" varchar(255),
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."code_display_block" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"styleMods" json,	"variant" varchar(255),
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."form_embed_raw" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,	"styleMods" json,
	"variant" varchar(255) ,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."image_block" (
	"id" uuid,	  "sort" integer,	  "user_updated" uuid,	  "date_updated" timestamptz,
	"title" varchar(255),	  "content" text,
	"styleMods" json,	  "variant" varchar(255),
    "image" uuid,

    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."animated_svg_block" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,
	"title" varchar(255),	"content" text,
	"styleMods" json,	"variant" varchar(255),   	"image" uuid,
    "dt_img" uuid,      "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."card_ribbon" (
	"id" uuid,	"sort" integer,	"user_updated" uuid,	"date_updated" timestamptz,	"styleMods" json,	"variant" varchar(255),
    "dt_img" uuid,         "dt_3" uuid,       "dt_2" uuid,       "dt_1" uuid,   
    PRIMARY KEY ("id")
);

-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||ALTER TABLES QUERIES/ADD CONSTRAINTS||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
ALTER TABLE "public"."pages"
ADD CONSTRAINT "pages_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "pages_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."funnels"
ADD CONSTRAINT "funnels_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "funnels_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."articles"
ADD CONSTRAINT "articles_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "articles_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."guides"
ADD CONSTRAINT "guides_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "guides_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."short_hero"
ADD CONSTRAINT "short_hero_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."flex_hero"
ADD CONSTRAINT "flex_hero_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."overflow"
ADD CONSTRAINT "overflow_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."quote_slider_banner"
ADD CONSTRAINT "quote_slider_banner_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."quote_list"
ADD CONSTRAINT "quote_list_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."quote_object"
ADD CONSTRAINT "quote_object_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "quote_object_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."editor_select"
ADD CONSTRAINT "editor_select_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "editor_select_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."dev_notes"
ADD CONSTRAINT "dev_notes_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "dev_notes_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pair"
ADD CONSTRAINT "content_pair_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pairs_list"
ADD CONSTRAINT "content_pairs_list_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pairs_with_lists"
ADD CONSTRAINT "content_pairs_with_lists_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."image_with_content_list"
ADD CONSTRAINT "image_with_content_list_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."flex_item_display"
ADD CONSTRAINT "flex_item_display_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION ;

ALTER TABLE "public"."cta_with_form"
ADD CONSTRAINT "cta_with_form_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."basic_cta"
ADD CONSTRAINT "basic_cta_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."flex_card_display"
ADD CONSTRAINT "flex_card_display_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."recent_posts"
ADD CONSTRAINT "recent_posts_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_section"
ADD CONSTRAINT "faq_section_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_list"
ADD CONSTRAINT "faq_list_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_item"
ADD CONSTRAINT "faq_item_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "faq_item_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."structure_picker"
ADD CONSTRAINT "structure_picker_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."mc_flex"
ADD CONSTRAINT "mc_flex_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."mc_grid"
ADD CONSTRAINT "mc_grid_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."mc_artisan_structures"
ADD CONSTRAINT "mc_artisan_structures_user_created_fKey"        FOREIGN KEY ("user_created")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "mc_artisan_structures_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."card_list"
ADD CONSTRAINT "card_list_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."button_list"
ADD CONSTRAINT "button_list_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."card"
ADD CONSTRAINT "card_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_block"
ADD CONSTRAINT "content_block_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."button"
ADD CONSTRAINT "button_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."code_display_block"
ADD CONSTRAINT "code_display_block_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."form_embed_raw"
ADD CONSTRAINT "form_embed_raw_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."image_block"
ADD CONSTRAINT "image_block_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."animated_svg_block"
ADD CONSTRAINT "animated_svg_block_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."card_ribbon"
ADD CONSTRAINT "card_ribbon_user_updated_fKey"        FOREIGN KEY ("user_updated")     REFERENCES "public"."directus_users"("id")        ON UPDATE NO ACTION ON DELETE NO ACTION;


-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||ALTER TABLES QUERIES/ADD CONSTRAINTS 1||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
ALTER TABLE "public"."flex_hero"
		ADD CONSTRAINT "flex_hero_image_fKey"		FOREIGN KEY ("image")			REFERENCES "public"."directus_files"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "flex_hero_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."overflow"
		ADD CONSTRAINT "overflow_form_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."form_embed_raw"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "overflow_button_foreign_fKey"		FOREIGN KEY ("dt_2")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."quote_slider_banner"
		ADD CONSTRAINT "quote_slider_banner_background_image_fKey"	FOREIGN KEY ("background_image")  REFERENCES "public"."directus_files"("id")		ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pair"
		ADD CONSTRAINT "content_pair_image_fKey"		            FOREIGN KEY ("image")			REFERENCES "public"."directus_files"("id")			ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_pair_image_above_fKey"		        FOREIGN KEY ("image_above")		REFERENCES "public"."directus_files"("id")			ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_pair_button_foreign_fKey"		    FOREIGN KEY ("dt_1")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_pairs_list_foreign_fKey"		    FOREIGN KEY ("dt_2")			REFERENCES "public"."content_pair"("id")			ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pairs_with_lists"
		ADD CONSTRAINT "content_pairs_with_lists_foreign_fKey"	    FOREIGN KEY ("dt_1")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."image_with_content_list"
		ADD CONSTRAINT "image_with_content_list_background_image_fKey"		FOREIGN KEY ("image")			REFERENCES "public"."directus_files"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."cta_with_form"
		ADD CONSTRAINT "cta_with_form_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."basic_cta"
		ADD CONSTRAINT "basic_cta_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "basic_cta_background_image_fKey"		FOREIGN KEY ("background_image")			REFERENCES "public"."directus_files"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."recent_posts"
		ADD CONSTRAINT "recent_posts_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_list"
		ADD CONSTRAINT "faq_section_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."faq_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_item"
		ADD CONSTRAINT "faq_list_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."faq_item"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."card"
		ADD CONSTRAINT "flex_card_display_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."card"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "card_list_foreign_fKey"		FOREIGN KEY ("dt_2")			REFERENCES "public"."card_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "card_button_foreign_fKey"		FOREIGN KEY ("dt_3")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "card_corner_image_fKey"		FOREIGN KEY ("corner_image")			REFERENCES "public"."directus_files"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_block"
		ADD CONSTRAINT "image_with_content_list_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."content_block"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_block_image_fKey"		FOREIGN KEY ("image")			REFERENCES "public"."directus_files"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_block_foreign_fKey"		FOREIGN KEY ("dt_2")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."button"
		ADD CONSTRAINT "button_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."button_list"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."image_block"
		ADD CONSTRAINT "image_block_background_image_fKey"		FOREIGN KEY ("image")			REFERENCES "public"."directus_files"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."animated_svg_block"
		ADD CONSTRAINT "animated_svg_block_background_image_fKey"		FOREIGN KEY ("image")			REFERENCES "public"."directus_files"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "quote_list_foreign_fKey"		FOREIGN KEY ("dt_1")			REFERENCES "public"."quote_object"("id")				ON UPDATE NO ACTION ON DELETE NO ACTION;

-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| INSERT INTO DIRECTUS COLLECTIONS ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
insert into directus_collections  (       collection,        icon,      note, display_template,   hidden, singleton,translations,archive_field, archive_app_filter,archive_value,unarchive_value,sort_field,accountability,color,item_duplication_fields,sort,   "group",      collapse      )
VALUES                            (   'attributes',                   'settings_suggest',         'attributes are config sections,  Either for global site variables, or common configs for post types.', null, false, false, '[{"language":"en-US","translation":"🕹️ attributes","singular":"🕹️ attribute","plural":"🕹️ attributes"}]', null, true, null, null, null, 'all', '#6F2AE8', null, 4, 'modocosm_core', 'open'),
                                  (   'modocosm_core',                'rocket_launch',             null, null, false, true, null, 'status', true, 'archived', 'draft', null, 'all', '#6D41A1', '["font_size_m1921","line_height_m1921","font_size_uwh","line_height_uwh","line_height_m1499","font_size_m1499","font_size_m1199","line_height_m1199","font_size_m992","line_height_m992","font_size_m767","line_height_m767"]', 1, null, 'closed'),
                                  (   'bolts',                        'insert_link',              'bolts Link your bricks together, they are the smallest element of your artistic work.', null, false, false, null, null, true, null, null, null, 'all', '#A2B5CD', null, 5, 'modocosm_components', 'closed'),
                                  (   'the_sandbox',                  'grid_on',                  'Storage of Artisan Structures', null, false, false, '[{"language":"en-US","translation":"Artisan Structures"}]', null, true, null, null, null, 'all', '#2ECDA7', null, 1, 'blueprints', 'open'),
                                  (   'blueprints',                   'foundation',               'the Structure Planner, Like the slice master, enables your creative desires. Unlike the slice master, what it provides is mostly invisible', null, false, false, null, null, true, null, null, null, 'all', '#2ECDA7', null, 1, 'sliceMaster_configs', 'closed'),
                                  (   'chapters',                     'collections_bookmark',     'chapters Like buildings, Hold the Masterpiece Together', null, false, false, null, null, true, null, null, null, 'all', '#FFA439', null, 1, 'buildings', 'open'),
                                  (   'blobs',                        'water_drop',               'blobs, Like bolts, are rarely noticed but are the real heroes of the story', null, false, false, null, null, true, null, null, null, 'all', '#A2B5CD', null, 1, 'bolts', 'open'),
                                  (   'buildings',                    'location_city',            'slices are Made up of buildings, like a city scape.', null, false, false, null, null, true, null, null, null, 'all', '#FFA439', null, 3, 'modocosm_components', 'closed'),
                                  (   'global_seo',                   'manage_search',             null, null, false, true, null, null, true, null, null, null, 'all', '#B58BFF', null, 3, 'modocosm_core', 'open'),
                                  (   'Stories',                      'menu_book',                'Stories are a Subtype of slice, meant for holding content built from repeating similar pieces. E.G. An FAQ', null, false, false, null, null, true, null, null, null, 'all', '#1D25EE', null, 1, 'slices', 'open'),
                                  (   'sliceMaster_configs',          'carpenter',                'sliceMaster Modules: are different preselect combinations of components that work great together!', null, false, false, null, null, true, null, null, null, 'all', '#6F2AE8', null, 1, 'modocosm_components', 'closed'),
                                  (   'modocosm_core_translations',   'import_export',             null, null, true, false, null, null, true, null, null, null, 'all', null, null, 1, 'modocosm_core', 'open'),
                                  (   'snippets',                     'book',                     'snippets are like bricks, they hold the chapter together', null, false, false, null, null, true, null, null, null, 'all', '#E35169', null, 1, 'bricks', 'open'),
                                  (   'slices',                       'streetview',               'slices are Hand Crafted Horizontal Strips of your website.', null, false, false, null, null, true, null, null, null, 'all', '#1D25EE', null, 2, 'modocosm_components', 'closed'),
                                  (   'modocosm_components',          'storage',                  'modocosm_components', null, false, false, null, null, true, null, null, null, 'all', '#6F2AE8', null, 5, 'modocosm_core', 'closed'),
                                  (   'bricks',                       'grid_view',                'bricks are building blocks of your Masterpiece', null, false, false, null, null, true, null, null, null, 'all', '#E35169', null, 4, 'modocosm_components', 'closed');
 

insert into directus_collections    (       collection,           icon,         note, display_template,   hidden,       singleton,translations,archive_field, archive_app_filter,archive_value,unarchive_value,sort_field,accountability,color,item_duplication_fields,sort,   "group",      collapse      )
VALUES                              ('pages',                     null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),         
                                    ('theme_styles',            'format_paint', null,        null,        'false',         'true',        null,        null,         'true',        null,        null,        null,       'all',      '#B58BFF',      null,           2, 'modocosm_core', 'open'),
                                    ('funnels',                   null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),         
                                    ('articles',                  null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),             
                                    ('guides',                    null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),         
                                    ('short_hero',               'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),             
                                    ('flex_hero',                'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),             
                                    ('overflow',                 'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),             
                                    ('quote_slider_banner',      'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                     
                                    ('quote_list',                null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),             
                                    ('quote_object',              null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,     'bolts',        'open'       ),                 
                                    ('editor_select',             null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'slices',        'open'       ),                 
                                    ('dev_notes',                'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),             
                                    ('content_pair',             'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                 
                                    ('content_pairs_list',       'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                     
                                    ('content_pairs_with_lists', 'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                             
                                    ('image_with_content_list',  'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                         
                                    ('flex_item_display',        'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                     
                                    ('cta_with_form',            'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                 
                                    ('basic_cta',                'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),             
                                    ('flex_card_display',        'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                     
                                    ('recent_posts',             'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),                 
                                    ('faq_section',              'streetview',  null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',   '#1D25EE',        null,        null,    'slices',        'open'       ),             
                                    ('faq_list',                  null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),         
                                    ('faq_item',                  null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,     'bolts',        'open'       ),             
                                    ('structure_picker',          null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),                     
                                    ('mc_flex',                   null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),         
                                    ('mc_grid',                   null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),         
                                    ('mc_artisan_structures',     null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),                                      
                                    ('card_list',                 null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),             
                                    ('button_list',               null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),             
                                    ('card',                      null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,     'bolts',        'open'       ),         
                                    ('content_block',             null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'slices',        'open'       ),                 
                                    ('button',                    null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,     'bolts',        'open'       ),         
                                    ('code_display_block',        null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),                     
                                    ('form_embed_raw',            null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),                 
                                    ('image_block',               null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),             
                                    ('animated_svg_block',        null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       ),                     
                                    ('card_ribbon',               null,         null,        null,        'false',        'false',        null,        null,        'false',        null,        null,        null,        'all',        null,        null,        null,    'bricks',        'open'       );   
    
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| INSERT INTO DIRECTUS RELATIONS ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
insert into "public"."directus_relations"   ("many_collection",          "many_field",          "one_collection",         "one_field", "one_collection_field", "one_allowed_collections", "junction_field", "sort_field", "one_deselect_action"  )
values                                      ('animated_svg_block',       'background_image',    'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('basic_cta',                'image',               'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('basic_cta',                'background_image',    'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('basic_cta',                'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('button',                   'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               'sort',    'nullify            '),
                                            ('card',                     'background_image',    'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('card',                     'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('card',                     'foreign',             'card_list',               NULL,         NULL,                  NULL,                        NULL,               'sort',    'nullify            '),
                                            ('card',                     'foreign',             'flex_card_display',       NULL,         NULL,                  NULL,                        NULL,               'sort',    'nullify            '),
                                            ('content_block',            'background_image',    'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_block',            'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_block',            'foreign',             'image_with_content_list', NULL,         NULL,                  NULL,                        NULL,               'sort',    'nullify            '),
                                            ('content_pair',             'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_pair',             'foreign',             'content_pairs_list',      NULL,         NULL,                  NULL,                        NULL,               'sort',    'nullify            '),
                                            ('content_pair',             'image',               'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_pair',             'image',               'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_pairs_with_lists', 'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('cta_with_form',            'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('faq_item',                 'foreign',             'faq_list',                NULL,         NULL,                  NULL,                        NULL,               'sort',    'nullify            '),
                                            ('faq_list',                 'foreign',             'faq_section',             NULL,         NULL,                  NULL,                        NULL,               'sort',    'nullify            '),
                                            ('flex_hero',                'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('flex_hero',                'image',               'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('image_block',              'background_image',    'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('image_with_content_list',  'background_image',    'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('overflow',                 'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('overflow',                 'foreign',             'form_embed_raw',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('quote_object',             'foreign',             'quote_list',              NULL,         NULL,                  NULL,                        NULL,               'sort',    'nullify            '),
                                            ('quote_slider_banner',      'background_image',    'directus_files',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('recent_posts',             'foreign',             'button_list',             NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('pages',                    'user_created',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('funnels',                  'user_created',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('guides',                   'user_created',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('quote_object',             'user_created',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('editor_select',            'user_created',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('dev_notes',                'user_created',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('faq_item',                 'user_created',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('mc_artisan_structures',    'user_created',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('pages',                    'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('funnels',                  'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('articles',                 'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('guides',                   'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('short_hero',               'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('flex_hero',                'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('overflow',                 'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('quote_slider_banner',      'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('quote_list',               'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('quote_object',             'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('editor_select',            'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('dev_notes',                'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_pair',             'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_pairs_list',       'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_pairs_with_lists', 'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('image_with_content_list',  'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('flex_item_display',        'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('cta_with_form',            'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('basic_cta',                'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('flex_card_display',        'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('recent_posts',             'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('faq_section',              'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('faq_list',                 'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('faq_item',                 'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('structure_picker',         'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('mc_flex',                  'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('mc_grid',                  'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('mc_artisan_structures',    'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('basic_cta',                'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('card_list',                'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('button_list',              'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('card',                     'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('content_block',            'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('button',                   'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('code_display_block',       'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('form_embed_raw',           'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('image_block',              'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('animated_svg_block',       'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            '),
                                            ('card_ribbon',              'user_updated',        'directus_users',          NULL,         NULL,                  NULL,                        NULL,               NULL,      'nullify            ');

-- ||       ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||                 |||||                       ||||||              |||||||||||||||||||||||||||||||||||||||||||||INSERT INTO DIRECTUS            FIELDS||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
INSERT INTO "public"."directus_fields"	( collection,    field,    special,    interface,    "options",    display,    display_options,    readonly,    hidden,    sort,    width,    translations,    note,    conditions,    required,    "group",    validation,         validation_message)
VALUES                              	('flex_hero',   'background_image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('flex_hero',   'left_content',    'alias,no-data,group',    'group-detail',    '{"headercolor":"#00B5C2","headerIcon":"title"}',    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('flex_hero',   'right_content',    'alias,no-data,group',    'group-detail',    '{"headercolor":"#00B5C2","headerIcon":"title"}',    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('flex_hero',   'image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'right_content',    NULL,    NULL),
	                                    ('flex_hero',   'image_above',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('flex_hero',   'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('flex_hero',   'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('flex_hero',   'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('overflow',    'background_image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('overflow',    'left_content',    'alias,no-data,group',    'group-detail',    '{"headercolor":"#00B5C2","headerIcon":"title"}',    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('overflow',    'right_content',    'alias,no-data,group',    'group-detail',    '{"headercolor":"#00B5C2","headerIcon":"title"}',    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('overflow',    'form_embed',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'branches',    NULL,    NULL),
	                                    ('overflow',    'image_above',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('overflow',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('overflow',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('overflow',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('quote_slider_banner',    'background_image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('quote_slider_banner',    'quote_rating',    NULL,    'slider',    '{"minValue":1,"maxValue":5,"alwaysShowValue":true}',    'rating',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('quote_slider_banner',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('quote_slider_banner',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('quote_slider_banner',    'attribution',    NULL,    'input',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('editor_select',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('editor_select',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pair',    'reverse',    'cast-boolean',    'boolean',    '{"colorOn":"#00FF00","iconOn":"account_circle","iconOff":"assessment","label":"Reversable?","colorOff":"#FF0000"}',    'boolean',    '{"labelOn":"fasdasdf","labelOff":"dfasasdf","colorOn":"#2ECDA7","colorOff":"#E35169","iconOn":"arrow_circle_down","iconOff":"add_to_drive"}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pair',    'left_content',    'alias,no-data,group',    'group-detail',    '{"headercolor":"#00B5C2","headerIcon":"title"}',    NULL,    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pair',    'right_content',    'alias,no-data,group',    'group-detail',    '{"headercolor":"#00B5C2","headerIcon":"title"}',    NULL,    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pair',    'image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'right_content',    NULL,    NULL),
	                                    ('content_pair',    'image_above',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('content_pair',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('content_pair',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('content_pair',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pairs_list',    'pairs_list',    'o2m',    'list-o2m',    '{"template":"{{id}}{{status}}{{title}}","limit":27,"enableLink":true}',    'related-values',    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pairs_with_lists',    'fontawesome_icon',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pairs_with_lists',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pairs_with_lists',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pairs_with_lists',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pairs_with_lists',    'fontawesome_icon',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_pairs_with_lists',    'text_list',    'cast-json',    'list',    '{"addLabel":"Add Bullet","fields":[{"field":"bullett","name":"bullett","type":"string","meta":{"field":"bullett","width":"half","type":"string","interface":"input","options":{"iconLeft":"create","trim":true}}},{"field":"faicon","name":"faicon","type":"string","meta":{"field":"faicon","width":"half","type":"string","interface":"input","note":"insert font awesome icon","options":{"iconLeft":"playlist_add_circle","font":"monospace","trim":true}}}]}',    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('image_with_content_list',    'content_block',    'o2m',    'list-o2m',    '{"template":"{{id}}{{status}}{{title}}","limit":27,"enableLink":true}',    'related-values',    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('image_with_content_list',    'image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'right_content',    NULL,    NULL),
	                                    ('flex_item_display',    'flex_item',    'cast-json',    'list',    '{"fields":[{"field":"fontawesome_icon","name":"fontawesome_icon","type":"string","meta":{"field":"fontawesome_icon","width":"half","type":"string","interface":"input"}},{"field":"text","name":"text","type":"string","meta":{"field":"text","width":"half","type":"string","interface":"input"}}]}',    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('cta_with_form',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('cta_with_form',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('basic_cta',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('basic_cta',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('basic_cta',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('basic_cta',    'image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'right_content',    NULL,    NULL),
	                                    ('basic_cta',    'background_image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('flex_card_display',    'cards',    'o2m',    'list-o2m',    '{"template":"{{id}}{{status}}{{title}}","limit":27,"enableLink":true}',    'related-values',    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('recent_posts',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('recent_posts',    'number_of_posts',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('recent_posts',    'content',    NULL,    'text',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('recent_posts',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('faq_section',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('faq_section',    'faq_list',    'o2m',    'list-o2m',    '{"template":"{{id}}{{status}}{{title}}","limit":27,"enableLink":true}',    'related-values',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('faq_list',    'faq_item',    'o2m',    'list-o2m',    '{"template":"{{id}}{{status}}{{title}}","limit":27,"enableLink":true}',    'related-values',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('faq_item',    'fontawesome_icon',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('faq_item',    'question',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('faq_item',    'answer',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('basic_cta',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('basic_cta',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('basic_cta',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    'left_content',    NULL,    NULL),
	                                    ('basic_cta',    'image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    'right_content',    NULL,    NULL),
	                                    ('basic_cta',    'background_image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card_list',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card_list',    'number_of_cards',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card_list',    'cards',    'o2m',    'list-o2m',    '{"template":"{{id}}{{status}}{{title}}","limit":27,"enableLink":true}',    'related-values',    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('button_list',    'buttons',    'o2m',    'list-o2m',    '{"template":"{{id}}{{status}}{{title}}","limit":27,"enableLink":true}',    'related-values',    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('button_list',    'pick_a_structure',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    'manually',    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'fontawesome_icon',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'sub_heading',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'fontawesome_bullet_icon',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'text_list',    'cast-json',    'list',    '{"addLabel":"Add Bullet","fields":[{"field":"bullett","name":"bullett","type":"string","meta":{"field":"bullett","width":"half","type":"string","interface":"input","options":{"iconLeft":"create","trim":true}}},{"field":"faicon","name":"faicon","type":"string","meta":{"field":"faicon","width":"half","type":"string","interface":"input","note":"insert font awesome icon","options":{"iconLeft":"playlist_add_circle","font":"monospace","trim":true}}}]}',    NULL,    NULL,    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'corner_image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'text_input',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('card',    'color',    NULL,    'select-color',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_block',    'title',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_block',    'content',    NULL,    'input-rich-text-html',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_block',    'image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('content_block',    'buttons',    'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'true',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('button',    'button_text',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('button',    'button_type',    NULL,    'select-dropdown',    '{"allowOther":true}',    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('button',    'fontawesome_icon',    NULL,    'input',    NULL,    'raw',    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('button',    'button_functions',    NULL,    'select-radio',    NULL,    NULL,    NULL,    'false',    'false',    NULL,    NULL,    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('form_embed_raw',    'embed_code',    NULL,    'input-code',    '{"language":"html"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('image_block',    'image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('animated_svg_block',    'image',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'full',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
	                                    ('mc_artisan_structures', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('mc_artisan_structures', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('mc_artisan_structures', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('mc_artisan_structures', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('mc_artisan_structures', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('mc_artisan_structures', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('basic_cta', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('basic_cta', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('basic_cta', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('basic_cta', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('basic_cta', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('basic_cta', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('card_list', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card_list', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card_list', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card_list', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card_list', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('card_list', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('button_list', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('button_list', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('button_list', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('button_list', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('button_list', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('button_list', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('card', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('card', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('content_block', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('content_block', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('content_block', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('content_block', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('content_block', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
	                                    ('content_block', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('content_block', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('button', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('button', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('button', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('button', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('button', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('button', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('code_display_block', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('code_display_block', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('code_display_block', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('code_display_block', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('code_display_block', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
	                                    ('code_display_block', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('code_display_block', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('form_embed_raw', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('form_embed_raw', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('form_embed_raw', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('form_embed_raw', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('form_embed_raw', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
	                                    ('form_embed_raw', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
	                                    ('form_embed_raw', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('form_embed_raw', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('image_block', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('image_block', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('image_block', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('image_block', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('image_block', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
	                                    ('image_block', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
	                                    ('image_block', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('image_block', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('animated_svg_block', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('animated_svg_block', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('animated_svg_block', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('animated_svg_block', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('animated_svg_block', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
	                                    ('animated_svg_block', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
	                                    ('animated_svg_block', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('animated_svg_block', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
	                                    ('card_ribbon', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card_ribbon', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card_ribbon', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩&zwj;💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card_ribbon', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
	                                    ('card_ribbon', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
	                                    ('card_ribbon', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('pages', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL ),
                                        ('pages', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('pages', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('pages', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('pages', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('pages', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('pages', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('pages', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('pages', 'faicon', NULL, 'input', '{"iconLeft":"content_paste_go","font":"monospace","trim":true,"placeholder":"<font-awesome-icon icon=\"fa-brands fa-github\" />"}', 'icon', '{"font":"monospace","filled":true,"color":"#D10000"}', 'false', 'false', '2', 'half', NULL, '💯FONT AWESOME: Use the 3rd option on the HTML copy/paste "Vue"💯', NULL, 'false', 'top_level', NULL, NULL),
                                        ('pages', 'slug', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '3', 'half', NULL, NULL, NULL, 'false', 'top_level', NULL, NULL),
                                        ('pages', 'status', NULL, NULL, NULL, NULL, NULL, 'false', 'false', '4', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('pages', 'category', NULL, 'select-dropdown', '{"choices":[{"text":"Get Started","value":"get-started"}],"icon":"text_format","allowOther":true,"allowNone":true}', 'formatted-value', '{"prefix":"https://buychain.co/","suffix":"/","format":true}', 'false', 'false', '5', 'half', NULL, 'Slug: Editable After First save', NULL, 'false', 'top_level', NULL, NULL),
                                        ('pages', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('pages', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('funnels', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('funnels', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('funnels', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('funnels', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('funnels', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('funnels', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('funnels', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('funnels', 'faicon', NULL, 'input', '{"iconLeft":"content_paste_go","font":"monospace","trim":true,"placeholder":"<font-awesome-icon icon=\"fa-brands fa-github\" />"}', 'icon', '{"font":"monospace","filled":true,"color":"#D10000"}', 'false', 'false', '2', 'half', NULL, '💯FONT AWESOME: Use the 3rd option on the HTML copy/paste "Vue"💯', NULL, 'false', 'top_level', NULL, NULL),
                                        ('funnels', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('funnels', 'slug', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '3', 'half', NULL, NULL, NULL, 'false', 'top_level', NULL, NULL),
                                        ('funnels', 'status', NULL, NULL, NULL, NULL, NULL, 'false', 'false', '4', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('funnels', 'category', NULL, 'select-dropdown', '{"choices":[{"text":"Get Started","value":"get-started"}],"icon":"text_format","allowOther":true,"allowNone":true}', 'formatted-value', '{"prefix":"https://buychain.co/","suffix":"/","format":true}', 'false', 'false', '5', 'half', NULL, 'Slug: Editable After First save', NULL, 'false', 'top_level', NULL, NULL),
                                        ('funnels', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('funnels', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('articles', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('articles', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('articles', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('articles', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('articles', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('articles', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('articles', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('articles', 'faicon', NULL, 'input', '{"iconLeft":"content_paste_go","font":"monospace","trim":true,"placeholder":"<font-awesome-icon icon=\"fa-brands fa-github\" />"}', 'icon', '{"font":"monospace","filled":true,"color":"#D10000"}', 'false', 'false', '2', 'half', NULL, '💯FONT AWESOME: Use the 3rd option on the HTML copy/paste "Vue"💯', NULL, 'false', 'top_level', NULL, NULL),
                                        ('articles', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('articles', 'slug', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '3', 'half', NULL, NULL, NULL, 'false', 'top_level', NULL, NULL),
                                        ('articles', 'status', NULL, NULL, NULL, NULL, NULL, 'false', 'false', '4', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('articles', 'category', NULL, 'select-dropdown', '{"choices":[{"text":"Get Started","value":"get-started"}],"icon":"text_format","allowOther":true,"allowNone":true}', 'formatted-value', '{"prefix":"https://buychain.co/","suffix":"/","format":true}', 'false', 'false', '5', 'half', NULL, 'Slug: Editable After First save', NULL, 'false', 'top_level', NULL, NULL),
                                        ('articles', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('articles', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('guides', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('guides', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('guides', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('guides', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('guides', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('guides', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('guides', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('guides', 'faicon', NULL, 'input', '{"iconLeft":"content_paste_go","font":"monospace","trim":true,"placeholder":"<font-awesome-icon icon=\"fa-brands fa-github\" />"}', 'icon', '{"font":"monospace","filled":true,"color":"#D10000"}', 'false', 'false', '2', 'half', NULL, '💯FONT AWESOME: Use the 3rd option on the HTML copy/paste "Vue"💯', NULL, 'false', 'top_level', NULL, NULL),
                                        ('guides', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('guides', 'slug', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '3', 'half', NULL, NULL, NULL, 'false', 'top_level', NULL, NULL),
                                        ('guides', 'status', NULL, NULL, NULL, NULL, NULL, 'false', 'false', '4', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('guides', 'category', NULL, 'select-dropdown', '{"choices":[{"text":"Get Started","value":"get-started"}],"icon":"text_format","allowOther":true,"allowNone":true}', 'formatted-value', '{"prefix":"https://buychain.co/","suffix":"/","format":true}', 'false', 'false', '5', 'half', NULL, 'Slug: Editable After First save', NULL, 'false', 'top_level', NULL, NULL),
                                        ('guides', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('guides', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('short_hero', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('short_hero', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('short_hero', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('short_hero', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('short_hero', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('short_hero', 'faicon', NULL, 'input', '{"iconLeft":"content_paste_go","font":"monospace","trim":true,"placeholder":"<font-awesome-icon icon=\"fa-brands fa-github\" />"}', 'icon', '{"font":"monospace","filled":true,"color":"#D10000"}', 'false', 'false', '2', 'half', NULL, '💯FONT AWESOME: Use the 3rd option on the HTML copy/paste "Vue"💯', NULL, 'false', 'top_level', NULL, NULL),
                                        ('short_hero', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('short_hero', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('short_hero', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('flex_hero', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_hero', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_hero', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_hero', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_hero', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('flex_hero', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('overflow', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('overflow', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('overflow', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('overflow', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('overflow', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('overflow', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('quote_slider_banner', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_slider_banner', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_slider_banner', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_slider_banner', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_slider_banner', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('quote_slider_banner', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('quote_list', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_list', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_list', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_list', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_object', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_object', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_object', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_object', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_object', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_object', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('quote_object', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('quote_object', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('editor_select', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('editor_select', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('editor_select', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('editor_select', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('editor_select', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('editor_select', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('editor_select', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('editor_select', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('editor_select', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('editor_select', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('dev_notes', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('dev_notes', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('dev_notes', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('dev_notes', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('dev_notes', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('dev_notes', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('dev_notes', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('dev_notes', 'faicon', NULL, 'input', '{"iconLeft":"content_paste_go","font":"monospace","trim":true,"placeholder":"<font-awesome-icon icon=\"fa-brands fa-github\" />"}', 'icon', '{"font":"monospace","filled":true,"color":"#D10000"}', 'false', 'false', '2', 'half', NULL, '💯FONT AWESOME: Use the 3rd option on the HTML copy/paste "Vue"💯', NULL, 'false', 'top_level', NULL, NULL),
                                        ('dev_notes', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('dev_notes', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('dev_notes', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('content_pair', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pair', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pair', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pair', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pair', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('content_pair', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('content_pairs_list', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pairs_list', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pairs_list', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pairs_list', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pairs_list', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('content_pairs_list', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('content_pairs_list', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('content_pairs_list', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('content_pairs_with_lists', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pairs_with_lists', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pairs_with_lists', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pairs_with_lists', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('content_pairs_with_lists', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('content_pairs_with_lists', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('image_with_content_list', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('image_with_content_list', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('image_with_content_list', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('image_with_content_list', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('image_with_content_list', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('image_with_content_list', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('flex_item_display', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_item_display', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_item_display', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_item_display', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_item_display', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('flex_item_display', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('cta_with_form', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('cta_with_form', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('cta_with_form', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('cta_with_form', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('cta_with_form', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('cta_with_form', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('basic_cta', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('basic_cta', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('basic_cta', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('basic_cta', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('basic_cta', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('basic_cta', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('flex_card_display', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_card_display', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_card_display', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_card_display', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('flex_card_display', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('flex_card_display', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('flex_card_display', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('flex_card_display', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('recent_posts', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('recent_posts', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('recent_posts', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('recent_posts', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('recent_posts', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('recent_posts', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('recent_posts', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('recent_posts', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('faq_section', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_section', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_section', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_section', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_section', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('faq_section', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('faq_section', 'styleMods', 'cast-json', 'tags', '{"iconLeft":"sell","alphabetize":true}', 'raw', '{"choices":null,"showAsDot":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'customize', NULL, NULL),
                                        ('faq_section', 'variant', NULL, 'select-dropdown', '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}', NULL, NULL, 'false', 'false', '2', 'half', NULL, 'Add Classes to the component and notify tech', NULL, 'false', 'customize', NULL, NULL),
                                        ('faq_list', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_list', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_list', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_list', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_list', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('faq_list', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('faq_item', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_item', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_item', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '3', 'half', '[{"language":"en-US","translation":"👩‍💻 User Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_item', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '4', 'half', '[{"language":"en-US","translation":"🎂 Date Created"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_item', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_item', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('faq_item', 'title', NULL, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', 'false', 'false', '1', 'half', NULL, NULL, NULL, 'true', 'top_level', NULL, NULL),
                                        ('faq_item', 'content', NULL, 'input-rich-text-html', NULL, 'raw', NULL, 'false', 'false', NULL, 'full', NULL, NULL, NULL, 'false', NULL, NULL, NULL),
                                        ('structure_picker', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('structure_picker', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('structure_picker', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('structure_picker', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('mc_flex', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('mc_flex', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('mc_flex', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('mc_flex', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('mc_grid', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', NULL, 'true', 'false', '1', 'half', NULL, NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('mc_grid', 'sort', NULL, 'input', NULL, NULL, NULL, 'false', 'false', '2', 'half', '[{"language":"en-US","translation":"🔀"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('mc_grid', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 'true', 'false', '5', 'half', '[{"language":"en-US","translation":"👩‍💻 User Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),
                                        ('mc_grid', 'date_updated', 'date_updated', 'datetime', NULL, 'datetime', '{"relative":true}', 'true', 'false', '6', 'half', '[{"language":"en-US","translation":"🎓 Date Updated"}]', NULL, NULL, 'false', 'autogen', NULL, NULL),

    -- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE --
    -- 🏂 IMAGE DUCK TAPE 🏂 ---- 🏂 IMAGE DUCK TAPE 🏂 ---- 🏂 IMAGE DUCK TAPE 🏂 ---- 🏂 IMAGE DUCK TAPE 🏂 ---- 🏂 IMAGE DUCK TAPE 🏂 ---- 🏂 IMAGE DUCK TAPE 🏂 ---- 🏂 IMAGE DUCK TAPE 🏂 ---- 🏂 IMAGE DUCK TAPE 🏂 --
    -- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE --
--( collection,    field,    special,    interface,    "options",    display,    display_options,    readonly,    hidden,    sort,    width,    translations,    note,    conditions,    required,          "group",    validation,  validation_message)
    ('pages',                       'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('funnels',                     'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('articles',                    'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('guides',                      'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('short_hero',                  'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_hero',                   'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('overflow',                    'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_slider_banner',         'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_list',                  'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_object',                'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('editor_select',               'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('dev_notes',                   'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pair',                'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pairs_list',          'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pairs_with_lists',    'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('image_with_content_list',     'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_item_display',           'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('cta_with_form',               'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('basic_cta',                   'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_card_display',           'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('recent_posts',                'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_section',                 'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_list',                    'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_item',                    'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('structure_picker',            'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_flex',                     'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_grid',                     'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_artisan_structures',       'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('basic_cta',                   'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card_list',                   'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('button_list',                 'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card',                        'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_block',               'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('button',                      'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('code_display_block',          'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('form_embed_raw',              'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('image_block',                 'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('animated_svg_block',          'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card_ribbon',                 'dt_img',    'file',    'file-image',    NULL,    'image',    '{"circle":false}',    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),

    -- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE --
    -- 🦝 FOREIGN KEY DUCK TAPE 1 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 1 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 1 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 1 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 1 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 1 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 1 🦝 --
    -- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE --
    ('pages',                       'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('funnels',                     'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('articles',                    'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('guides',                      'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('short_hero',                  'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_hero',                   'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('overflow',                    'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_slider_banner',         'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_list',                  'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_object',                'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('editor_select',               'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('dev_notes',                   'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pair',                'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pairs_list',          'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pairs_with_lists',    'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('image_with_content_list',     'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_item_display',           'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('cta_with_form',               'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('basic_cta',                   'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_card_display',           'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('recent_posts',                'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_section',                 'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_list',                     'dt_1',         'm2o',    'select-dropdown-m2o',   '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_item',                    'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('structure_picker',            'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_flex',                     'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_grid',                     'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_artisan_structures',       'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('basic_cta',                   'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card_list',                   'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('button_list',                 'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card',                        'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_block',               'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('button',                      'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('code_display_block',          'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('form_embed_raw',              'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('image_block',                 'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('animated_svg_block',          'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card_ribbon',                 'dt_1',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),

    -- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE --
    -- 🤖 FOREIGN KEY DUCK TAPE 2 🤖 ---- 🤖 FOREIGN KEY DUCK TAPE 2 🤖 ---- 🤖 FOREIGN KEY DUCK TAPE 2 🤖 ---- 🤖 FOREIGN KEY DUCK TAPE 2 🤖 ---- 🤖 FOREIGN KEY DUCK TAPE 2 🤖 ---- 🤖 FOREIGN KEY DUCK TAPE 2 🤖 ---- 🤖 FOREIGN KEY DUCK TAPE 2 🤖 --
    -- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE --
    ('pages',                       'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('funnels',                     'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('articles',                    'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('guides',                      'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('short_hero',                  'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_hero',                   'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('overflow',                    'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_slider_banner',         'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_list',                  'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_object',                'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('editor_select',               'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('dev_notes',                   'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pair',                'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pairs_list',          'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pairs_with_lists',    'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('image_with_content_list',     'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_item_display',           'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('cta_with_form',               'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('basic_cta',                   'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_card_display',           'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('recent_posts',                'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_section',                 'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_list',                     'dt_2',        'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_item',                    'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('structure_picker',            'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_flex',                     'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_grid',                     'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_artisan_structures',       'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('basic_cta',                   'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card_list',                   'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('button_list',                 'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card',                        'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_block',               'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('button',                      'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('code_display_block',          'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('form_embed_raw',              'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('image_block',                 'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('animated_svg_block',          'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card_ribbon',                 'dt_2',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),

        -- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE --
        -- 👾 FOREIGN KEY DUCK TAPE 3 👾 ---- 🦝 FOREIGN KEY DUCK TAPE 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 🦝 ---- 🦝 FOREIGN KEY DUCK TAPE 🦝 --
        -- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE ---- DUCK TAPE --
    ('pages',                       'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('funnels',                     'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('articles',                    'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('guides',                      'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('short_hero',                  'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_hero',                   'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('overflow',                    'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_slider_banner',         'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_list',                  'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('quote_object',                'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('editor_select',               'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('dev_notes',                   'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pair',                'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pairs_list',          'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_pairs_with_lists',    'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('image_with_content_list',     'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_item_display',           'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('cta_with_form',               'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('basic_cta',                   'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('flex_card_display',           'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('recent_posts',                'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_section',                 'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_list',                    'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('faq_item',                    'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('structure_picker',            'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_flex',                     'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_grid',                     'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('mc_artisan_structures',       'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('basic_cta',                   'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card_list',                   'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('button_list',                 'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card',                        'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('content_block',               'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('button',                      'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('code_display_block',          'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('form_embed_raw',              'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('image_block',                 'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('animated_svg_block',          'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL),
    ('card_ribbon',                 'dt_3',         'm2o',    'select-dropdown-m2o',    '{"iconLeft":"key","font":"monospace"}',    'raw',    NULL,    'false',    'false',    NULL,    'half',    NULL,    NULL,    NULL,    'false',    NULL,    NULL,    NULL);


































-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| CSS VARIABLES CONTROLLER ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

create table public."theme_styles"
(id                   uuid                                                                                                               not null primary key,
 status               varchar(255) default 'live'::character varying,
 fonts_computed       text         default '--font-900: var(--fw-bold) var(--font-size-900) / var(--font-lh-900) var(--font-body);
--font-800: var(--fw-bold) var(--font-size-800) / var(--font-lh-800) var(--font-body);
--font-700: var(--fw-bold) var(--font-size-700) / var(--font-lh-700) var(--font-body);
--font-600: var(--fw-bold) var(--font-size-600) / var(--font-lh-600) var(--font-body);
--font-500: var(--fw-bold) var(--font-size-500) / var(--font-lh-500) var(--font-body);
--font-400: var(--fw-regu) var(--font-size-400) / var(--font-lh-400) var(--font-body);  /* Root/body/P Size */
--font-300: var(--fw-medi) var(--font-size-300) / var(--font-lh-300) var(--font-body);
--font-200: var(--fw-bold) var(--font-size-200) / var(--font-lh-200) var(--font-body);
--font-150: var(--fw-regu) var(--font-size-150) / var(--font-lh-150) var(--font-body);
--font-100: var(--fw-bold) var(--font-size-100) / var(--font-lh-100) var(--font-body);
--font-50:  var(--fw-medi) var(--font-size-50)  / var(--font-lh-50)  var(--font-body);'::text not null,
 line_height          text         default '--font-lh-900: 40px;
--font-lh-800: 40px;
--font-lh-700: 30px;
--font-lh-600: 28px;
--font-lh-500: 26px;
--font-lh-400: 26px; /* ROOT */ 
--font-lh-300: 24px;
--font-lh-200: 30px;
--font-lh-150: 20px;
--font-lh-100: 18px;
--font-lh-50:  16px;'::text,
 font_size            text         default '--font-size-900: 32px;
--font-size-800: 30px;
--font-size-700: 26px;
--font-size-600: 22px;
--font-size-500: 22px;
--font-size-400: 20px; /* ROOT */
--font-size-300: 20px;
--font-size-200: 18px;
--font-size-150: 16px;
--font-size-100: 16px;
--font-size-50:  11px;'::text                                                                 not null,
 font_basics          text         default '/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
░░░░▓ FONT BASICS ▓░░░░
░░░░▓█████████████▓░░░░ */
    --font-body:    ''''Poppins'''', "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu sans", "Helvetica Neue", Arial, sans-serif;     
    --font-head:    var(--font-body); /* this is here for other themes *
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
░░░░▓ Font Weight ▓░░░░
░░░░▓█████████████▓░░░░             */
    --fw-regu: 300;     /* Regular  */
    --fw-medi: 400;     /* Medium   */
    --fw-bold: 600;     /*   bold   */'::text,
 spacer_units         text         default '/*╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈Spacers┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
    --spacer-unit : 8px ;                                   /*    8px */  /*MAIN*/  /*** BASE UNIT ***/
    --spacer-xxs  : calc(var(--spacer-unit) *  2 );         /*   16px */  /*MAIN*/  /* container Margin, Inner-container Padding */
    --spacer-xs   : calc(var(--spacer-unit) *  3);          /*   24px */            /* Grid-Gap */
    --spacer-s    : calc(var(--spacer-unit) *  4);          /*   32px */  /*MAIN*/  /*          */
    --spacer-ms   : calc(var(--spacer-unit) *  6);          /*   48px */
/*▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬*/
    --spacer-m    : calc(var(--spacer-unit) *  8); /*  64px */            /*MAIN*/  /* Section-Top Padding, Section-bottom Padding */
/*▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬*/
    --spacer-ml   : calc(var(--spacer-unit) * 12);          /*  96px */            
    --spacer-l    : calc(var(--spacer-unit) * 16);          /* 128px */   /*MAIN*/  
    --spacer-xl   : calc(var(--spacer-unit) * 24);          /* 192px */             /* Base Unit for Max width Math */
    --spacer-xxl  : calc(var(--spacer-unit) * 32);          /* 256px */   /*MAIN*/  '::text,
 gap_pad_marg         text         default '/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈PADDING┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --section-gap            : var(--spacer-m);
   --grid-gap               : var(--spacer-xs);
/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈CONTAINERS┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --container-hSpace       : 0px var(--spacer-xxs);       /* O-container Margin, I-container Padding*/
   --container-maxWidth     : calc(var(--spacer-xl) * 9);  /* ** 1728px ** */
   --innercontainer-maxWidth: calc(var(--spacer-xl) * 7);  /* ** 1344px ** */
/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈BUTTONS┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --btn                    : var(--font-h3);              /* Redo */
   --btn-pad                : 4px 8px;                     /* Redo */'::text,
 color_hex            text         default ' /* ╔╾VARIABLE NAME┈╼╤╾COLOR HEX */
    --brand-black    : #000000; 
    --brand-white    : #FFFFFF; 
 /* ╔╾┈┈PRIMARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈*/
    --primary        : #280071; 
    --primary-dark   : #010044; 
    --primary-light  : #5B2FA0; 
 /* ╔╾┈┈┈┈SECONDARY┈┈┈┈┈┈┈┈┈┈┈┈┈*/
    --secondary      : #69B3E7; 
    --secondary-dark : #2F84B5; 
    --secondary-light: #9EE5FF; 
 /* ╔╾┈┈┈┈┈ACCENT┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈*/
    --accent         : #8ED6DB; 
    --accent-dark    : #67BFC6; 
    --accent-light   : #B4ECF0; 
 /* ╔╾┈┈┈┈BACKGROUND┈┈┈┈┈┈┈┈┈┈┈┈*/
    --bg-layer-100   : #F7F6FA; 
    --bg-layer-200   : #F4F3F8; 
    --bg-layer-300   : #F1EFF6; 
    --bg-layer-400   : #ECE8F3; 
    --bg-layer-500   : #EEEBF5; 
    --bg-layer-600   : #E9E5F1; 
 /* ╔╾┈┈SYS/ENV┈VARIABLES┈┈┈┈┈┈*/
   --ec-neutral      : #CECFCB;
   --ec-success      : #00A38D;
   --ec-fail         : #D11257;'::text,
 color_rgb_prep       text         default '┈╼╤╾┈┈VARIABLE NAME┈┈┈╼╤╾ R┈╼╤╾┈G╼╤╾B╼╗ */
--brand-black-rgb    :   0,   0,   0;
--brand-white-rgb    : 255, 255, 255;
┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈PRIMARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */
--primary-rgb        :  40,   0, 113;
--primary-dark-rgb   :   1,   0,  44;
--primary-light-rgb  :  91,  47, 160;
┈┈┈┈┈┈┈┈┈┈┈SECONDARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */
--secondary-rgb      : 105, 179, 231;
--secondary-dark-rgb :  47, 132, 181;
--secondary-light-rgb: 158, 229, 255;
┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈ACCENT┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */
--accent-rgb         : 142, 214, 219;
--accent-dark-rgb    : 103, 191, 198;
--accent-light-rgb   : 180, 236, 240;
┈┈┈┈┈┈┈┈┈┈┈┈┈┈LAYERING┈┈┈FRAMEWORK┈┈┈╼╗ */
--bg-layer-100-rgb   : 247, 246, 250;
--bg-layer-200-rgb   : 244, 243, 248;
--bg-layer-300-rgb   : 241, 239, 246;
--bg-layer-400-rgb   : 236, 232, 243;
--bg-layer-500-rgb   : 238, 235, 245;
--bg-layer-600-rgb   : 233, 229, 241; 
/*┈┈┈┈┈SYS/ENV┈VARIABLES┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */
  --ec-neutral-rgb     :              ; 
  --ec-success-rgb     :              ;
  --ec-fail-rgb        :              ;     '::text,
 font_size_m480       text         default '/*--font-size-900: 32px; */
/*--font-size-800: 30px; */
/*--font-size-700: 26px; */
/*--font-size-600: 22px; */
/*--font-size-500: 22px; */
/*--font-size-400: 20px; *//* ROOT */ 
/*--font-size-300: 20px; */
/*--font-size-200: 18px; */
/*--font-size-150: 16px; */
/*--font-size-100: 16px; */
/*--font-size-50:  11px; */'::text,
 font_size_m767       text         default '--font-size-900:  36px;
--font-size-800:  32px;
--font-size-700:  28px;
--font-size-600:  22px;
--font-size-500:  22px;
--font-size-400:  20px; /* ROOT */
--font-size-300:  20px;
--font-size-200:  18px;
--font-size-150:  16px;
--font-size-100:  16px;
--font-size-50 :  11px;'::text,
 font_size_m992       text         default '/* --font-size-900:  36px; */
/* --font-size-800:  32px; */
/* --font-size-700:  28px; */
/* --font-size-600:  22px; */
/* --font-size-500:  22px; */
/* --font-size-400:  20px; *//*ROOT */
/* --font-size-300:  20px; */
/* --font-size-200:  18px; */
/* --font-size-150:  16px; */
/* --font-size-100:  16px; */
/* --font-size-50 :  11px; */'::text,
 font_size_m1199      text         default '--font-size-900:  48px;
--font-size-800:  40px;
--font-size-700:  32px;
--font-size-600:  24px;
--font-size-500:  24px;
--font-size-400:  20px; /*ROOT*/
--font-size-300:  20px;
--font-size-200:  18px;
--font-size-150:  16px;
--font-size-100:  16px;
--font-size-50 :  11px;'::text,
 font_size_m1499      text         default '/* --font-size-900:  48px; */
/* --font-size-800:  40px; */
/* --font-size-700:  32px; */
/* --font-size-600:  24px; */
/* --font-size-500:  24px; */
/* --font-size-400:  20px; ROOT */
/* --font-size-300:  20px; */
/* --font-size-200:  18px; */
/* --font-size-150:  16px; */
/* --font-size-100:  16px; */
/* --font-size-50 :  11px; */'::text,
 font_size_uwh        text         default '/* --font-size-900:  48px; */
/* --font-size-800:  40px; */
/* --font-size-700:  32px; */
/* --font-size-600:  24px; */
/* --font-size-500:  24px; */
/* --font-size-400:  20px; ROOT */
/* --font-size-300:  20px; */
/* --font-size-200:  18px; */
/* --font-size-150:  16px; */
/* --font-size-100:  16px; */
/* --font-size-50 :  11px; */'::text,
 font_size_m1921      text         default '/* --font-size-900:  48px; */
/* --font-size-800:  40px; */
/* --font-size-700:  32px; */
/* --font-size-600:  24px; */
/* --font-size-500:  24px; */
/* --font-size-400:  20px; ROOT */
/* --font-size-300:  20px; */
/* --font-size-200:  18px; */
/* --font-size-150:  16px; */
/* --font-size-100:  16px; */
/* --font-size-50 :  11px; */'::text,
 line_height_m480     text         default '/* --font-lh-900: 40px; */
/* --font-lh-800: 40px; */
/* --font-lh-700: 30px; */
/* --font-lh-600: 28px; */
/* --font-lh-500: 26px; */
/* --font-lh-400: 26px;  */ /* ROOT */ 
/* --font-lh-300: 24px; */
/* --font-lh-200: 30px; */
/* --font-lh-150: 20px; */
/* --font-lh-100: 18px; */
/* --font-lh-50:  16px; */'::text,
 line_height_m767     text         default '--font-lh-900 :  44px;
--font-lh-800 :  44px;
--font-lh-700 :  36px;
--font-lh-600 :  32px;
--font-lh-500 :  28px;
--font-lh-400 :  28px; /*ROOT *//* thise is the center value we are working from */
--font-lh-300 :  24px;
--font-lh-200 :  40px;
--font-lh-150 :  20px;
--font-lh-100 :  18px;
--font-lh-50  :  16px;'::text,
 line_height_m992     text         default '/* --font-lh-900 :  44px; */
/* --font-lh-800 :  44px; */
/* --font-lh-700 :  36px; */
/* --font-lh-600 :  32px; */
/* --font-lh-500 :  28px; */
/* --font-lh-400 :  28px; *//*ROOT *//* thise is the center value we are working from */
/* --font-lh-300 :  24px; */
/* --font-lh-200 :  40px; */
/* --font-lh-150 :  20px; */
/* --font-lh-100 :  18px; */
/* --font-lh-50  :  16px; */'::text,
 line_height_m1199    text         default '--font-lh-900 :  56px;
--font-lh-800 :  56px; 
--font-lh-700 :  48px;
--font-lh-600 :  36px;
--font-lh-500 :  32px;
 --font-lh-400 :  32px; /* ROOT this is the center value we are working from */
--font-lh-300 :  24px; 
--font-lh-200 :  40px;
--font-lh-150 :  20px;
--font-lh-100 :  18px;
--font-lh-50  :  16px;'::text,
 line_height_m1499    text         default '/* --font-lh-900 :  56px; */
/* --font-lh-800 :  56px;  */
/* --font-lh-700 :  48px; */
/* --font-lh-600 :  36px; */
/* --font-lh-500 :  32px; */
/* --font-lh-400 :  32px; ROOT this is the center value we are working from */
/* --font-lh-300 :  24px;  */
/* --font-lh-200 :  40px; */
/* --font-lh-150 :  20px; */
/* --font-lh-100 :  18px; */
/* --font-lh-50  :  16px; */'::text,
 line_height_m1921    text         default '/* --font-lh-900 :  56px; */
/* --font-lh-800 :  56px;  */
/* --font-lh-700 :  48px; */
/* --font-lh-600 :  36px; */
/* --font-lh-500 :  32px; */
/* --font-lh-400 :  32px; ROOT this is the center value we are working from */
/* --font-lh-300 :  24px;  */
/* --font-lh-200 :  40px; */
/* --font-lh-150 :  20px; */
/* --font-lh-100 :  18px; */
/* --font-lh-50  :  16px; */'::text,
 line_height_uwh      text         default '/* --font-lh-900 :  56px; */
/* --font-lh-800 :  56px;  */
/* --font-lh-700 :  48px; */
/* --font-lh-600 :  36px; */
/* --font-lh-500 :  32px; */
/* --font-lh-400 :  32px; ROOT this is the center value we are working from */
/* --font-lh-300 :  24px;  */
/* --font-lh-200 :  40px; */
/* --font-lh-150 :  20px; */
/* --font-lh-100 :  18px; */
/* --font-lh-50  :  16px; */'::text,
 breakpoints_required json
);

INSERT INTO public.directus_fields (collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) 
VALUES  ('theme_styles',       'css_custom_properties',  'alias,no-data,group', 'group-raw', null, null, null, false, false, 3, 'fill', null, null, null, false, null, null, null),
        ('theme_styles',       'min1499',                'alias,no-data,group', 'group-detail', '{"headerIcon":"hd","start":"closed"}', null, null, false, false, 7, 'full', null, null, null, false, 'css_custom_properties', null, null),
        ('theme_styles',       'color_hex',               null, 'input-code', '{"language":"css","template":" /* ╔╾VARIABLE NAME┈╼╤╾COLOR HEX  */\n    --brand-black    : #000000; \n    --brand-white    : #FFFFFF; \n /* ╔╾┈┈PRIMARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈  */\n    --primary        : #280071; \n    --primary-dark   : #010044; \n    --primary-light  : #5B2FA0; \n /* ╔╾┈┈┈┈SECONDARY┈┈┈┈┈┈┈┈┈┈┈┈┈  */\n    --secondary      : #69B3E7; \n    --secondary-dark : #2F84B5; \n    --secondary-light: #9EE5FF; \n /* ╔╾┈┈┈┈┈ACCENT┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈  */\n    --accent         : #8ED6DB; \n    --accent-dark    : #67BFC6; \n    --accent-light   : #B4ECF0; \n /* ╔╾┈┈┈┈BACKGROUND┈┈┈┈┈┈┈┈┈┈┈┈  */\n    --bg-layer-100   : #F7F6FA; \n    --bg-layer-200   : #F4F3F8; \n    --bg-layer-300   : #F1EFF6; \n    --bg-layer-400   : #ECE8F3; \n    --bg-layer-500   : #EEEBF5; \n    --bg-layer-600   : #E9E5F1; \n /* ╔╾┈┈SYS/ENV┈VARIABLES┈┈┈┈┈┈  */\n   --ec-neutral      : #CECFCB;\n   --ec-success      : #00A38D;\n   --ec-fail         : #D11257;"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 6, 'half', null, null, null, false, 'Baseline_CSS', null, null),
        ('theme_styles',       'font_basics',             null, 'input-code', '{"language":"css","template":"/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄\n░░░░▓ FONT BASICS ▓░░░░\n░░░░▓█████████████▓░░░░ */\n    --font-body:    ''Poppins'', \"Segoe UI\", Frutiger, \"Frutiger Linotype\", \"Dejavu sans\", \"Helvetica Neue\", Arial, sans-serif;     \n    --font-head:    var(--font-body); /* this is here for other themes *\n/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄\n░░░░▓ Font Weight ▓░░░░\n░░░░▓█████████████▓░░░░             */\n    --fw-regu: 300;     /* Regular  */\n    --fw-medi: 400;     /* Medium   */\n    --fw-bold: 600;     /*   bold   */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 1, 'full', null, null, null, false, 'Baseline_CSS', null, null),
        ('theme_styles',       'min1921px',              'alias,no-data,group', 'group-detail', '{"start":"closed","headerIcon":"4k"}', null, null, false, false, 9, 'full', null, null, null, false, 'css_custom_properties', null, null),
        ('theme_styles',       'font_size_m480',          null, 'input-code', '{"language":"css","template":"/*--font-size-900: 32px; */\n/*--font-size-800: 30px; */\n/*--font-size-700: 26px; */\n/*--font-size-600: 22px; */\n/*--font-size-500: 22px; */\n/*--font-size-400: 20px; *//* ROOT */ \n/*--font-size-300: 20px; */\n/*--font-size-200: 18px; */\n/*--font-size-150: 16px; */\n/*--font-size-100: 16px; */\n/*--font-size-50:  11px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 1, 'half', null, null, null, false, 'min480px', null, null),
        ('theme_styles',       'font_size_m992',          null, 'input-code', '{"language":"css","template":"/* --font-size-900:  36px; */\n/* --font-size-800:  32px; */\n/* --font-size-700:  28px; */\n/* --font-size-600:  22px; */\n/* --font-size-500:  22px; */\n/* --font-size-400:  20px; *//*ROOT */\n/* --font-size-300:  20px; */\n/* --font-size-200:  18px; */\n/* --font-size-150:  16px; */\n/* --font-size-100:  16px; */\n/* --font-size-50 :  11px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 1, 'half', null, null, null, false, 'min992px', null, null),
        ('theme_styles',       'font_size_m1499',         null, 'input-code', '{"language":"css","template":"--font-size-900: 32px;\n--font-size-800: 30px;\n--font-size-700: 26px;\n--font-size-600: 22px;\n--font-size-500: 22px;\n--font-size-400: 20px; /* ROOT */\n--font-size-300: 20px;\n--font-size-200: 18px;\n--font-size-150: 16px;\n--font-size-100: 16px;\n--font-size-50:  11px;"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 1, 'half', null, null, null, false, 'min1499', null, null),
        ('theme_styles',       'font_size_m1921',         null, 'input-code', '{"language":"css","template":"/* --font-size-900:  48px; */\n/* --font-size-800:  40px; */\n/* --font-size-700:  32px; */\n/* --font-size-600:  24px; */\n/* --font-size-500:  24px; */\n/* --font-size-400:  20px; ROOT */\n/* --font-size-300:  20px; */\n/* --font-size-200:  18px; */\n/* --font-size-150:  16px; */\n/* --font-size-100:  16px; */\n/* --font-size-50 :  11px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 1, 'half', null, null, null, false, 'min1921px', null, null),
        ('theme_styles',       'font_size_uwh',           null, 'input-code', '{"language":"css","template":"/* --font-size-900:  48px; */\n/* --font-size-800:  40px; */\n/* --font-size-700:  32px; */\n/* --font-size-600:  24px; */\n/* --font-size-500:  24px; */\n/* --font-size-400:  20px; ROOT */\n/* --font-size-300:  20px; */\n/* --font-size-200:  18px; */\n/* --font-size-150:  16px; */\n/* --font-size-100:  16px; */\n/* --font-size-50 :  11px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 1, 'half', null, null, null, false, 'ultrawide_helper', null, null),
        ('theme_styles',       'font_size_m1199',         null, 'input-code', '{"language":"css","template":"--font-size-900:  48px;\n--font-size-800:  40px;\n--font-size-700:  32px;\n--font-size-600:  24px;\n--font-size-500:  24px;\n--font-size-400:  20px; /*ROOT*/\n--font-size-300:  20px;\n--font-size-200:  18px;\n--font-size-150:  16px;\n--font-size-100:  16px;\n--font-size-50 :  11px;"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 1, 'half', null, null, null, false, 'min1199px', null, null),
        ('theme_styles',       'gap_pad_marg',            null, 'input-code', '{"language":"css","template":"/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈PADDING┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */\n   --section-gap            : var(--spacer-m);\n   --grid-gap               : var(--spacer-xs);\n/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈CONTAINERS┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */\n   --container-hSpace       : 0px var(--spacer-xxs);       /* O-container Margin, I-container Padding*/\n   --container-maxWidth     : calc(var(--spacer-xl) * 9);  /* ** 1728px ** */\n   --innercontainer-maxWidth: calc(var(--spacer-xl) * 7);  /* ** 1344px ** */\n/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈BUTTONS┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */\n   --btn                    : var(--font-h3);              /* Redo */\n   --btn-pad                : 4px 8px;                     /* Redo */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 5, 'full', null, 'control All Spacing Here', null, false, 'Baseline_CSS', null, null),
        ('theme_styles',       'color_rgb_prep',          null, 'input-code', '{"language":"css","template":"/*┈╼╤╾┈┈VARIABLE NAME┈┈╼╤╾┈┈R┈╼╤╾┈G╼╤╾B╼╗ */\n  --brand-black-rgb    :   0,   0,   0;\n  --brand-white-rgb    : 255, 255, 255;\n/*┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈PRIMARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */\n  --primary-rgb        :  40,   0, 113;\n  --primary-dark-rgb   :   1,   0,  44;\n  --primary-light-rgb  :  91,  47, 160;\n/*┈┈┈┈┈┈┈┈┈┈┈SECONDARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */\n  --secondary-rgb      : 105, 179, 231;\n  --secondary-dark-rgb :  47, 132, 181;\n  --secondary-light-rgb: 158, 229, 255;\n/*┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈ACCENT┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */\n  --accent-rgb         : 142, 214, 219;\n  --accent-dark-rgb    : 103, 191, 198;\n  --accent-light-rgb   : 180, 236, 240;\n/*┈┈┈┈┈┈┈┈┈┈┈┈┈┈LAYERING┈┈┈FRAMEWORK┈┈┈╼╗ */\n  --bg-layer-100-rgb   : 247, 246, 250;\n  --bg-layer-200-rgb   : 244, 243, 248;\n  --bg-layer-300-rgb   : 241, 239, 246;\n  --bg-layer-400-rgb   : 236, 232, 243;\n  --bg-layer-500-rgb   : 238, 235, 245;\n  --bg-layer-600-rgb   : 233, 229, 241;\n/*┈┈┈┈┈SYS/ENV┈VARIABLES┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */\n  --ec-neutral-rgb     :              ; \n  --ec-success-rgb     :              ;\n  --ec-fail-rgb        :              ;     "}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 7, 'half', null, null, null, false, 'Baseline_CSS', null, null),
        ('theme_styles',       'line_height_m767',        null, 'input-code', '{"language":"css","template":"--font-lh-900 :  44px;\n--font-lh-800 :  44px;\n--font-lh-700 :  36px;\n--font-lh-600 :  32px;\n--font-lh-500 :  28px;\n--font-lh-400 :  28px; /*ROOT *//* thise is the center value we are working from */\n--font-lh-300 :  24px;\n--font-lh-200 :  40px;\n--font-lh-150 :  20px;\n--font-lh-100 :  18px;\n--font-lh-50  :  16px;"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 2, 'half', null, null, null, false, 'Min767px', null, null),
        ('theme_styles',       'line_height_m1199',       null, 'input-code', '{"language":"css","template":"--font-lh-900 :  56px;\n--font-lh-800 :  56px; \n--font-lh-700 :  48px;\n--font-lh-600 :  36px;\n--font-lh-500 :  32px;\n--font-lh-400 :  32px; /* ROOT this is the center value we are working from */\n--font-lh-300 :  24px; \n--font-lh-200 :  40px;\n--font-lh-150 :  20px;\n--font-lh-100 :  18px;\n--font-lh-50  :  16px;"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 2, 'half', null, null, null, false, 'min1199px', null, null),
        ('theme_styles',       'line_height_m1921',       null, 'input-code', '{"language":"css","template":"/* --font-lh-900 :  56px; */\n/* --font-lh-800 :  56px;  */\n/* --font-lh-700 :  48px; */\n/* --font-lh-600 :  36px; */\n/* --font-lh-500 :  32px; */\n/* --font-lh-400 :  32px; ROOT this is the center value we are working from */\n/* --font-lh-300 :  24px;  */\n/* --font-lh-200 :  40px; */\n/* --font-lh-150 :  20px; */\n/* --font-lh-100 :  18px; */\n/* --font-lh-50  :  16px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 2, 'half', null, null, null, false, 'min1921px', null, null),
        ('theme_styles',       'line_height_m1499',       null, 'input-code', '{"language":"css","template":"/* --font-lh-900 :  56px; */\n/* --font-lh-800 :  56px;  */\n/* --font-lh-700 :  48px; */\n/* --font-lh-600 :  36px; */\n/* --font-lh-500 :  32px; */\n/* --font-lh-400 :  32px; ROOT this is the center value we are working from */\n/* --font-lh-300 :  24px;  */\n/* --font-lh-200 :  40px; */\n/* --font-lh-150 :  20px; */\n/* --font-lh-100 :  18px; */\n/* --font-lh-50  :  16px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 2, 'half', null, null, null, false, 'min1499', null, null),
        ('theme_styles',       'line_height_m992',        null, 'input-code', '{"language":"css","template":"/* --font-lh-900 :  44px; */\n/* --font-lh-800 :  44px; */\n/* --font-lh-700 :  36px; */\n/* --font-lh-600 :  32px; */\n/* --font-lh-500 :  28px; */\n/* --font-lh-400 :  28px; *//*ROOT *//* thise is the center value we are working from */\n/* --font-lh-300 :  24px; */\n/* --font-lh-200 :  40px; */\n/* --font-lh-150 :  20px; */\n/* --font-lh-100 :  18px; */\n/* --font-lh-50  :  16px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 2, 'half', null, null, null, false, 'min992px', null, null),
        ('theme_styles',       'id',                     'uuid', 'input', null, null, null, true, true, 1, 'half', null, null, null, false, null, null, null),
        ('theme_styles',       'min480px',               'alias,no-data,group', 'group-detail', '{"start":"closed","headerIcon":"phone_android","headercolor":"#6E00F5"}', null, null, false, false, 3, 'full', null, null, null, false, 'css_custom_properties', null, null),
        ('theme_styles',       'line_height_uwh',         null, 'input-code', '{"language":"css","template":"/* --font-lh-900 :  56px; */\n/* --font-lh-800 :  56px;  */\n/* --font-lh-700 :  48px; */\n/* --font-lh-600 :  36px; */\n/* --font-lh-500 :  32px; */\n/* --font-lh-400 :  32px; ROOT this is the center value we are working from */\n/* --font-lh-300 :  24px;  */\n/* --font-lh-200 :  40px; */\n/* --font-lh-150 :  20px; */\n/* --font-lh-100 :  18px; */\n/* --font-lh-50  :  16px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 2, 'half', null, null, null, false, 'ultrawide_helper', null, null),
        ('theme_styles',       'status',                  null, 'select-dropdown', '{"choices":[{"text":"$t:live","value":"live"},{"text":"$t:fallback","value":"fallback"},{"text":"$t:maintenance","value":"maintenance_mode"},{"text":"$t:migrating","value":"migrating"}],"allowOther":true,"icon":"settings_input_composite"}', 'labels', '{"showAsDot":true,"choices":[{"text":"$t:Live","value":"live","foreground":"#FFFFFF","background":"var(--primary)"},{"text":"$t:Maintenance","value":"Maintenance_Mode","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:Migrating","value":"migrating","foreground":"#FFFFFF","background":"var(--warning)"},{"text":"$t:Rollback","value":"Rollback","foreground":"#18222F","background":"#8A0000"}]}', false, false, 2, 'half', null, null, null, true, null, null, null),
        ('theme_styles',       'spacer_units',            null, 'input-code', '{"language":"css","template":"/*  ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈Spacers┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */\n    --spacer-unit : 8px ;                                   /*    8px */  /*MAIN*/  /*** BASE UNIT ***/\n    --spacer-xxs  : calc(var(--spacer-unit) *  2 );         /*   16px */  /*MAIN*/  /* container Margin, Inner-container Padding */\n    --spacer-xs   : calc(var(--spacer-unit) *  3);          /*   24px */            /* Grid-Gap */\n    --spacer-s    : calc(var(--spacer-unit) *  4);          /*   32px */  /*MAIN*/  /*          */\n    --spacer-ms   : calc(var(--spacer-unit) *  6);          /*   48px */\n/*▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬*/\n    --spacer-m    : calc(var(--spacer-unit) *  8);\t\t\t/*  64px */            /*MAIN*/  /* Section-Top Padding, Section-bottom Padding */\n/*▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬*/\n    --spacer-ml   : calc(var(--spacer-unit) * 12);          /*  96px */            \n    --spacer-l    : calc(var(--spacer-unit) * 16);          /* 128px */   /*MAIN*/  \n    --spacer-xl   : calc(var(--spacer-unit) * 24);          /* 192px */             /* Base Unit for Max width Math */\n    --spacer-xxl  : calc(var(--spacer-unit) * 32);          /* 256px */   /*MAIN*/  "}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 4, 'full', null, 'control All Spacing Here', null, false, 'Baseline_CSS', null, null),
        ('theme_styles',       'line_height_m480',        null, 'input-code', '{"language":"css","template":"/* --font-lh-900: 40px; */\n/* --font-lh-800: 40px; */\n/* --font-lh-700: 30px; */\n/* --font-lh-600: 28px; */\n/* --font-lh-500: 26px; */\n/* --font-lh-400: 26px;  */ /* ROOT */ \n/* --font-lh-300: 24px; */\n/* --font-lh-200: 30px; */\n/* --font-lh-150: 20px; */\n/* --font-lh-100: 18px; */\n/* --font-lh-50:  16px; */"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 2, 'half', null, null, null, false, 'min480px', null, null),
        ('theme_styles',       'fonts_computed',          null, 'input-code', '{"language":"css","template":"--font-900: var(--fw-bold) var(--font-size-900) / var(--font-lh-900) var(--font-body);\n--font-800: var(--fw-bold) var(--font-size-800) / var(--font-lh-800) var(--font-body);\n--font-700: var(--fw-bold) var(--font-size-700) / var(--font-lh-700) var(--font-body);\n--font-600: var(--fw-bold) var(--font-size-600) / var(--font-lh-600) var(--font-body);\n--font-500: var(--fw-bold) var(--font-size-500) / var(--font-lh-500) var(--font-body);\n--font-400: var(--fw-regu) var(--font-size-400) / var(--font-lh-400) var(--font-body);  /* Root/body/P Size */\n--font-300: var(--fw-medi) var(--font-size-300) / var(--font-lh-300) var(--font-body);\n--font-200: var(--fw-bold) var(--font-size-200) / var(--font-lh-200) var(--font-body);\n--font-150: var(--fw-regu) var(--font-size-150) / var(--font-lh-150) var(--font-body);\n--font-100: var(--fw-bold) var(--font-size-100) / var(--font-lh-100) var(--font-body);\n--font-50:  var(--fw-medi) var(--font-size-50)  / var(--font-lh-50)  var(--font-body);"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', true, false, 1, 'full', null, 'this is how the variables are applied', null, false, 'computed_Properties', null, null),
        ('theme_styles',       'Baseline_CSS',           'alias,no-data,group', 'group-detail', '{"headerIcon":"devices_other","headercolor":"#7400B3"}', null, null, false, false, 1, 'fill', null, null, null, false, 'css_custom_properties', null, null),
        ('theme_styles',       'font_size_m767',          null, 'input-code', '{"language":"css","template":"--font-size-900:  36px;\n--font-size-800:  32px;\n--font-size-700:  28px;\n--font-size-600:  22px;\n--font-size-500:  22px;\n--font-size-400:  20px; /* ROOT */\n--font-size-300:  20px;\n--font-size-200:  18px;\n--font-size-150:  16px;\n--font-size-100:  16px;\n--font-size-50 :  11px;"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 1, 'half', null, null, null, false, 'Min767px', null, null),
        ('theme_styles',       'line_height',             null, 'input-code', '{"language":"css","template":"--font-lh-900: 40px;\n--font-lh-800: 40px;\n--font-lh-700: 30px;\n--font-lh-600: 28px;\n--font-lh-500: 26px;\n--font-lh-400: 26px; /* ROOT */ \n--font-lh-300: 24px;\n--font-lh-200: 30px;\n--font-lh-150: 20px;\n--font-lh-100: 18px;\n--font-lh-50:  16px;"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 3, 'half', null, null, null, false, 'Baseline_CSS', null, null),
        ('theme_styles',       'Min767px',               'alias,no-data,group', 'group-detail', '{"headerIcon":"tablet_mac","start":"closed"}', null, null, false, false, 4, 'full', null, null, null, false, 'css_custom_properties', null, null),
        ('theme_styles',       'min1199px',              'alias,no-data,group', 'group-detail', '{"headerIcon":"laptop_windows","start":"closed"}', null, null, false, false, 6, 'full', null, null, null, false, 'css_custom_properties', null, null),
        ('theme_styles',       'breakpoints_required',   'cast-json', 'select-multiple-checkbox', '{"choices":[{"text":"Min Width 480px","value":"480"},{"text":"Min Width 767px","value":"767"},{"text":"Min Width 992px","value":"992"},{"text":"Min Width 1199px","value":"1199"},{"text":"Min Width 1499px","value":"1499"},{"text":"Ultrawide Monitors","value":"uwh"},{"text":"Min Width 1921px","value":"1921"}],"color":"#3ACC05"}', 'labels', '{"choices":[{"text":"Min Width 480px","value":"480"},{"text":"Min Width 767px","value":"767"},{"text":"Min Width 992px","value":"992"},{"text":"Min Width 1199px","value":"1199"},{"text":"Min Width 1499px","value":"1499"},{"text":"Ultrawide Monitors","value":"uwh"},{"text":"Min Width 1921px","value":"1921"}]}', false, false, null, 'full', null, null, null, false, null, null, null),
        ('theme_styles',       'font_size',               null, 'input-code', '{"language":"css","template":"--font-size-900: 32px;\n--font-size-800: 30px;\n--font-size-700: 26px;\n--font-size-600: 22px;\n--font-size-500: 22px;\n--font-size-400: 20px; /* ROOT */\n--font-size-300: 20px;\n--font-size-200: 18px;\n--font-size-150: 16px;\n--font-size-100: 16px;\n--font-size-50:  11px;"}', 'formatted-value', '{"font":"monospace","format":true,"icon":"css"}', false, false, 2, 'half', null, null, null, false, 'Baseline_CSS', null, null),
        ('theme_styles',       'computed_Properties',    'alias,no-data,group', 'group-detail', '{"start":"closed","headerIcon":"calculate","headercolor":"#696969"}', null, null, false, false, 2, 'full', null, null, null, false, 'css_custom_properties', null, null),
        ('theme_styles',       'min992px',               'alias,no-data,group', 'group-detail', '{"start":"closed","headerIcon":"laptop"}', null, null, false, false, 5, 'full', null, null, null, false, 'css_custom_properties', null, null),
        ('theme_styles',       'ultrawide_helper',       'alias,no-data,group', 'group-detail', '{"headerIcon":"panorama_wide_angle","start":"closed"}', null, null, false, false, 8, 'full', null, null, null, false, 'css_custom_properties', null, null);

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    