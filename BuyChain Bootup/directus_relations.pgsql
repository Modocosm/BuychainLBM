insert into "public"."directus_relations" ("many_collection", "many_field", "one_collection", "one_field", "one_collection_field", "one_allowed_collections", "junction_field", "sort_field", "one_deselect_action")

values
('animated_svg_block', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('basic_cta', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('basic_cta', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('basic_cta', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('button', 'foreign', 'button_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('card', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('card', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('card', 'foreign', 'card_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('card', 'foreign', 'flex_card_display', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('content_block', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_block', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_block', 'foreign', 'image_with_content_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('content_pair', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pair', 'foreign', 'content_pairs_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('content_pair', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pair', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pairs_with_lists', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('cta_with_form', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('faq_item', 'foreign', 'faq_lis', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('faq_lis', 'foreign', 'faq_section', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('flex_hero', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('flex_hero', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('image_block', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('image_with_content_list', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('overflow', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('overflow', 'foreign', 'form_embed_raw', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('quote_object', 'foreign', 'quote_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('quote_slider_banner', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('recent_posts', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify');
