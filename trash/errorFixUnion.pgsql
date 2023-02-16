insert into public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse)
values  ('pages', null, null, null, false, false, null, null, false, null, null, null, 'all', null, null, null, null, 'open');
insert into public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse)
values  ('flex_hero', 'streetview', null, null, false, false, null, null, false, null, null, null, 'all', '#1D25EE', null, null, 'slices', 'open');

create table if not exists public.flex_hero ( id uuid not null,
                                             sort integer, style_mods json, variant varchar(255), background_image uuid, image uuid, image_above uuid, title varchar(255), content text, buttons uuid);


alter table public.flex_hero add constraint flex_hero_pkey primary key (id);


alter table public.flex_hero add constraint "flex_hero_image_fKey"
foreign key (image) references public.directus_files;


-- alter table public.flex_hero add constraint flexhero_id_fk
-- foreign key (buttons) references public.button_list;

create table if not exists public.pages ( id uuid not null,
                                         sort integer, user_created uuid, date_created timestamp with time zone, user_updated uuid, date_updated timestamp with time zone, title varchar(255), faicon varchar(255), slug varchar(255), status varchar(255) default 'draft'::character varying not null, category varchar(255), style_mods json, variant varchar(255), hero uuid);


alter table public.pages add constraint pages_pkey primary key (id);


alter table public.pages add constraint "pages_user_created_fKey"
foreign key (user_created) references public.directus_users;


alter table public.pages add constraint "pages_user_updated_fKey"
foreign key (user_updated) references public.directus_users;


alter table public.pages add constraint pages_hero_foreign
foreign key (hero) references public.flex_hero on
delete
set null;


