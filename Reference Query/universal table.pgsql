.1-- Table Definition
CREATE TABLE "public"."Bob_bob_Bob" (
    "id" uuid NOT NULL,
    "status" varchar(255) NOT NULL DEFAULT 'draft'::character varying,
    "sort" int4,
    "user_created" uuid,
    "date_created" timestamptz,
    "user_updated" uuid,
    "date_updated" timestamptz,
    CONSTRAINT "Bob_bob_Bob_user_created_foreign" FOREIGN KEY ("user_created") REFERENCES "public"."directus_users"("id"),
    CONSTRAINT "Bob_bob_Bob_user_updated_foreign" FOREIGN KEY ("user_updated") REFERENCES "public"."directus_users"("id"),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."directus_fields" ( "collection",    "field",         "special",       "interface",           "options", "display", "display_options", "readonly", "hidden", "sort", "width", "translations", "note", "conditions", "required", "group", "validation", "validation_message") VALUES
                                       ( 'Bob_bob_Bob',   'id',            'uuid',          'input',                NULL,      NULL, NULL, 't', 't', NULL, 'full', NULL, NULL, NULL, 'f', NULL, NULL, NULL),
                                       ( 'Bob_bob_Bob',   'status',         NULL,           'select-dropdown',     '{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]}', 'labels', '{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--warning)"}]}', 'f', 'f', NULL, 'full', NULL, NULL, NULL, 'f', NULL, NULL, NULL),
                                       ( 'Bob_bob_Bob',   'sort',           NULL,           'input',                NULL,      NULL, NULL, 'f', 't', NULL, 'full', NULL, NULL, NULL, 'f', NULL, NULL, NULL),
                                       ( 'Bob_bob_Bob',   'user_created',  'user-created',  'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 't', 't', NULL, 'half', NULL, NULL, NULL, 'f', NULL, NULL, NULL),
                                       ( 'Bob_bob_Bob',   'date_created',  'date-created',  'datetime',             NULL,       'datetime', '{"relative":true}', 't', 't', NULL, 'half', NULL, NULL, NULL, 'f', NULL, NULL, NULL),
                                       ( 'Bob_bob_Bob',   'user_updated',  'user-updated',  'select-dropdown-m2o',  '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, 't', 't', NULL, 'half', NULL, NULL, NULL, 'f', NULL, NULL, NULL),
                                       ( 'Bob_bob_Bob',   'date_updated',  'date-updated',  'datetime', NULL,       'datetime', '{"relative":true}', 't', 't', NULL, 'half', NULL, NULL, NULL, 'f', NULL, NULL, NULL);


INSERT INTO "public"."directus_relations" ( "many_collection", "many_field", "one_collection", "one_field", "one_collection_field", "one_allowed_collections", "junction_field", "sort_field", "one_deselect_action") VALUES
                                          ( 'Bob_bob_Bob', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
                                          ( 'Bob_bob_Bob', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify');