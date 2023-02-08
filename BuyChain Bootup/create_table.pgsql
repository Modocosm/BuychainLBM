CREATE TABLE IF NOT EXISTS "public"."pages" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"faicon" varchar(255),
	"slug" varchar(255),
	"status" varchar(255) default 'draft'::character varying not null,
	"category" varchar(255),
	"styleMods" json,
	"variant" varchar(255),
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."funnels" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"faicon" varchar(255),
	"content" text,
	"slug" varchar(255),
	"status" varchar(255) default 'draft'::character varying not null,
	"category" varchar(255),
	"styleMods" json,
	"variant" varchar(255),
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."articles" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"faicon" varchar(255),
	"content" text,
	"slug" varchar(255),
	"status" varchar(255) default 'draft'::character varying not null,
	"category" varchar(255),
	"styleMods" json,
	"variant" varchar(255),
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."guides" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"faicon" varchar(255),
	"content" text,
	"slug" varchar(255),
	"status" varchar(255) default 'draft'::character varying not null,
	"category" varchar(255),
	"styleMods" json,
	"variant" varchar(255),
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."short_hero" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"faicon" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255),
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."flex_hero" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"background_image" uuid ,
	"image" uuid ,
	"image_above" uuid ,
	"title" varchar(255) ,
	"content" text ,
	"buttons" uuid,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."overflow" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"background_image" uuid ,
	"form_embed" UUID ,
	"image_above" uuid ,
	"title" varchar(255) ,
	"content" text ,
	"buttons" uuid,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."quote_slider_banner" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"background_image" uuid ,
	"quote_rating" integer ,
	"title" varchar(255) ,
	"content" text ,
	"attribution" varchar(255),
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."quote_list" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
    "image_dt" uuid,
    "foreign" uuid,
	"date_updated" timestamp,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."quote_object" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
    "image_dt" uuid,
    "foreign" uuid,
	"content" text,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."editor_select" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255) 	"title" varchar(255) ,
	"content" text,
    "image_dt" uuid,
    "foreign" uuid,
	"variant" varchar(255),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."dev_notes" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"faicon" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255) ,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."content_pair" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"reverse" json ,
	"image" uuid ,
	"image_above" uuid ,
	"title" varchar(255) ,
	"content" text ,
	"buttons" uuid,
    "image_dt" uuid,
    "foreign" uuid,
	"variant" varchar(255),
  "reverse" json,
	"image" uuid,
	"image_above" uuid,
	"title" varchar(255),
	"content" text,
	"buttons" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."content_pairs_list" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255) ,
    "image_dt" uuid,
    "foreign" uuid,
	"variant" varchar(255),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."content_pairs_with_lists" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"fontawesome_icon" varchar(255) ,
	"title" varchar(255) ,
	"content" text ,
	"buttons" uuid ,
	"fontawesome_icon" varchar(255) ,
	"text_list" json,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."image_with_content_list" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"image" uuid,
    "image_dt" uuid,
    "foreign" uuid,
	"variant" varchar(255),
	"image" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."flex_item_display" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"flex_item" json,
    "image_dt" uuid,
    "foreign" uuid,
	"variant" varchar(255),
	"flex_item" json,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."cta_with_form" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"title" varchar(255) ,
	"buttons" uuid,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."basic_cta" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"title" varchar(255) ,
	"content" text ,
	"buttons" uuid ,
	"image" uuid ,
	"background_image" uuid,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."flex_card_display" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255) ,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."recent_posts" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255) 	"title" varchar(255) ,
	"number_of_posts" integer ,

	"buttons" uuid,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."faq_section" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255),
	"variant" varchar(255) 	"title" varchar(255),
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."faq_lis" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text ,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."faq_item" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text 
	"fontawesome_icon" varchar(255) ,
	"question" text ,
	"answer" text,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."structure_picker" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp ,
    "image_dt" uuid,
    "foreign" uuid,
	"date_updated" timestamp,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."mc_flex" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp ,
    "image_dt" uuid,
    "foreign" uuid,
	"date_updated" timestamp,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."mc_grid" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp ,
    "image_dt" uuid,
    "foreign" uuid,
	"date_updated" timestamp,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."mc_artisan_structures" (
	"id" uuid,
	"sort" integer,
	"user_created" uuid,
	"date_created" timestamp,
	"user_updated" uuid,
	"date_updated" timestamp ,
    "image_dt" uuid,
    "foreign" uuid,
	"date_updated" timestamp,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."basic_cta" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"title" varchar(255) ,
	"content" text ,
	"buttons" uuid ,
	"image" uuid ,
	"background_image" uuid,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."card_list" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 	"title" varchar(255) ,
	"number_of_cards" integer,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."button_list" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) ,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."card" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 

	"fontawesome_icon" varchar(255) ,
	"title" varchar(255) ,
	"content" text ,
	"sub_heading" varchar(255) ,
	"fontawesome_bullet_icon" varchar(255) ,
	"text_list" json ,
	"buttons" uuid ,
	"corner_image" uuid ,
	"text_input" varchar(255) ,
	"color" string,
    "image_dt" uuid,
    "foreign" uuid,
	"text_input" varchar(255),
	"color" varchar(255),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."content_block" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"styleMods" json,
	"variant" varchar(255) 
	"title" varchar(255) ,
	"content" text ,
	"image" uuid ,
	"buttons" uuid,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."button" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255) 
	"button_text" varchar(255) ,
	"button_type" string ,
	"fontawesome_icon" varchar(255) ,,
    "image_dt" uuid,
    "foreign" uuid,
	"variant" varchar(255),
	"button_text" varchar(255),
	"button_type" varchar(255),
	"fontawesome_icon" varchar(255),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."code_display_block" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"styleMods" json,
	"variant" varchar(255) ,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."form_embed_raw" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255) ,
    "image_dt" uuid,
    "foreign" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."image_block" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255) 	"image" uuid,
    "image_dt" uuid,
    "foreign" uuid,
	"variant" varchar(255),
    "image" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."animated_svg_block" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"title" varchar(255),
	"content" text,
	"styleMods" json,
	"variant" varchar(255) 	"image" uuid,
    "image_dt" uuid,
    "foreign" uuid,
	"variant" varchar(255),
    "image" uuid,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS"public"."card_ribbon" (
	"id" uuid,
	"sort" integer,
	"user_updated" uuid,
	"date_updated" timestamp,
	"styleMods" json,
	"variant" varchar(255),
    "🏂" uuid,   -- 🏂 IMAGE DUCK TAPE 🏂
    "👾" uuid,   -- 👾 FOREIGN KEY DUCK TAPE 3 👾
    "🤖" uuid,   -- 🤖 FOREIGN KEY DUCK TAPE 2 🤖 
    "🦝" uuid,   -- 🦝 FOREIGN KEY DUCK TAPE 1 🦝 
    PRIMARY KEY ("id")
);