insert into public.directus_fields ( collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message)
values  ( 'flex_hero', 'background_image', 'file', 'file-image', null, 'image', '{"circle":false}', false, false, null, null, null, null, null, false, null, null, null),
        ( 'flex_hero', 'left_content', 'alias,no-data,group', 'group-detail', null, null, '{"headercolor":"#00B5C2","headerIcon":"title"}', false, false, null, 'half', null, null, null, false, null, null, null),
        ( 'flex_hero', 'right_content', 'alias,no-data,group', 'group-detail', null, null, '{"headercolor":"#00B5C2","headerIcon":"title"}', false, false, null, 'half', null, null, null, false, null, null, null),
        ( 'flex_hero', 'image', 'file', 'file-image', null, 'image', '{"circle":false}', false, false, null, 'full', null, null, null, false, 'right_content', null, null),
        ( 'flex_hero', 'image_above', 'file', 'file-image', null, 'image', '{"circle":false}', false, false, null, 'half', null, null, null, false, 'left_content', null, null),
        ( 'flex_hero', 'title', null, 'input', null, 'raw', null, false, false, null, 'half', null, null, null, false, 'left_content', null, null),
        ( 'flex_hero', 'content', null, 'input-rich-text-html', null, null, null, false, false, null, 'full', null, null, null, false, 'left_content', null, null),
        ( 'flex_hero', 'buttons', 'm2o', 'select-dropdown-m2o', '{"iconLeft":"key","font":"monospace"}', 'raw', null, true, false, null, 'half', null, null, null, false, 'left_content', null, null),
        ( 'flex_hero', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', null, true, false, 1, 'half', null, null, null, false, null, null, null),
        ( 'flex_hero', 'sort', null, 'input', null, null, '[{"language":"en-US","translation":"🔀"}]', false, false, 2, 'half', null, null, null, false, null, null, null),
        ('flex_hero',                        'style_mods',                'cast-json',                'tags',                            '["raw"]',              'false',         'false',       1,          'half',       NULL,                                                       'false',    NULL,      NULL,      NULL,      '{"iconLeft":"sell","alphabetize":true}',                                                                                               '{"choices":null,"showAsDot":true}',                               NULL,        NULL                            ),
        ('flex_hero',                        'variant',                   NULL,                      'select-dropdown',               NULL,                 'false',         'false',       2,          'half',      'AddClassestothecomponentandnotifytech',                     'false',    NULL,      NULL,      NULL,      '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}' ,                            NULL,                                                              NULL,        NULL                            );

insert into public.directus_fields ( collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message)
values  ( 'pages', 'id', 'uuid', 'input', '{"iconLeft":"key","font":"monospace"}', 'raw', null, true, false, 1, 'half', null, null, null, false, null, null, null),
        ( 'pages', 'sort', null, 'input', null, null, '[{"language":"en-US","translation":"🔀"}]', false, false, 2, 'half', null, null, null, false, null, null, null),
        ( 'pages', 'user_created', 'user-created', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}}{{first_name}}{{last_name}}"}', 'user', '[{"language":"en-US","translation":"👩‍💻UserCreated"}]', true, false, 3, 'half', null, null, null, false, null, null, null),
        ( 'pages', 'date_created', 'date-created', 'datetime', '{"relative":true}', 'datetime', '[{"language":"en-US","translation":"🎂DateCreated"}]', true, false, 4, 'half', null, null, null, false, null, null, null),
        ( 'pages', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{"template":"{{avatar.$thumbnail}}{{first_name}}{{last_name}}"}', 'user', '[{"language":"en-US","translation":"👩‍💻UserUpdated"}]', true, false, 5, 'half', null, null, null, false, null, null, null),
        ( 'pages', 'date_updated', 'date_updated', 'datetime', '{"relative":true}', 'datetime', '[{"language":"en-US","translation":"🎓DateUpdated"}]', true, false, 6, 'half', null, null, null, false, null, null, null),
        ( 'pages', 'title', null, 'input', '{"iconLeft":"title","trim":true}', 'formatted-value', '{"bold":true,"color":"#00478A","icon":"title","format":true}', false, false, 1, 'half', null, null, null, true, null, null, null),
        ( 'pages', 'faicon', null, 'input', '{"iconLeft":"content_paste_go","font":"monospace","trim":true,"placeholder":"<font-awesome-iconicon=\"fa-brandsfa-github\"/>"}', 'icon', '{"font":"monospace","filled":true,"color":"#D10000"}', false, false, 2, 'half', null, '💯FONTAWESOME:Usethe3rdoptionontheHTMLcopy/paste"Vue"💯', null, false, null, null, null),
        ( 'pages', 'slug', null, 'input', null, null, null, false, false, 3, 'half', null, null, null, false, null, null, null),
        ( 'pages', 'status', null, null, null, null, null, false, false, 4, 'half', null, null, null, true, null, null, null),
        ('pages',                            'category',                  NULL,                      'select-dropdown',                  '["formatted-value"]', 'false',         'false',       5,          'half',      'Slug:EditableAfterFirstsave',                               'false',    NULL,      NULL,      NULL,      '{"choices":[{"text":"GetStarted","value":"get-started"}],"icon":"text_format","allowOther":true,"allowNone":true}',                    '{"prefix":"https://buychain.co/","suffix":"/","format":true}',     NULL,        NULL                            ),
('pages',                            'style_mods',                'cast-json',                'tags',                            '["raw"]',              'false',         'false',       1,          'half',       NULL,                                                       'false',    NULL,      NULL,      NULL,      '{"iconLeft":"sell","alphabetize":true}',                                                                                               '{"choices":null,"showAsDot":true}',                               NULL,        NULL                            ),
('pages',                            'variant',                   NULL,                      'select-dropdown',               NULL,                 'false',         'false',       2,          'half',      'AddClassestothecomponentandnotifytech',                     'false',    NULL,      NULL,      NULL,      '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}' ,                            NULL,                                                              NULL,        NULL                            ),
('pages', 'hero', 'm2o', 'select-dropdown-m2o', NULL, NULL, NULL, 'f', 'f', NULL, 'full', NULL, NULL, NULL, 'f', NULL, NULL, NULL);




insert into public.directus_relations ( many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action)
values  ( 'pages_mc_slice_master', 'item', null, null, 'collection', 'animated_svg_block,basic_cta,content_pair,content_pairs_list,content_pairs_with_lists,dev_notes,editor_select,faq_section,flex_card_display,flex_hero,flex_item_display,form_embed_raw,image_block,image_with_content_list,overflow,quote_slider_banner,recent_posts,short_hero,content_block', 'pages_id', null, 'nullify');

insert into public.directus_relations ( many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action)
values  ( 'pages', 'Hero', 'flex_hero', null, null, null, null, null, 'nullify');

insert into public.directus_relations ( many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action)
values  ( 'pages', 'Hero', 'flex_hero', null, null, null, null, null, 'nullify');

insert into public.directus_relations ( many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action)
values  ( 'pages', 'hero', 'flex_hero', null, null, null, null, null, 'nullify');


INSERT INTO "public"."directus_fields"
(collection,                         field,                     special,                       interface,                       display,            readonly,        hidden,        sort,       width,          note,                                                    required,   "group",    validation, validation_message, "options",                                                                                                                           display_options,                                                  translations,conditions                         )
VALUES
('pages',                            'category',                  NULL,                      'select-dropdown',                  'formatted-value', 'false',         'false',       5,          'half',      'Slug:EditableAfterFirstsave',                               'false',    'top_level',      NULL,      NULL,      '{"choices":[{"text":"GetStarted","value":"get-started"}],"icon":"text_format","allowOther":true,"allowNone":true}',                    '{"prefix":"https://buychain.co/","suffix":"/","format":true}',     NULL,        NULL                            ),
('pages',                            'style_mods',                'cast-json',                'tags',                            'raw',              'false',         'false',       1,          'half',       NULL,                                                       'false',    'customize',      NULL,      NULL,      '{"iconLeft":"sell","alphabetize":true}',                                                                                               '{"choices":null,"showAsDot":true}',                               NULL,        NULL                            ),
('pages',                            'variant',                   NULL,                      'select-dropdown',               NULL,                 'false',         'false',       2,          'half',      'AddClassestothecomponentandnotifytech',                     'false',    'customize',      NULL,      NULL,      '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}' ,                            NULL,                                                              NULL,        NULL                            ),
('flex_hero',                        'style_mods',                'cast-json',                'tags',                            'raw',              'false',         'false',       1,          'half',       NULL,                                                       'false',    'customize',      NULL,      NULL,      '{"iconLeft":"sell","alphabetize":true}',                                                                                               '{"choices":null,"showAsDot":true}',                               NULL,        NULL                            ),
('flex_hero',                        'variant',                   NULL,                      'select-dropdown',               NULL,                 'false',         'false',       2,          'half',      'AddClassestothecomponentandnotifytech',                     'false',    'customize',      NULL,      NULL,      '{"choices":[{"text":"alt1","value":"1"},{"text":"alt2","value":"2"}],"allowOther":true,"allowNone":true}' ,                            NULL,                                                              NULL,        NULL                            );


--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CREATE TABLE IF NOT EXISTS"public"."button_list" (
-- 	"id" uuid,	"sort" integer,	"style_mods" json,
-- 	"variant" varchar(255) ,
--     buttons uuid,
--     btn_fkey uuid,
--     PRIMARY KEY ("id")
-- );


-- ALTER TABLE "public"."button"
-- ADD CONSTRAINT "button_foreign_fKey"	     	FOREIGN KEY ("btn_fkey")			        REFERENCES "public"."button_list"("id")				    ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."button_list"
ADD buttons_fkey uuid;
ADD CONSTRAINT flexhero_id_fk                foreign key (buttons_fkey) references button_list;