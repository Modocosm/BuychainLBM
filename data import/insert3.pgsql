
create table if not exists public.pages
(id           uuid                                            not null,
 sort         integer,
 user_created uuid,
 date_created timestamp with time zone,
 user_updated uuid,
 date_updated timestamp with time zone,
 title        varchar(255),
 faicon       varchar(255),
 slug         varchar(255),
 status       varchar(255) default 'draft'::character varying not null,
 category     varchar(255),
 "styleMods"  json,
 variant      varchar(255),
 "Hero"       uuid,
 constraint pages_pkey primary key (id),
 constraint "pages_user_created_fKey" foreign key (user_created) references public.directus_users,
 constraint "pages_user_updated_fKey" foreign key (user_updated) references public.directus_users,
 constraint pages_hero_foreign foreign key ("Hero") references public.flex_hero on delete set null
);


create table if not exists public.pages_mc_slice_master
(id         serial,
 pages_id   uuid,
 item       varchar(255),
 collection varchar(255),
 sort       integer,
 constraint pages_mc_slice_master_pkey primary key (id),
 constraint pages_mc_slice_master_pages_id_foreign foreign key (pages_id) references public.pages on delete set null
);


INSERT INTO public.directus_relations
(many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES
('m2a_slices', 'slice_name', null, null, 'm2a_slices', 'short_hero, flex_hero, overflow, editor_select, dev_notes, content_pair, content_pairs_list, content_pairs_with_lists, image_with_content_list, flex_item_display, cta_with_form, basic_cta, flex_card_display, recent_posts', 'id', null, 'nullify'),
('pages_mc_slice_master', 'item', null, null, 'collection', 'animated_svg_block,basic_cta,content_pair,content_pairs_list,content_pairs_with_lists,dev_notes,editor_select,faq_section,flex_card_display,flex_hero,flex_item_display,form_embed_raw,image_block,image_with_content_list,overflow,quote_slider_banner,recent_posts,short_hero,content_block', 'pages_id', null, 'nullify'),
('pages_mc_slice_master', 'pages_id', 'pages', 'mc_slice_master', null, null, 'item', 'sort', 'nullify');