DROP TABLE IF EXISTS "public"."editor_select";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."editor_select" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."faq_item";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."faq_item" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "fontawesome_icon" varchar(255),
    "question" text,
    "answer" text,
    "faq_item_fkey" uuid,
    CONSTRAINT "faq_item_faq_item_fkey_foreign" FOREIGN KEY ("faq_item_fkey") REFERENCES "public"."faq_list"("id") ON DELETE SET NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."faq_list";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."faq_list" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."faq_section";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."faq_section" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."flex_card_display";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."flex_card_display" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."flex_hero";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."flex_hero" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "background_image" uuid,
    "image" uuid,
    "image_above" uuid,
    "title" varchar(255),
    "content" text,
    "list" uuid,
    CONSTRAINT "flex_hero_image_fKey" FOREIGN KEY ("image") REFERENCES "public"."directus_files"("id"),
    CONSTRAINT "flex_hero_list_foreign" FOREIGN KEY ("list") REFERENCES "public"."button_list"("id") ON DELETE SET NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."flex_item_display";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."flex_item_display" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "flex_item" json,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."form_embed_raw";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."form_embed_raw" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."funnels";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."funnels" (
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
    CONSTRAINT "funnels_user_created_fKey" FOREIGN KEY ("user_created") REFERENCES "public"."directus_users"("id"),
    CONSTRAINT "funnels_user_updated_fKey" FOREIGN KEY ("user_updated") REFERENCES "public"."directus_users"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."guides";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."guides" (
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
    CONSTRAINT "guides_user_created_fKey" FOREIGN KEY ("user_created") REFERENCES "public"."directus_users"("id"),
    CONSTRAINT "guides_user_updated_fKey" FOREIGN KEY ("user_updated") REFERENCES "public"."directus_users"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."image_block";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."image_block" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    "image" uuid,
    CONSTRAINT "image_block_background_image_fKey" FOREIGN KEY ("image") REFERENCES "public"."directus_files"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."image_with_content_list";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."image_with_content_list" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "image" uuid,
    "variant" varchar(255),
    CONSTRAINT "image_with_content_list_background_image_fKey" FOREIGN KEY ("image") REFERENCES "public"."directus_files"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."mc_artisan_structures";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."mc_artisan_structures" (
    "id" uuid NOT NULL,
    "sort" int4,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."mc_flex";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."mc_flex" (
    "id" uuid NOT NULL,
    "sort" int4,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."mc_grid";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."mc_grid" (
    "id" uuid NOT NULL,
    "sort" int4,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."overflow";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."overflow" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "background_image" uuid,
    "form_embed" uuid,
    "image_above" uuid,
    "title" varchar(255),
    "content" text,
    "buttons" uuid,
    CONSTRAINT "of_id_fk" FOREIGN KEY ("buttons") REFERENCES "public"."button_list"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."pages";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."pages" (
    "id" uuid NOT NULL,
    "sort" int4,
    "user_created" uuid,
    "date_created" timestamptz,
    "user_updated" uuid,
    "date_updated" timestamptz,
    "title" varchar(255),
    "faicon" varchar(255),
    "slug" varchar(255),
    "status" varchar(255) NOT NULL DEFAULT 'draft'::character varying,
    "category" varchar(255),
    "style_mods" json,
    "variant" varchar(255),
    "hero" uuid,
    CONSTRAINT "pages_hero_foreign" FOREIGN KEY ("hero") REFERENCES "public"."flex_hero"("id") ON DELETE SET NULL,
    CONSTRAINT "pages_user_created_fKey" FOREIGN KEY ("user_created") REFERENCES "public"."directus_users"("id"),
    CONSTRAINT "pages_user_updated_fKey" FOREIGN KEY ("user_updated") REFERENCES "public"."directus_users"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."pages_mc_slice_master";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS pages_mc_slice_master_id_seq;

-- Table Definition
CREATE TABLE "public"."pages_mc_slice_master" (
    "id" int4 NOT NULL DEFAULT nextval('pages_mc_slice_master_id_seq'::regclass),
    "pages_id" uuid,
    "item" varchar(255),
    "collection" varchar(255),
    "sort" int4,
    CONSTRAINT "pages_mc_slice_master_pages_id_foreign" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE SET NULL
);

DROP TABLE IF EXISTS "public"."quote_list";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."quote_list" (
    "id" uuid NOT NULL,
    "sort" int4,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."quote_object";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."quote_object" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."quote_slider_banner";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."quote_slider_banner" (
    "id" uuid NOT NULL,
    "sort" int4,
    "style_mods" json,
    "variant" varchar(255),
    "background_image" uuid,
    "quote_rating" int4,
    "title" varchar(255),
    "content" text,
    "attribution" varchar(255),
    CONSTRAINT "quote_slider_banner_background_image_fKey" FOREIGN KEY ("background_image") REFERENCES "public"."directus_files"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."recent_posts";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."recent_posts" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    "number_of_posts" int4,
    "buttons" uuid,
    CONSTRAINT "rp_id_fk" FOREIGN KEY ("buttons") REFERENCES "public"."button_list"("id"),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."short_hero";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."short_hero" (
    "id" uuid NOT NULL,
    "sort" int4,
    "title" varchar(255),
    "faicon" varchar(255),
    "content" text,
    "style_mods" json,
    "variant" varchar(255),
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."structure_picker";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."structure_picker" (
    "id" uuid NOT NULL,
    "sort" int4,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."theme_styles";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."theme_styles" (
    "id" uuid NOT NULL,
    "status" varchar(255) DEFAULT 'live'::character varying,
    "fonts_computed" text NOT NULL DEFAULT '--font-900: var(--fw-bold) var(--font-size-900) / var(--font-lh-900) var(--font-body);
--font-800: var(--fw-bold) var(--font-size-800) / var(--font-lh-800) var(--font-body);
--font-700: var(--fw-bold) var(--font-size-700) / var(--font-lh-700) var(--font-body);
--font-600: var(--fw-bold) var(--font-size-600) / var(--font-lh-600) var(--font-body);
--font-500: var(--fw-bold) var(--font-size-500) / var(--font-lh-500) var(--font-body);
--font-400: var(--fw-regu) var(--font-size-400) / var(--font-lh-400) var(--font-body);  /* Root/body/P Size */
--font-300: var(--fw-medi) var(--font-size-300) / var(--font-lh-300) var(--font-body);
--font-200: var(--fw-bold) var(--font-size-200) / var(--font-lh-200) var(--font-body);
--font-150: var(--fw-regu) var(--font-size-150) / var(--font-lh-150) var(--font-body);
--font-100: var(--fw-bold) var(--font-size-100) / var(--font-lh-100) var(--font-body);
--font-50:  var(--fw-medi) var(--font-size-50)  / var(--font-lh-50)  var(--font-body);'::text,
    "line_height" text DEFAULT '--font-lh-900: 40px;
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
    "font_size" text NOT NULL DEFAULT '--font-size-900: 32px;
--font-size-800: 30px;
--font-size-700: 26px;
--font-size-600: 22px;
--font-size-500: 22px;
--font-size-400: 20px; /* ROOT */
--font-size-300: 20px;
--font-size-200: 18px;
--font-size-150: 16px;
--font-size-100: 16px;
--font-size-50:  11px;'::text,
    "font_basics" text DEFAULT '/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
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
    "spacer_units" text DEFAULT '/*╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈Spacers┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
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
    "gap_pad_marg" text DEFAULT '/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈PADDING┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --section-gap            : var(--spacer-m);
   --grid-gap               : var(--spacer-xs);
/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈CONTAINERS┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --container-hSpace       : 0px var(--spacer-xxs);       /* O-container Margin, I-container Padding*/
   --container-maxWidth     : calc(var(--spacer-xl) * 9);  /* ** 1728px ** */
   --innercontainer-maxWidth: calc(var(--spacer-xl) * 7);  /* ** 1344px ** */
/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈BUTTONS┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --btn                    : var(--font-h3);              /* Redo */
   --btn-pad                : 4px 8px;                     /* Redo */'::text,
    "color_hex" text DEFAULT ' /* ╔╾VARIABLE NAME┈╼╤╾COLOR HEX */
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
    "color_rgb_prep" text DEFAULT '┈╼╤╾┈┈VARIABLE NAME┈┈┈╼╤╾ R┈╼╤╾┈G╼╤╾B╼╗ */
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
    "font_size_m480" text DEFAULT '/*--font-size-900: 32px; */
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
    "font_size_m767" text DEFAULT '--font-size-900:  36px;
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
    "font_size_m992" text DEFAULT '/* --font-size-900:  36px; */
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
    "font_size_m1199" text DEFAULT '--font-size-900:  48px;
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
    "font_size_m1499" text DEFAULT '/* --font-size-900:  48px; */
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
    "font_size_uwh" text DEFAULT '/* --font-size-900:  48px; */
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
    "font_size_m1921" text DEFAULT '/* --font-size-900:  48px; */
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
    "line_height_m480" text DEFAULT '/* --font-lh-900: 40px; */
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
    "line_height_m767" text DEFAULT '--font-lh-900 :  44px;
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
    "line_height_m992" text DEFAULT '/* --font-lh-900 :  44px; */
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
    "line_height_m1199" text DEFAULT '--font-lh-900 :  56px;
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
    "line_height_m1499" text DEFAULT '/* --font-lh-900 :  56px; */
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
    "line_height_m1921" text DEFAULT '/* --font-lh-900 :  56px; */
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
    "line_height_uwh" text DEFAULT '/* --font-lh-900 :  56px; */
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
    "breakpoints_required" json,
    PRIMARY KEY ("id")
);

